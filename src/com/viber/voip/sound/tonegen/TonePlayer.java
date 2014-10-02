package com.viber.voip.sound.tonegen;

import android.os.Handler;
import com.viber.voip.sound.AbstractSoundService;
import com.viber.voip.sound.CommonAbstractSoundService;
import com.viber.voip.sound.ISoundService.ModeStateListener;
import com.viber.voip.sound.SoundFactory;
import com.viber.voip.sound.ToneGeneratorFactory;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

public class TonePlayer
  extends ISoundService.ModeStateListener
  implements Runnable
{
  public static final String TAG = TonePlayer.class.getSimpleName();
  private static volatile TonePlayer _lastActivePlayer = null;
  private final TonePlayer.StateChangeListener listener;
  private volatile int loop_count;
  private volatile int pause_index;
  private final Handler playHandler;
  private volatile TonePlayer.PlayerStates state;
  private volatile AtomicBoolean stopFlag = new AtomicBoolean(false);
  private AbstractSoundService svcInstance;
  private volatile IToneGenerator toneGenerator;
  private final ToneRule toneRule;
  private volatile int tone_index;
  private volatile ReentrantLock urgencyLock = null;
  
  public TonePlayer(AbstractSoundService paramAbstractSoundService, Handler paramHandler, ToneRule paramToneRule, TonePlayer.StateChangeListener paramStateChangeListener)
  {
    this.playHandler = paramHandler;
    this.toneRule = paramToneRule;
    this.svcInstance = paramAbstractSoundService;
    this.listener = paramStateChangeListener;
    this.toneGenerator = null;
    if (paramToneRule.isUrgent()) {
      this.urgencyLock = new ReentrantLock();
    }
    reset();
  }
  
  TonePlayer(CommonAbstractSoundService paramCommonAbstractSoundService, Handler paramHandler, ToneRule paramToneRule)
  {
    this(paramCommonAbstractSoundService, paramHandler, paramToneRule, null);
  }
  
  private void _checkLoopStatus()
  {
    if ((!this.stopFlag.get()) && (this.loop_count < this.toneRule.getRepeatCount()))
    {
      this.loop_count = (1 + this.loop_count);
      this.pause_index = 0;
      this.tone_index = 0;
      SoundFactory.log(4, TAG, this + " | reposting tone play immediately - loop requested");
      if (this.listener != null) {
        this.listener.onSampleLoop(this);
      }
      this.playHandler.post(this);
      return;
    }
    onToneEndCallback();
  }
  
  protected void finalize()
  {
    stop();
    if (this.svcInstance != null) {
      this.svcInstance.unregisterModeStateListener(this);
    }
    super.finalize();
  }
  
  public AbstractSoundService getSoundService()
  {
    return this.svcInstance;
  }
  
  public ToneRule getToneRule()
  {
    return this.toneRule;
  }
  
  public void onModeStateChanged(int paramInt)
  {
    if ((this.svcInstance.mode_Tone() != paramInt) && (this.svcInstance.mode_Dtmf() != paramInt)) {
      return;
    }
    resume();
  }
  
  public void onModeStatePreChanged(int paramInt)
  {
    if (paramInt == this.svcInstance.mode_Tone()) {}
    while (this.urgencyLock == null) {
      return;
    }
    synchronized (this.urgencyLock)
    {
      SoundFactory.log(4, TAG, this + ": urgency lock is set to " + this.urgencyLock.isLocked() + "; will wait until be freed");
      this.urgencyLock.lock();
      this.urgencyLock.unlock();
      this.stopFlag.set(true);
      SoundFactory.log(4, TAG, this + ": urgency lock seems that freed; proceeding with mode change");
      return;
    }
  }
  
  protected boolean onToneEndCallback()
  {
    return onToneEndCallback(null);
  }
  
  protected boolean onToneEndCallback(Throwable paramThrowable)
  {
    SoundFactory.log(4, TAG, this + " | onToneEndCallback()");
    if (this.urgencyLock != null) {
      SoundFactory.log(4, TAG, this + ": unlocking urgency lock");
    }
    try
    {
      this.urgencyLock.unlock();
      if (this == _lastActivePlayer)
      {
        _lastActivePlayer = null;
        this.svcInstance.clearRouteFlags(2);
      }
      if (this.listener != null) {
        this.listener.onPlayEnd(this);
      }
      if ((paramThrowable == null) && (-2 == this.toneRule.getRepeatCount())) {
        return true;
      }
    }
    catch (IllegalMonitorStateException localIllegalMonitorStateException)
    {
      SoundFactory.log(3, TAG, "onToneEndCallback was called not from locker thread - will wait until original starter thread unlock me");
      return false;
    }
    stop();
    return true;
  }
  
  public void play(AbstractSoundService paramAbstractSoundService)
  {
    if (TonePlayer.PlayerStates.STATE_PLAY == this.state)
    {
      SoundFactory.log(4, TAG, this + " | dropping doubleplay due to reported state (already playing)");
      return;
    }
    if (this.toneGenerator == null)
    {
      this.svcInstance = paramAbstractSoundService;
      this.toneGenerator = ToneGeneratorFactory.newToneGenerator(paramAbstractSoundService);
    }
    for (;;)
    {
      paramAbstractSoundService.registerModeStateListener(this);
      SoundFactory.log(4, TAG, this + " | play()");
      reset();
      this.state = TonePlayer.PlayerStates.STATE_PLAY;
      if (this.svcInstance != null)
      {
        _lastActivePlayer = this;
        this.svcInstance.setRouteFlags(2);
      }
      if ((this.svcInstance != null) && (this.svcInstance.mode_Tone() == this.svcInstance.getMode())) {
        break;
      }
      SoundFactory.log(4, TAG, this + " | suspending and wait for MODE_VIBER_TONE to be set");
      suspend();
      return;
      if (this.svcInstance != paramAbstractSoundService)
      {
        paramAbstractSoundService.unregisterModeStateListener(this);
        this.toneGenerator.stopTone();
        this.svcInstance = paramAbstractSoundService;
        this.toneGenerator = ToneGeneratorFactory.newToneGenerator(paramAbstractSoundService);
      }
      else
      {
        this.toneGenerator.stopTone();
      }
    }
    if (this.listener != null) {
      this.listener.onPlayStart(this);
    }
    this.playHandler.post(this);
  }
  
  public void reset()
  {
    try
    {
      this.pause_index = 0;
      this.tone_index = 0;
      this.loop_count = 0;
      this.stopFlag.set(false);
      this.state = TonePlayer.PlayerStates.STATE_IDLE;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void resume()
  {
    if (TonePlayer.PlayerStates.STATE_SUSPENDED != this.state) {
      return;
    }
    play(this.svcInstance);
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: iconst_4
    //   1: getstatic 42	com/viber/voip/sound/tonegen/TonePlayer:TAG	Ljava/lang/String;
    //   4: new 96	java/lang/StringBuilder
    //   7: dup
    //   8: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   11: aload_0
    //   12: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   15: ldc 255
    //   17: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   23: invokestatic 115	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   26: aload_0
    //   27: getfield 59	com/viber/voip/sound/tonegen/TonePlayer:toneRule	Lcom/viber/voip/sound/tonegen/ToneRule;
    //   30: invokevirtual 259	com/viber/voip/sound/tonegen/ToneRule:getTonesArray	()[I
    //   33: astore_1
    //   34: aload_1
    //   35: ifnonnull +4 -> 39
    //   38: return
    //   39: aload_0
    //   40: getfield 55	com/viber/voip/sound/tonegen/TonePlayer:urgencyLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   43: ifnull +30 -> 73
    //   46: aload_0
    //   47: getfield 55	com/viber/voip/sound/tonegen/TonePlayer:urgencyLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   50: invokevirtual 262	java/util/concurrent/locks/ReentrantLock:isHeldByCurrentThread	()Z
    //   53: ifne +20 -> 73
    //   56: aload_0
    //   57: getfield 55	com/viber/voip/sound/tonegen/TonePlayer:urgencyLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   60: invokevirtual 165	java/util/concurrent/locks/ReentrantLock:isLocked	()Z
    //   63: ifne +10 -> 73
    //   66: aload_0
    //   67: getfield 55	com/viber/voip/sound/tonegen/TonePlayer:urgencyLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   70: invokevirtual 173	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   73: aload_0
    //   74: getfield 53	com/viber/voip/sound/tonegen/TonePlayer:stopFlag	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   77: invokevirtual 84	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   80: ifeq +9 -> 89
    //   83: aload_0
    //   84: invokevirtual 130	com/viber/voip/sound/tonegen/TonePlayer:onToneEndCallback	()Z
    //   87: pop
    //   88: return
    //   89: bipush 254
    //   91: aload_0
    //   92: getfield 59	com/viber/voip/sound/tonegen/TonePlayer:toneRule	Lcom/viber/voip/sound/tonegen/ToneRule;
    //   95: invokevirtual 90	com/viber/voip/sound/tonegen/ToneRule:getRepeatCount	()I
    //   98: if_icmpeq +12 -> 110
    //   101: aload_0
    //   102: getfield 65	com/viber/voip/sound/tonegen/TonePlayer:toneGenerator	Lcom/viber/voip/sound/tonegen/IToneGenerator;
    //   105: invokeinterface 237 1 0
    //   110: aload_0
    //   111: getfield 94	com/viber/voip/sound/tonegen/TonePlayer:tone_index	I
    //   114: aload_1
    //   115: arraylength
    //   116: if_icmplt +35 -> 151
    //   119: aload_0
    //   120: getfield 59	com/viber/voip/sound/tonegen/TonePlayer:toneRule	Lcom/viber/voip/sound/tonegen/ToneRule;
    //   123: invokevirtual 265	com/viber/voip/sound/tonegen/ToneRule:isLooped	()Z
    //   126: ifeq +282 -> 408
    //   129: aload_0
    //   130: iconst_0
    //   131: putfield 94	com/viber/voip/sound/tonegen/TonePlayer:tone_index	I
    //   134: aload_0
    //   135: getfield 63	com/viber/voip/sound/tonegen/TonePlayer:listener	Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;
    //   138: ifnull +13 -> 151
    //   141: aload_0
    //   142: getfield 63	com/viber/voip/sound/tonegen/TonePlayer:listener	Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;
    //   145: aload_0
    //   146: invokeinterface 121 2 0
    //   151: aload_0
    //   152: getfield 65	com/viber/voip/sound/tonegen/TonePlayer:toneGenerator	Lcom/viber/voip/sound/tonegen/IToneGenerator;
    //   155: ifnull +12 -> 167
    //   158: aload_0
    //   159: getfield 65	com/viber/voip/sound/tonegen/TonePlayer:toneGenerator	Lcom/viber/voip/sound/tonegen/IToneGenerator;
    //   162: invokeinterface 237 1 0
    //   167: aload_0
    //   168: getfield 94	com/viber/voip/sound/tonegen/TonePlayer:tone_index	I
    //   171: aload_1
    //   172: arraylength
    //   173: if_icmpge +281 -> 454
    //   176: iconst_m1
    //   177: aload_1
    //   178: aload_0
    //   179: getfield 94	com/viber/voip/sound/tonegen/TonePlayer:tone_index	I
    //   182: iaload
    //   183: if_icmpeq +271 -> 454
    //   186: aload_0
    //   187: getfield 53	com/viber/voip/sound/tonegen/TonePlayer:stopFlag	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   190: invokevirtual 84	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   193: ifne +253 -> 446
    //   196: aload_0
    //   197: getfield 53	com/viber/voip/sound/tonegen/TonePlayer:stopFlag	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   200: astore 15
    //   202: aload 15
    //   204: monitorenter
    //   205: iconst_3
    //   206: getstatic 42	com/viber/voip/sound/tonegen/TonePlayer:TAG	Ljava/lang/String;
    //   209: new 96	java/lang/StringBuilder
    //   212: dup
    //   213: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   216: aload_0
    //   217: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   220: ldc_w 267
    //   223: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: aload_0
    //   227: getfield 61	com/viber/voip/sound/tonegen/TonePlayer:svcInstance	Lcom/viber/voip/sound/AbstractSoundService;
    //   230: invokevirtual 227	com/viber/voip/sound/AbstractSoundService:getMode	()I
    //   233: invokevirtual 270	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   236: ldc_w 272
    //   239: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   242: aload_0
    //   243: getfield 61	com/viber/voip/sound/tonegen/TonePlayer:svcInstance	Lcom/viber/voip/sound/AbstractSoundService;
    //   246: invokevirtual 227	com/viber/voip/sound/AbstractSoundService:getMode	()I
    //   249: invokestatic 278	com/viber/voip/sound/CommonAbstractSoundService:getModeName	(I)Ljava/lang/String;
    //   252: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: ldc_w 280
    //   258: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   264: invokestatic 115	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   267: aload_0
    //   268: getfield 65	com/viber/voip/sound/tonegen/TonePlayer:toneGenerator	Lcom/viber/voip/sound/tonegen/IToneGenerator;
    //   271: checkcast 282	com/viber/voip/sound/tonegen/MediaToneGenerator
    //   274: aload_0
    //   275: invokevirtual 285	com/viber/voip/sound/tonegen/MediaToneGenerator:setPlayer	(Lcom/viber/voip/sound/tonegen/TonePlayer;)V
    //   278: aload_0
    //   279: getfield 65	com/viber/voip/sound/tonegen/TonePlayer:toneGenerator	Lcom/viber/voip/sound/tonegen/IToneGenerator;
    //   282: aload_1
    //   283: aload_0
    //   284: getfield 94	com/viber/voip/sound/tonegen/TonePlayer:tone_index	I
    //   287: iaload
    //   288: invokeinterface 288 2 0
    //   293: aload_0
    //   294: iconst_1
    //   295: aload_0
    //   296: getfield 94	com/viber/voip/sound/tonegen/TonePlayer:tone_index	I
    //   299: iadd
    //   300: putfield 94	com/viber/voip/sound/tonegen/TonePlayer:tone_index	I
    //   303: aload 15
    //   305: monitorexit
    //   306: aload_0
    //   307: getfield 59	com/viber/voip/sound/tonegen/TonePlayer:toneRule	Lcom/viber/voip/sound/tonegen/ToneRule;
    //   310: invokevirtual 291	com/viber/voip/sound/tonegen/ToneRule:getPauses	()[I
    //   313: astore_2
    //   314: iconst_0
    //   315: istore_3
    //   316: aload_2
    //   317: ifnull +43 -> 360
    //   320: aload_0
    //   321: getfield 92	com/viber/voip/sound/tonegen/TonePlayer:pause_index	I
    //   324: aload_2
    //   325: arraylength
    //   326: if_icmplt +212 -> 538
    //   329: aload_0
    //   330: getfield 59	com/viber/voip/sound/tonegen/TonePlayer:toneRule	Lcom/viber/voip/sound/tonegen/ToneRule;
    //   333: invokevirtual 265	com/viber/voip/sound/tonegen/ToneRule:isLooped	()Z
    //   336: ifeq +178 -> 514
    //   339: aload_2
    //   340: arraylength
    //   341: ifgt +160 -> 501
    //   344: iconst_0
    //   345: istore 11
    //   347: aload_0
    //   348: iconst_1
    //   349: aload_0
    //   350: getfield 92	com/viber/voip/sound/tonegen/TonePlayer:pause_index	I
    //   353: iadd
    //   354: putfield 92	com/viber/voip/sound/tonegen/TonePlayer:pause_index	I
    //   357: iload 11
    //   359: istore_3
    //   360: aload_0
    //   361: getfield 55	com/viber/voip/sound/tonegen/TonePlayer:urgencyLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   364: ifnull -326 -> 38
    //   367: iload_3
    //   368: iflt -330 -> 38
    //   371: aload_0
    //   372: getfield 53	com/viber/voip/sound/tonegen/TonePlayer:stopFlag	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   375: invokevirtual 84	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   378: ifne -340 -> 38
    //   381: iload_3
    //   382: i2l
    //   383: lstore 4
    //   385: lload 4
    //   387: invokestatic 297	java/lang/Thread:sleep	(J)V
    //   390: aload_0
    //   391: invokevirtual 130	com/viber/voip/sound/tonegen/TonePlayer:onToneEndCallback	()Z
    //   394: pop
    //   395: return
    //   396: astore 17
    //   398: aload_0
    //   399: aload 17
    //   401: invokevirtual 184	com/viber/voip/sound/tonegen/TonePlayer:onToneEndCallback	(Ljava/lang/Throwable;)Z
    //   404: pop
    //   405: goto -295 -> 110
    //   408: aload_0
    //   409: getfield 92	com/viber/voip/sound/tonegen/TonePlayer:pause_index	I
    //   412: aload_0
    //   413: getfield 59	com/viber/voip/sound/tonegen/TonePlayer:toneRule	Lcom/viber/voip/sound/tonegen/ToneRule;
    //   416: invokevirtual 291	com/viber/voip/sound/tonegen/ToneRule:getPauses	()[I
    //   419: arraylength
    //   420: if_icmplt -269 -> 151
    //   423: aload_0
    //   424: invokespecial 299	com/viber/voip/sound/tonegen/TonePlayer:_checkLoopStatus	()V
    //   427: return
    //   428: astore 16
    //   430: aload 15
    //   432: monitorexit
    //   433: aload 16
    //   435: athrow
    //   436: astore 12
    //   438: aload_0
    //   439: aload 12
    //   441: invokevirtual 184	com/viber/voip/sound/tonegen/TonePlayer:onToneEndCallback	(Ljava/lang/Throwable;)Z
    //   444: pop
    //   445: return
    //   446: aload_0
    //   447: invokevirtual 130	com/viber/voip/sound/tonegen/TonePlayer:onToneEndCallback	()Z
    //   450: pop
    //   451: goto -145 -> 306
    //   454: iconst_4
    //   455: getstatic 42	com/viber/voip/sound/tonegen/TonePlayer:TAG	Ljava/lang/String;
    //   458: new 96	java/lang/StringBuilder
    //   461: dup
    //   462: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   465: aload_0
    //   466: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   469: ldc_w 301
    //   472: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   475: aload_0
    //   476: getfield 94	com/viber/voip/sound/tonegen/TonePlayer:tone_index	I
    //   479: invokevirtual 270	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   482: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   485: invokestatic 115	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   488: aload_0
    //   489: iconst_1
    //   490: aload_0
    //   491: getfield 94	com/viber/voip/sound/tonegen/TonePlayer:tone_index	I
    //   494: iadd
    //   495: putfield 94	com/viber/voip/sound/tonegen/TonePlayer:tone_index	I
    //   498: goto -192 -> 306
    //   501: aload_0
    //   502: iconst_0
    //   503: putfield 92	com/viber/voip/sound/tonegen/TonePlayer:pause_index	I
    //   506: aload_2
    //   507: iconst_0
    //   508: iaload
    //   509: istore 11
    //   511: goto -164 -> 347
    //   514: aload_0
    //   515: getfield 94	com/viber/voip/sound/tonegen/TonePlayer:tone_index	I
    //   518: istore 9
    //   520: aload_1
    //   521: arraylength
    //   522: istore 10
    //   524: iconst_0
    //   525: istore_3
    //   526: iload 9
    //   528: iload 10
    //   530: if_icmplt -170 -> 360
    //   533: aload_0
    //   534: invokespecial 299	com/viber/voip/sound/tonegen/TonePlayer:_checkLoopStatus	()V
    //   537: return
    //   538: aload_0
    //   539: getfield 92	com/viber/voip/sound/tonegen/TonePlayer:pause_index	I
    //   542: istore 8
    //   544: aload_0
    //   545: iload 8
    //   547: iconst_1
    //   548: iadd
    //   549: putfield 92	com/viber/voip/sound/tonegen/TonePlayer:pause_index	I
    //   552: aload_2
    //   553: iload 8
    //   555: iaload
    //   556: istore_3
    //   557: goto -197 -> 360
    //   560: astore 6
    //   562: aload 6
    //   564: invokevirtual 304	java/lang/InterruptedException:printStackTrace	()V
    //   567: goto -177 -> 390
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	570	0	this	TonePlayer
    //   33	488	1	arrayOfInt1	int[]
    //   313	240	2	arrayOfInt2	int[]
    //   315	242	3	i	int
    //   383	3	4	l	long
    //   560	3	6	localInterruptedException	java.lang.InterruptedException
    //   542	12	8	j	int
    //   518	13	9	k	int
    //   522	9	10	m	int
    //   345	165	11	n	int
    //   436	4	12	localException1	java.lang.Exception
    //   428	6	16	localObject	Object
    //   396	4	17	localException2	java.lang.Exception
    // Exception table:
    //   from	to	target	type
    //   101	110	396	java/lang/Exception
    //   205	306	428	finally
    //   430	433	428	finally
    //   186	205	436	java/lang/Exception
    //   433	436	436	java/lang/Exception
    //   446	451	436	java/lang/Exception
    //   385	390	560	java/lang/InterruptedException
  }
  
  protected void scheduleDeferredGuard(int paramInt, Runnable paramRunnable)
  {
    this.playHandler.postDelayed(paramRunnable, paramInt);
  }
  
  public void stop()
  {
    SoundFactory.log(4, TAG, this + " | stop()");
    synchronized (this.stopFlag)
    {
      this.stopFlag.set(true);
      if ((this.urgencyLock != null) && (this.urgencyLock.isLocked()) && (!this.urgencyLock.isHeldByCurrentThread()))
      {
        SoundFactory.log(4, TAG, this + ": cannot stop immediately cause of urgency lock is set to true; will wait until be freed");
        this.urgencyLock.lock();
        this.urgencyLock.unlock();
        SoundFactory.log(4, TAG, this + ": urgency lock seems that freed; proceeding");
      }
      this.playHandler.removeCallbacks(this);
      if (this.listener != null) {
        this.listener.onPlayStop(this);
      }
    }
    try
    {
      if (this.toneGenerator != null) {
        this.toneGenerator.stopTone();
      }
      if (this.svcInstance != null) {
        if (this == _lastActivePlayer) {
          this.svcInstance.clearRouteFlags(2);
        }
      }
      for (;;)
      {
        this.state = TonePlayer.PlayerStates.STATE_IDLE;
        return;
        localObject1 = finally;
        throw localObject1;
        this.toneGenerator = null;
      }
      if (this != _lastActivePlayer) {
        break label294;
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      localRuntimeException.printStackTrace();
      if (this.svcInstance != null) {
        if (this == _lastActivePlayer) {
          this.svcInstance.clearRouteFlags(2);
        }
      }
      for (;;)
      {
        this.state = TonePlayer.PlayerStates.STATE_IDLE;
        return;
        this.toneGenerator = null;
      }
    }
    finally
    {
      if (this.svcInstance == null) {
        break label303;
      }
    }
    this.svcInstance.clearRouteFlags(2);
    for (;;)
    {
      label294:
      this.state = TonePlayer.PlayerStates.STATE_IDLE;
      throw localObject2;
      label303:
      this.toneGenerator = null;
    }
  }
  
  public void suspend()
  {
    if (TonePlayer.PlayerStates.STATE_PLAY != this.state) {
      return;
    }
    stop();
    this.state = TonePlayer.PlayerStates.STATE_SUSPENDED;
  }
  
  public String toString()
  {
    return TAG + " [rule:" + this.toneRule + "; ]";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.tonegen.TonePlayer
 * JD-Core Version:    0.7.0.1
 */