package com.viber.voip.util.upload;

import android.net.Uri;
import com.viber.logger.QaLogger;
import com.viber.logger.QaLogger.QaPhotoDownloadFinishEvent;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class y
  implements Runnable
{
  private String a;
  private aa b;
  private Set<b> c;
  private boolean d = false;
  
  public y(aa paramaa, b paramb)
  {
    this.a = aa.a(paramaa);
    this.b = paramaa;
    this.c = new HashSet();
    if (paramb != null) {
      this.c.add(paramb);
    }
  }
  
  private void a(int paramInt)
  {
    synchronized (this.c)
    {
      Iterator localIterator = this.c.iterator();
      if (localIterator.hasNext()) {
        ((b)localIterator.next()).a(null, paramInt);
      }
    }
  }
  
  private void a(Uri paramUri)
  {
    synchronized (this.c)
    {
      Iterator localIterator = this.c.iterator();
      if (localIterator.hasNext()) {
        ((b)localIterator.next()).a(paramUri);
      }
    }
  }
  
  public z a()
  {
    return this.b.m();
  }
  
  public void a(b paramb)
  {
    if (paramb != null) {
      synchronized (this.c)
      {
        this.c.add(paramb);
        return;
      }
    }
  }
  
  protected void b()
  {
    String str = this.b.c();
    Uri localUri = null;
    if (str != null) {
      localUri = Uri.fromFile(new File(this.b.c()));
    }
    this.b.b(localUri);
    a(localUri);
    QaLogger.a(new QaLogger.QaPhotoDownloadFinishEvent(this.a, "", String.valueOf(this.b.g())));
  }
  
  public boolean c()
  {
    return this.d;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: invokestatic 121	com/viber/voip/util/upload/s:b	()Ljava/util/Map;
    //   3: astore_1
    //   4: aload_1
    //   5: monitorenter
    //   6: aload_0
    //   7: getfield 29	com/viber/voip/util/upload/y:a	Ljava/lang/String;
    //   10: invokestatic 124	com/viber/voip/util/upload/s:a	(Ljava/lang/String;)Z
    //   13: ifne +255 -> 268
    //   16: iconst_1
    //   17: istore_3
    //   18: iload_3
    //   19: ifeq +47 -> 66
    //   22: aload_0
    //   23: getfield 29	com/viber/voip/util/upload/y:a	Ljava/lang/String;
    //   26: ifnull +40 -> 66
    //   29: new 126	java/lang/StringBuilder
    //   32: dup
    //   33: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   36: ldc 129
    //   38: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: aload_0
    //   42: getfield 29	com/viber/voip/util/upload/y:a	Ljava/lang/String;
    //   45: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: ldc 135
    //   50: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: invokevirtual 138	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   56: invokestatic 141	com/viber/voip/util/upload/s:f	(Ljava/lang/String;)V
    //   59: aload_0
    //   60: invokestatic 144	com/viber/voip/util/upload/s:a	(Lcom/viber/voip/util/upload/y;)V
    //   63: aload_1
    //   64: monitorexit
    //   65: return
    //   66: aload_1
    //   67: monitorexit
    //   68: new 146	com/viber/logger/QaLogger$QaPhotoDownloadStartEvent
    //   71: dup
    //   72: aload_0
    //   73: getfield 29	com/viber/voip/util/upload/y:a	Ljava/lang/String;
    //   76: ldc 93
    //   78: invokespecial 149	com/viber/logger/QaLogger$QaPhotoDownloadStartEvent:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   81: invokestatic 111	com/viber/logger/QaLogger:a	(Lcom/viber/logger/QaLogger$QaEvent;)V
    //   84: aload_0
    //   85: getfield 22	com/viber/voip/util/upload/y:d	Z
    //   88: ifne +24 -> 112
    //   91: aload_0
    //   92: getfield 31	com/viber/voip/util/upload/y:b	Lcom/viber/voip/util/upload/aa;
    //   95: invokevirtual 151	com/viber/voip/util/upload/aa:d	()V
    //   98: aload_0
    //   99: invokevirtual 153	com/viber/voip/util/upload/y:b	()V
    //   102: aload_0
    //   103: invokestatic 144	com/viber/voip/util/upload/s:a	(Lcom/viber/voip/util/upload/y;)V
    //   106: return
    //   107: astore_2
    //   108: aload_1
    //   109: monitorexit
    //   110: aload_2
    //   111: athrow
    //   112: new 126	java/lang/StringBuilder
    //   115: dup
    //   116: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   119: ldc 155
    //   121: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: aload_0
    //   125: getfield 29	com/viber/voip/util/upload/y:a	Ljava/lang/String;
    //   128: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: invokevirtual 138	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   134: invokestatic 141	com/viber/voip/util/upload/s:f	(Ljava/lang/String;)V
    //   137: aload_0
    //   138: iconst_3
    //   139: invokespecial 157	com/viber/voip/util/upload/y:a	(I)V
    //   142: goto -40 -> 102
    //   145: astore 6
    //   147: new 126	java/lang/StringBuilder
    //   150: dup
    //   151: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   154: ldc 159
    //   156: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: aload 6
    //   161: invokevirtual 162	com/viber/voip/util/upload/e:getMessage	()Ljava/lang/String;
    //   164: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: invokevirtual 138	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: invokestatic 141	com/viber/voip/util/upload/s:f	(Ljava/lang/String;)V
    //   173: aload_0
    //   174: getfield 22	com/viber/voip/util/upload/y:d	Z
    //   177: ifeq +13 -> 190
    //   180: aload_0
    //   181: iconst_3
    //   182: invokespecial 157	com/viber/voip/util/upload/y:a	(I)V
    //   185: aload_0
    //   186: invokestatic 144	com/viber/voip/util/upload/s:a	(Lcom/viber/voip/util/upload/y;)V
    //   189: return
    //   190: aload 6
    //   192: invokevirtual 165	com/viber/voip/util/upload/e:a	()Lcom/viber/voip/util/upload/f;
    //   195: getstatic 171	com/viber/voip/util/upload/f:e	Lcom/viber/voip/util/upload/f;
    //   198: invokevirtual 174	com/viber/voip/util/upload/f:equals	(Ljava/lang/Object;)Z
    //   201: ifeq +21 -> 222
    //   204: aload_0
    //   205: bipush 15
    //   207: invokespecial 157	com/viber/voip/util/upload/y:a	(I)V
    //   210: goto -25 -> 185
    //   213: astore 5
    //   215: aload_0
    //   216: invokestatic 144	com/viber/voip/util/upload/s:a	(Lcom/viber/voip/util/upload/y;)V
    //   219: aload 5
    //   221: athrow
    //   222: aload_0
    //   223: iconst_2
    //   224: invokespecial 157	com/viber/voip/util/upload/y:a	(I)V
    //   227: goto -42 -> 185
    //   230: astore 4
    //   232: new 126	java/lang/StringBuilder
    //   235: dup
    //   236: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   239: ldc 176
    //   241: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: aload 4
    //   246: invokestatic 182	android/util/Log:getStackTraceString	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   249: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   252: invokevirtual 138	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   255: invokestatic 141	com/viber/voip/util/upload/s:f	(Ljava/lang/String;)V
    //   258: aload_0
    //   259: iconst_2
    //   260: invokespecial 157	com/viber/voip/util/upload/y:a	(I)V
    //   263: aload_0
    //   264: invokestatic 144	com/viber/voip/util/upload/s:a	(Lcom/viber/voip/util/upload/y;)V
    //   267: return
    //   268: iconst_0
    //   269: istore_3
    //   270: goto -252 -> 18
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	273	0	this	y
    //   3	106	1	localMap	java.util.Map
    //   107	4	2	localObject1	Object
    //   17	253	3	i	int
    //   230	15	4	localOutOfMemoryError	java.lang.OutOfMemoryError
    //   213	7	5	localObject2	Object
    //   145	46	6	locale	e
    // Exception table:
    //   from	to	target	type
    //   6	16	107	finally
    //   22	65	107	finally
    //   66	68	107	finally
    //   108	110	107	finally
    //   84	102	145	com/viber/voip/util/upload/e
    //   112	142	145	com/viber/voip/util/upload/e
    //   84	102	213	finally
    //   112	142	213	finally
    //   147	185	213	finally
    //   190	210	213	finally
    //   222	227	213	finally
    //   232	263	213	finally
    //   84	102	230	java/lang/OutOfMemoryError
    //   112	142	230	java/lang/OutOfMemoryError
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.y
 * JD-Core Version:    0.7.0.1
 */