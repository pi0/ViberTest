package com.viber.voip;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.AlarmManager;
import android.app.Application;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap.CompressFormat;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Handler;
import android.os.Process;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.widget.Toast;
import com.facebook.Settings;
import com.viber.dexshared.CrashlyticsHelper;
import com.viber.jni.DeviceFlags;
import com.viber.jni.OnlineContactInfo;
import com.viber.jni.PhoneControllerDelegate;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.ViberInInfo;
import com.viber.jni.dialer.DialerCallbackListener;
import com.viber.jni.dialer.DialerController;
import com.viber.jni.dialer.DialerControllerDelegate.DialerCallback;
import com.viber.jni.ptt.PttPlayerListener;
import com.viber.jni.ptt.PttRecorderListener;
import com.viber.service.KeepAliveReceiver;
import com.viber.voip.api.ViberApi;
import com.viber.voip.api.helper.HelperServiceAdapter;
import com.viber.voip.api.helper.impl.HelperServiceImpl;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.backgrounds.n;
import com.viber.voip.billing.bv;
import com.viber.voip.c.g;
import com.viber.voip.calls.z;
import com.viber.voip.contacts.c.d.a.f;
import com.viber.voip.market.MarketReceiver;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.ui.chathead.d;
import com.viber.voip.phone.PhoneActivity;
import com.viber.voip.phone.v;
import com.viber.voip.pixie.PixieController;
import com.viber.voip.registration.ActivationController;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.registration.HardwareParametersImpl;
import com.viber.voip.registration.aq;
import com.viber.voip.registration.ar;
import com.viber.voip.registration.bh;
import com.viber.voip.registration.cp;
import com.viber.voip.registration.dj;
import com.viber.voip.settings.p;
import com.viber.voip.settings.q;
import com.viber.voip.sms.IncomingSmsReceiver;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.SoundFactory;
import com.viber.voip.stickers.an;
import com.viber.voip.stickers.r;
import com.viber.voip.util.aj;
import com.viber.voip.util.bb;
import com.viber.voip.util.be;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.acra.ReportingInteractionMode;
import org.acra.annotation.ReportsCrashes;

@ReportsCrashes(formKey="dFZUV1lMbUxfV3VualVXcUJmTmVsR2c6MQ", mode=ReportingInteractionMode.NOTIFICATION, resDialogCommentPrompt=2131494003, resDialogIcon=17301659, resDialogOkToast=2131494004, resDialogText=2131494002, resDialogTitle=2131494001, resNotifIcon=17301624, resNotifText=2131494000, resNotifTickerText=2131493998, resNotifTitle=2131493999, resToastText=2131493997)
public class ViberApplication
  extends Application
  implements com.viber.voip.settings.m
{
  private static final int APP_RESTART_DELAY = 3000;
  public static final String CONTACT_DETAILS_ACTIVITY_COMPONENT_NAME = "com.viber.voip.contacts.ui.ContactDetailsActivity";
  public static final String CONTACT_DETAILS_ALIAS_ACTIVITY_COMPONENT_NAME = "com.viber.voip.HomeContactDetailsActivity";
  public static final String CONVERSATION_ACTIVITY_COMPONENT_NAME = "com.viber.voip.messages.ui.ConversationActivity";
  public static final String CONVERSATION_ALIAS_ACTIVITY_COMPONENT_NAME = "com.viber.voip.HomeConversationActivity";
  private static final String LOG_TAG = "ViberApplication";
  public static final String PREF_CLEAR_PREFS = "pref_clear_prefs";
  public static final String PREF_STARTED_BEFORE = "pref_started_before";
  public static final String SETTINGS_ACTIVITY_COMPONENT_NAME = "com.viber.voip.settings.ui.SettingsHeadersActivity";
  public static final String SETTINGS_ALIAS_ACTIVITY_COMPONENT_NAME = "com.viber.voip.HomeSettingsActivity";
  public static final String SHARING_ALIAS_ACTIVITY_COMPONENT_NAME = "com.viber.voip.WelcomeShareActivity";
  private static int STACK_SIZE = 2;
  public static final String SYNC_ACCOUNT_AUTH_SERVICE = "com.viber.service.contacts.authentication.AccountAuthenticatorService";
  public static final String SYNC_ACCOUNT_CONTACTBOOK_SERVICE = "com.viber.service.contacts.contactbook.AccountContactbookService";
  public static final String SYNC_ACCOUNT_SYNC_SERVICE = "com.viber.service.contacts.sync.ContactsSyncAccountService";
  public static final String YOU_ACTIVITY_COMPONENT_NAME = "com.viber.voip.user.YouActivity";
  public static final String YOU_ALIAS_ACTIVITY_COMPONENT_NAME = "com.viber.voip.HomeYourActivity";
  public static final String ZOOBESDK_PROCESS_NAME = "com.viber.voip:zoobesdk";
  private static Set<dw> listAppListeners;
  private static com.viber.logger.a logger;
  private static ViberApplication mInstance;
  private static Boolean mIsTablet;
  private static com.viber.voip.util.bg<String, OnlineContactInfo> onlineContactInfoCache = new com.viber.voip.util.bg();
  private static com.viber.voip.settings.l preferencesStorageInstance;
  private static AtomicBoolean sEnableTouchInput;
  private static HashMap<String, com.viber.voip.settings.l> sPreferencesCategories;
  private static com.viber.voip.util.bg<String, Boolean> unknownNumberInfoCache = new com.viber.voip.util.bg();
  private ActivationController activationController;
  private com.viber.voip.util.upload.a appDownloader;
  private com.viber.voip.util.l biDiAwareFormatter;
  private com.viber.voip.registration.ao configManager;
  private final AtomicReference<ar> countryCodeManager = new AtomicReference();
  private CrashlyticsHelper crashlytics;
  private com.viber.voip.registration.bg deviceFlagsManager;
  private final AtomicReference<bh> devicesManager = new AtomicReference();
  private final AtomicReference<com.viber.voip.messages.extras.fb.s> facebookManager = new AtomicReference();
  private Handler handler = new Handler();
  private HardwareParameters hardwareParameters;
  private final AtomicReference<com.viber.voip.messages.extras.a.a> locationManager = new AtomicReference();
  private ActivityManager mActivityManager;
  private com.viber.voip.util.b mAppBackgroundChecker;
  private String mAppVersion = null;
  private com.viber.voip.ui.a mAvailableScreenWidthMeasurer;
  private d mChatHeadsController;
  private bb mDownloadValve;
  private com.viber.voip.util.b.w mImageFetcher;
  private List<du> mMediaMountListeners = new ArrayList();
  private com.viber.voip.util.upload.a.b mMediaServerController;
  private PhoneControllerWrapper mPhoneController;
  private com.viber.voip.f.j mPromoHandler;
  private com.viber.voip.calls.ao mRecentsLettersToNumbersManager;
  private com.viber.voip.sms.a mSmsDbManager;
  private final AtomicReference<com.viber.voip.messages.extras.twitter.l> mTwitterManager = new AtomicReference();
  private ViberInInfo mViberInInfo = new ViberInInfo();
  private v phoneApp;
  private cp registrationValues;
  
  static
  {
    mInstance = null;
    listAppListeners = new HashSet(10);
    sPreferencesCategories = new HashMap(10);
    sEnableTouchInput = new AtomicBoolean(true);
  }
  
  private static void addAppListener(dw paramdw)
  {
    log("ViberApplication.addMessageManagerListener");
    synchronized (listAppListeners)
    {
      listAppListeners.add(paramdw);
      return;
    }
  }
  
  /* Error */
  private void checkKeyChainWasSaved()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 276	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   5: ldc_w 278
    //   8: invokevirtual 283	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   11: ifeq +254 -> 265
    //   14: invokestatic 289	com/viber/voip/registration/dj:d	()Z
    //   17: istore_2
    //   18: aload_0
    //   19: invokevirtual 293	com/viber/voip/ViberApplication:getActivationController	()Lcom/viber/voip/registration/ActivationController;
    //   22: astore_3
    //   23: aload_3
    //   24: invokevirtual 298	com/viber/voip/registration/ActivationController:getDeviceKey	()Ljava/lang/String;
    //   27: astore 4
    //   29: aload 4
    //   31: ifnull +62 -> 93
    //   34: aload 4
    //   36: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   39: ifne +54 -> 93
    //   42: aload_3
    //   43: invokevirtual 307	com/viber/voip/registration/ActivationController:getKeyChainDeviceKey	()Ljava/lang/String;
    //   46: astore 11
    //   48: aload 11
    //   50: ifnull +13 -> 63
    //   53: aload 4
    //   55: aload 11
    //   57: invokevirtual 283	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   60: ifne +33 -> 93
    //   63: aload_3
    //   64: aload 4
    //   66: invokevirtual 310	com/viber/voip/registration/ActivationController:setKeyChainDeviceKey	(Ljava/lang/String;)V
    //   69: new 312	java/lang/StringBuilder
    //   72: dup
    //   73: invokespecial 313	java/lang/StringBuilder:<init>	()V
    //   76: ldc_w 315
    //   79: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: aload 4
    //   84: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: invokevirtual 322	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   90: invokestatic 263	com/viber/voip/ViberApplication:log	(Ljava/lang/String;)V
    //   93: invokestatic 326	com/viber/voip/ViberApplication:preferences	()Lcom/viber/voip/settings/l;
    //   96: astore 5
    //   98: iload_2
    //   99: ifeq +169 -> 268
    //   102: ldc_w 328
    //   105: astore 6
    //   107: aload 5
    //   109: aload 6
    //   111: ldc_w 330
    //   114: invokeinterface 336 3 0
    //   119: astore 7
    //   121: aload 7
    //   123: ifnull +62 -> 185
    //   126: aload 7
    //   128: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   131: ifne +54 -> 185
    //   134: aload_3
    //   135: invokevirtual 339	com/viber/voip/registration/ActivationController:getKeyChainUDID	()Ljava/lang/String;
    //   138: astore 10
    //   140: aload 10
    //   142: ifnull +13 -> 155
    //   145: aload 7
    //   147: aload 10
    //   149: invokevirtual 283	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   152: ifne +33 -> 185
    //   155: aload_3
    //   156: aload 7
    //   158: invokevirtual 342	com/viber/voip/registration/ActivationController:setKeyChainUDID	(Ljava/lang/String;)V
    //   161: new 312	java/lang/StringBuilder
    //   164: dup
    //   165: invokespecial 313	java/lang/StringBuilder:<init>	()V
    //   168: ldc_w 344
    //   171: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: aload 7
    //   176: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: invokevirtual 322	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   182: invokestatic 263	com/viber/voip/ViberApplication:log	(Ljava/lang/String;)V
    //   185: invokestatic 326	com/viber/voip/ViberApplication:preferences	()Lcom/viber/voip/settings/l;
    //   188: ldc_w 346
    //   191: ldc_w 330
    //   194: invokeinterface 336 3 0
    //   199: astore 8
    //   201: aload 8
    //   203: ifnull +62 -> 265
    //   206: aload 8
    //   208: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   211: ifne +54 -> 265
    //   214: aload_3
    //   215: invokevirtual 349	com/viber/voip/registration/ActivationController:getKeyChainHardwareKey	()Ljava/lang/String;
    //   218: astore 9
    //   220: aload 9
    //   222: ifnull +13 -> 235
    //   225: aload 8
    //   227: aload 9
    //   229: invokevirtual 283	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   232: ifne +33 -> 265
    //   235: aload_3
    //   236: aload 8
    //   238: invokevirtual 352	com/viber/voip/registration/ActivationController:setKeyChainHardwareKey	(Ljava/lang/String;)V
    //   241: new 312	java/lang/StringBuilder
    //   244: dup
    //   245: invokespecial 313	java/lang/StringBuilder:<init>	()V
    //   248: ldc_w 354
    //   251: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   254: aload 8
    //   256: invokevirtual 319	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: invokevirtual 322	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   262: invokestatic 263	com/viber/voip/ViberApplication:log	(Ljava/lang/String;)V
    //   265: aload_0
    //   266: monitorexit
    //   267: return
    //   268: ldc_w 356
    //   271: astore 6
    //   273: goto -166 -> 107
    //   276: astore_1
    //   277: aload_0
    //   278: monitorexit
    //   279: aload_1
    //   280: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	281	0	this	ViberApplication
    //   276	4	1	localObject	Object
    //   17	82	2	bool	boolean
    //   22	214	3	localActivationController	ActivationController
    //   27	56	4	str1	String
    //   96	12	5	locall	com.viber.voip.settings.l
    //   105	167	6	str2	String
    //   119	56	7	str3	String
    //   199	56	8	str4	String
    //   218	10	9	str5	String
    //   138	10	10	str6	String
    //   46	10	11	str7	String
    // Exception table:
    //   from	to	target	type
    //   2	29	276	finally
    //   34	48	276	finally
    //   53	63	276	finally
    //   63	93	276	finally
    //   93	98	276	finally
    //   107	121	276	finally
    //   126	140	276	finally
    //   145	155	276	finally
    //   155	185	276	finally
    //   185	201	276	finally
    //   206	220	276	finally
    //   225	235	276	finally
    //   235	265	276	finally
  }
  
  private ar createCountryCodeManager()
  {
    String str = bc.b().c;
    return new ar(new aq(this), str, null);
  }
  
  private void disableComponent(ComponentName paramComponentName, boolean paramBoolean)
  {
    Log.i("ViberApplication", "Disable component " + paramComponentName.getShortClassName());
    if (paramBoolean) {}
    for (int i = 0;; i = 1)
    {
      PackageManager localPackageManager = getPackageManager();
      if (localPackageManager.getComponentEnabledSetting(paramComponentName) != 2)
      {
        Log.i("ViberApplication", "disable Component " + paramComponentName.getShortClassName());
        localPackageManager.setComponentEnabledSetting(paramComponentName, 2, i);
      }
      return;
    }
  }
  
  private void disableContactDetailsActivity(boolean paramBoolean)
  {
    enableComponent("com.viber.voip.HomeContactDetailsActivity", paramBoolean);
    if (!paramBoolean) {}
    for (boolean bool = true;; bool = false)
    {
      enableComponent("com.viber.voip.contacts.ui.ContactDetailsActivity", bool);
      return;
    }
  }
  
  private void disableConversationActivity(boolean paramBoolean)
  {
    enableComponent("com.viber.voip.HomeConversationActivity", paramBoolean);
    if (!paramBoolean) {}
    for (boolean bool = true;; bool = false)
    {
      enableComponent("com.viber.voip.messages.ui.ConversationActivity", bool);
      return;
    }
  }
  
  private void disableSettingsActivity(boolean paramBoolean)
  {
    enableComponent("com.viber.voip.HomeSettingsActivity", paramBoolean);
    if (!paramBoolean) {}
    for (boolean bool = true;; bool = false)
    {
      enableComponent("com.viber.voip.settings.ui.SettingsHeadersActivity", bool);
      return;
    }
  }
  
  private void disableYouActivity(boolean paramBoolean)
  {
    enableComponent("com.viber.voip.HomeYourActivity", paramBoolean);
    if (!paramBoolean) {}
    for (boolean bool = true;; bool = false)
    {
      enableComponent("com.viber.voip.user.YouActivity", bool);
      return;
    }
  }
  
  private void doNotifyActivityOnForeground(boolean paramBoolean, String paramString)
  {
    if (paramBoolean) {
      com.viber.voip.k.a.a().f(paramString);
    }
    if (this.mAppBackgroundChecker != null) {
      this.mAppBackgroundChecker.a(paramBoolean, paramString);
    }
  }
  
  private void doShowDialog(int paramInt, String paramString)
  {
    switch (paramInt)
    {
    default: 
      showUnknownDialog(paramInt, paramString);
      return;
    case 1: 
      showSwitchToGSMDialog(paramString);
      return;
    case 3: 
      Intent localIntent2 = new Intent("com.viber.voip.action.TYPE_TEXT_ONLY_DIALOG");
      localIntent2.putExtra("dialog_context", paramString);
      localIntent2.setFlags(268435456);
      startActivity(localIntent2);
      return;
    }
    Intent localIntent1 = new Intent("com.viber.voip.action.TYPE_NO_SPIRIT_DIALOG");
    localIntent1.putExtra("dialog_context", paramString);
    localIntent1.setFlags(268435456);
    startActivity(localIntent1);
  }
  
  private void enableComponent(String paramString, boolean paramBoolean)
  {
    PackageManager localPackageManager = getPackageManager();
    ComponentName localComponentName = new ComponentName(this, paramString);
    if (paramBoolean) {}
    for (int i = 1;; i = 2)
    {
      localPackageManager.setComponentEnabledSetting(localComponentName, i, 1);
      return;
    }
  }
  
  private void enableShareViaViber(boolean paramBoolean)
  {
    enableComponent("com.viber.voip.WelcomeShareActivity", paramBoolean);
  }
  
  public static void exit(Activity paramActivity, boolean paramBoolean)
  {
    log("exit");
    Resources localResources;
    Object localObject;
    if ((paramActivity != null) && (!paramActivity.isFinishing()))
    {
      localResources = paramActivity.getResources();
      if (!paramBoolean) {
        break label152;
      }
      localObject = null;
      if (!paramBoolean) {
        break label165;
      }
    }
    label152:
    label165:
    for (int i = 2131494373;; i = 2131493946)
    {
      ProgressDialog.show(paramActivity, (CharSequence)localObject, localResources.getString(i), true).setCancelable(false);
      ViberApplication localViberApplication = getInstance();
      if (paramBoolean)
      {
        AlarmManager localAlarmManager = (AlarmManager)localViberApplication.getSystemService("alarm");
        Intent localIntent = new Intent();
        localIntent.setAction("android.intent.action.MAIN");
        localIntent.addCategory("android.intent.category.LAUNCHER");
        localIntent.setClass(localViberApplication, WelcomeActivity.class);
        PendingIntent localPendingIntent = PendingIntent.getActivity(localViberApplication, -1, localIntent, 0);
        localAlarmManager.set(0, 3000L + System.currentTimeMillis(), localPendingIntent);
      }
      localViberApplication.sendBroadcast(new Intent("com.viber.voip.action.VIBER_SERVICE_EXIT"));
      return;
      localObject = localResources.getString(2131493945);
      break;
    }
  }
  
  public static boolean externalStorageMounted(Context paramContext, boolean paramBoolean)
  {
    if (!"mounted".equals(Environment.getExternalStorageState()))
    {
      if (paramBoolean) {
        Toast.makeText(paramContext, 2131494025, 0).show();
      }
      return false;
    }
    return true;
  }
  
  public static void flushLogger()
  {
    if (logger != null) {
      logger.b();
    }
  }
  
  private com.viber.voip.util.b.w getImageFetcher()
  {
    if (this.mImageFetcher == null)
    {
      this.mImageFetcher = new com.viber.voip.util.b.w(this);
      com.viber.voip.util.b.u localu = new com.viber.voip.util.b.u(this, "image_fetcher_cache");
      localu.a(0.1F);
      localu.d = Bitmap.CompressFormat.PNG;
      this.mImageFetcher.a(localu);
    }
    return this.mImageFetcher;
  }
  
  public static ViberApplication getInstance()
  {
    return mInstance;
  }
  
  public static void getViberApp(dw paramdw)
  {
    if (mInstance != null)
    {
      paramdw.a(mInstance);
      return;
    }
    addAppListener(paramdw);
  }
  
  public static boolean hideDoodle()
  {
    if (Runtime.getRuntime().maxMemory() / 1048576L <= 24L)
    {
      log("hideDoodle: true");
      return true;
    }
    log("hideDoodle: false");
    return false;
  }
  
  private void initLogger()
  {
    if (logger != null) {
      return;
    }
    String str = com.viber.voip.process.k.a().toString().toLowerCase(Locale.getDefault());
    logger = com.viber.logger.b.a(getApplicationContext(), w.g, str);
  }
  
  private static void initPreferencesStorage(Context paramContext)
  {
    try
    {
      preferencesStorageInstance = initPreferencesStorageForCategory(paramContext.getApplicationContext(), null);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private static com.viber.voip.settings.l initPreferencesStorageForCategory(Context paramContext, String paramString)
  {
    try
    {
      com.viber.voip.process.k.a(paramContext);
      if (com.viber.voip.process.k.a() == null) {
        throw new IllegalStateException("Fuck you very much");
      }
    }
    finally {}
    log("initPreferencesStorage");
    Object localObject2;
    if (com.viber.voip.process.k.a() == com.viber.voip.process.k.a)
    {
      localObject2 = new com.viber.voip.settings.a(paramContext.getApplicationContext(), dc.a(dk.h), paramString);
      if (paramString == null) {
        p.a(paramContext, (com.viber.voip.settings.l)localObject2);
      }
    }
    for (;;)
    {
      return localObject2;
      localObject2 = null;
      if (paramString == null) {
        localObject2 = new q(paramContext.getApplicationContext());
      }
    }
  }
  
  public static boolean isActivated()
  {
    return preferences().b("is_activated", false);
  }
  
  private boolean isComponentEnabled(String paramString)
  {
    return 1 == getPackageManager().getComponentEnabledSetting(new ComponentName(this, paramString));
  }
  
  public static boolean isTablet()
  {
    if (mIsTablet == null)
    {
      mIsTablet = Boolean.valueOf(mInstance.getResources().getBoolean(2131230731));
      log("mIsTablet = " + mIsTablet);
    }
    return mIsTablet.booleanValue();
  }
  
  private void loadDex()
  {
    log("loadDex");
    if (com.viber.voip.process.k.a() == com.viber.voip.process.k.d)
    {
      g.d();
      g.c();
      return;
    }
    g.c();
  }
  
  public static void log(int paramInt, String paramString1, String paramString2)
  {
    logImp(System.currentTimeMillis(), paramInt, paramString1, paramString2, null);
  }
  
  public static void log(int paramInt, String paramString1, String paramString2, Throwable paramThrowable)
  {
    logImp(System.currentTimeMillis(), paramInt, paramString1, paramString2, paramThrowable);
  }
  
  public static void log(String paramString)
  {
    log(3, "ViberApplication", paramString);
  }
  
  private static void logImp(long paramLong, int paramInt, String paramString1, String paramString2, Throwable paramThrowable) {}
  
  private static void logToLogcat(int paramInt, String paramString1, String paramString2, Throwable paramThrowable)
  {
    if ((paramString1 != null) && (paramString2 != null))
    {
      if (paramThrowable == null) {
        break label78;
      }
      if (paramInt != 6) {
        break label26;
      }
      Log.e(paramString1, paramString2, paramThrowable);
    }
    label26:
    do
    {
      return;
      if (paramInt == 5)
      {
        Log.w(paramString1, paramString2, paramThrowable);
        return;
      }
      if (paramInt == 3)
      {
        Log.d(paramString1, paramString2, paramThrowable);
        return;
      }
      if (paramInt == 4)
      {
        Log.i(paramString1, paramString2, paramThrowable);
        return;
      }
    } while (paramInt != 2);
    Log.v(paramString1, paramString2, paramThrowable);
    return;
    label78:
    Log.println(paramInt, paramString1, paramString2);
  }
  
  private static void logToLogger(long paramLong, String paramString1, String paramString2, Throwable paramThrowable)
  {
    logger.a(paramLong, paramString1, paramString2);
    if (paramThrowable != null) {
      try
      {
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        paramThrowable.printStackTrace(new PrintStream(localByteArrayOutputStream));
        localByteArrayOutputStream.close();
        for (String str : new String(localByteArrayOutputStream.toByteArray()).split("\n")) {
          logger.a(paramLong, paramString1, str);
        }
        return;
      }
      catch (IOException localIOException) {}
    }
  }
  
  private void notifyAppListener()
  {
    log("ConversationActivity.notifyMessageManagerListener");
    synchronized (listAppListeners)
    {
      Iterator localIterator = listAppListeners.iterator();
      if (localIterator.hasNext()) {
        ((dw)localIterator.next()).a(this);
      }
    }
    listAppListeners.clear();
  }
  
  public static com.viber.voip.settings.l preferences()
  {
    if ((preferencesStorageInstance == null) && (mInstance != null)) {
      initPreferencesStorage(mInstance);
    }
    return preferencesStorageInstance;
  }
  
  public static com.viber.voip.settings.l preferences(Context paramContext)
  {
    if (preferencesStorageInstance == null) {
      initPreferencesStorage(paramContext);
    }
    return preferencesStorageInstance;
  }
  
  public static com.viber.voip.settings.l preferences(String paramString)
  {
    if (paramString == null)
    {
      if ((preferencesStorageInstance == null) && (mInstance != null)) {
        initPreferencesStorage(mInstance);
      }
      return preferencesStorageInstance;
    }
    synchronized (sPreferencesCategories)
    {
      com.viber.voip.settings.l locall1 = (com.viber.voip.settings.l)sPreferencesCategories.get(paramString);
      if (locall1 != null) {
        return locall1;
      }
    }
    com.viber.voip.settings.l locall2 = initPreferencesStorageForCategory(mInstance, paramString);
    if (locall2 != null) {
      sPreferencesCategories.put(paramString, locall2);
    }
    return locall2;
  }
  
  private void startCrashlytics()
  {
    g.a().a(new dr(this));
  }
  
  public static void startHomeActivity()
  {
    ViberApplication localViberApplication = getInstance();
    Intent localIntent = new Intent(localViberApplication, HomeActivity.class);
    localIntent.setAction("android.intent.action.MAIN");
    localIntent.addFlags(268435456);
    localIntent.addFlags(67108864);
    localViberApplication.startActivity(localIntent);
  }
  
  public static void stopLogging()
  {
    if (logger != null)
    {
      logger.a();
      logger = null;
    }
  }
  
  private void updateLanguage(Configuration paramConfiguration, com.viber.voip.settings.l paraml, boolean paramBoolean)
  {
    boolean bool = paraml.b(com.viber.voip.settings.j.G(), com.viber.voip.settings.j.H().booleanValue());
    String str = com.viber.voip.settings.j.I();
    if (paramBoolean) {
      paraml.a(com.viber.voip.settings.j.G(), bool);
    }
    do
    {
      return;
      if (bool) {
        str = Resources.getSystem().getConfiguration().locale.getLanguage();
      }
    } while (paramConfiguration.locale.getLanguage().equals(str));
    Locale localLocale = new Locale(str);
    Locale.setDefault(localLocale);
    paramConfiguration.locale = localLocale;
    getResources().updateConfiguration(paramConfiguration, getResources().getDisplayMetrics());
  }
  
  public void disableSyncAccountComponents(boolean paramBoolean)
  {
    log("disableSyncAccountComponents enable " + paramBoolean);
    enableComponent("com.viber.service.contacts.sync.ContactsSyncAccountService", paramBoolean);
    enableComponent("com.viber.service.contacts.authentication.AccountAuthenticatorService", paramBoolean);
    enableComponent("com.viber.service.contacts.contactbook.AccountContactbookService", paramBoolean);
  }
  
  void enableComponent(ComponentName paramComponentName)
  {
    log("Enable component " + paramComponentName.getShortClassName());
    PackageManager localPackageManager = getPackageManager();
    if (localPackageManager.getComponentEnabledSetting(paramComponentName) == 2)
    {
      log("Component " + paramComponentName.getShortClassName() + " in disabled state, forcing it to be enabled on app start");
      localPackageManager.setComponentEnabledSetting(paramComponentName, 1, 1);
    }
  }
  
  public void enableTouchInput(boolean paramBoolean)
  {
    sEnableTouchInput.set(paramBoolean);
  }
  
  public void finish()
  {
    log("finish(), process: " + com.viber.voip.process.k.a());
    if (com.viber.voip.process.k.a() == com.viber.voip.process.k.a)
    {
      if (ViberActivity.getLastUsedActivity() != null)
      {
        ViberActivity.getLastUsedActivity().finish();
        Log.d("ViberApplication", "Viber finish last activity");
      }
      com.viber.voip.stickers.e.c.c(this);
      if (this.mSmsDbManager != null) {
        this.mSmsDbManager.b();
      }
      com.viber.voip.e.u.a().f();
      stopLogging();
      dc.a();
    }
    if ((Build.VERSION.SDK_INT != 14) && (Build.VERSION.SDK_INT != 15))
    {
      if (com.viber.voip.process.k.a() == com.viber.voip.process.k.a)
      {
        disableComponent(new ComponentName(this, IncomingSmsReceiver.class), false);
        if (Build.MANUFACTURER.equals("RIM")) {
          break label174;
        }
      }
      label174:
      for (boolean bool = true;; bool = false)
      {
        disableComponent(new ComponentName(this, KeepAliveReceiver.class), bool);
        Log.d("ViberApplication", "Viber System.exit");
        System.runFinalizersOnExit(true);
        System.exit(0);
        return;
      }
    }
    Log.d("ViberApplication", "Viber killProcess " + Process.myPid());
    System.exit(0);
  }
  
  public void fireMediaMounted()
  {
    getContactManager().g();
    getImageFetcher().f();
    Iterator localIterator = new ArrayList(this.mMediaMountListeners).iterator();
    while (localIterator.hasNext()) {
      ((du)localIterator.next()).a();
    }
  }
  
  public void fireMediaUnmounted()
  {
    Iterator localIterator = new ArrayList(this.mMediaMountListeners).iterator();
    while (localIterator.hasNext()) {
      ((du)localIterator.next()).b();
    }
  }
  
  public ActivationController getActivationController()
  {
    if (this.activationController == null) {
      this.activationController = new ActivationController(this);
    }
    return this.activationController;
  }
  
  public ActivityManager getActivityManager()
  {
    if (this.mActivityManager == null) {
      this.mActivityManager = ((ActivityManager)getSystemService("activity"));
    }
    return this.mActivityManager;
  }
  
  public int getAddressBookVersion()
  {
    int i = preferences().b("AddressBookVersion", -1);
    if (-1 == i)
    {
      setAddressBookVersion(1);
      return 1;
    }
    return i;
  }
  
  public String getAppVersion()
  {
    return this.mAppVersion;
  }
  
  public com.viber.voip.ui.a getAvailableScreenWidthMeasurer()
  {
    return this.mAvailableScreenWidthMeasurer;
  }
  
  public com.viber.voip.util.l getBiDiAwareFormatter()
  {
    if (this.biDiAwareFormatter == null) {
      this.biDiAwareFormatter = new com.viber.voip.util.m(getResources());
    }
    return this.biDiAwareFormatter;
  }
  
  public OnlineContactInfo getCachedOnlineContactInfo(String paramString)
  {
    return (OnlineContactInfo)onlineContactInfoCache.get(paramString);
  }
  
  public OnlineContactInfo[] getCachedOnlineContactInfo(String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String str = paramArrayOfString[j];
      OnlineContactInfo localOnlineContactInfo = (OnlineContactInfo)onlineContactInfoCache.get(str);
      if (localOnlineContactInfo != null) {
        localArrayList.add(localOnlineContactInfo);
      }
    }
    return (OnlineContactInfo[])localArrayList.toArray(new OnlineContactInfo[localArrayList.size()]);
  }
  
  public Boolean getCachedUnknownNumberInfo(String paramString)
  {
    return (Boolean)unknownNumberInfoCache.get(paramString);
  }
  
  public com.viber.voip.registration.ao getConfigManager()
  {
    return this.configManager;
  }
  
  public com.viber.voip.contacts.c.d.b getContactManager()
  {
    if (dj.d()) {
      return com.viber.voip.contacts.c.d.b.e.a(this);
    }
    return f.a(this);
  }
  
  public ar getCountryCodeManager()
  {
    if (this.countryCodeManager.get() == null) {
      this.countryCodeManager.compareAndSet(null, createCountryCodeManager());
    }
    return (ar)this.countryCodeManager.get();
  }
  
  public com.viber.error.a getCrashHandler()
  {
    return com.viber.error.a.a();
  }
  
  public int getDeviceFlags()
  {
    log("device is : " + Build.DEVICE);
    int i = DeviceFlags.getFlagsForDeviceModel();
    log("using device flags : " + i);
    return i;
  }
  
  public bh getDevicesManager()
  {
    if (this.devicesManager.get() == null) {
      this.devicesManager.compareAndSet(null, new bh(this));
    }
    return (bh)this.devicesManager.get();
  }
  
  public bb getDownloadValve()
  {
    return this.mDownloadValve;
  }
  
  public com.viber.voip.messages.extras.fb.s getFacebookManager()
  {
    if (this.facebookManager.get() == null)
    {
      com.viber.voip.messages.extras.fb.s locals = new com.viber.voip.messages.extras.fb.s(getString(2131493172));
      locals.a(new com.viber.voip.messages.extras.fb.a(this));
      locals.a(new com.viber.voip.messages.extras.fb.b(this));
      this.facebookManager.compareAndSet(null, locals);
    }
    return (com.viber.voip.messages.extras.fb.s)this.facebookManager.get();
  }
  
  public HardwareParameters getHardwareParameters()
  {
    if (this.hardwareParameters == null) {
      this.hardwareParameters = new HardwareParametersImpl(this);
    }
    return this.hardwareParameters;
  }
  
  public com.viber.voip.util.upload.a.b getLocalMediaServerController()
  {
    return this.mMediaServerController;
  }
  
  public com.viber.voip.messages.extras.a.a getLocationManager()
  {
    if (this.locationManager.get() == null) {
      this.locationManager.set(new com.viber.voip.messages.extras.a.e());
    }
    return (com.viber.voip.messages.extras.a.a)this.locationManager.get();
  }
  
  public com.viber.voip.messages.i getMessagesManager()
  {
    return com.viber.voip.messages.controller.c.c.a(this);
  }
  
  public int getNetworkInfo()
  {
    int i = ((TelephonyManager)getSystemService("phone")).getNetworkType();
    log(" getNetworkInfo() entering net type is " + i);
    switch (i)
    {
    default: 
      return 0;
    case 7: 
      return 2751;
    case 4: 
      return 2000;
    case 2: 
      return 2750;
    case 14: 
      return 3004;
    case 5: 
      return 3001;
    case 6: 
      return 3002;
    case 12: 
      return 3003;
    case 1: 
      return 2500;
    case 8: 
      return 3500;
    case 10: 
      return 3006;
    case 15: 
      return 3502;
    case 9: 
      return 3501;
    case 11: 
      return 2001;
    case 13: 
      return 4000;
    case 3: 
      return 3000;
    }
    return 0;
  }
  
  public com.viber.voip.messages.a.a getParticipantManager()
  {
    return com.viber.voip.messages.a.b.d();
  }
  
  public v getPhoneApp()
  {
    if (this.phoneApp == null) {
      this.phoneApp = new v(this);
    }
    return this.phoneApp;
  }
  
  public PhoneControllerWrapper getPhoneController(boolean paramBoolean)
  {
    long l = SystemClock.elapsedRealtime();
    if (this.mPhoneController == null) {}
    try
    {
      if (this.mPhoneController == null) {
        this.mPhoneController = new PhoneControllerWrapper(this);
      }
      if (paramBoolean)
      {
        if (!this.mPhoneController.isReady()) {
          this.mPhoneController.init();
        }
        if ((!this.mPhoneController.isInitialized()) && (isActivated())) {
          this.mPhoneController.initService();
        }
      }
      if (SystemClock.elapsedRealtime() - l > 100L) {
        log(6, "ViberApplication", "Use mViberApplication.getPhoneController(false).addReadyListener()! PhoneController should be initialized asynchronously. \n" + Arrays.toString(Thread.currentThread().getStackTrace()));
      }
      return this.mPhoneController;
    }
    finally {}
  }
  
  public com.viber.voip.f.j getPromoHandler()
  {
    if (this.mPromoHandler == null) {
      this.mPromoHandler = new com.viber.voip.f.j();
    }
    return this.mPromoHandler;
  }
  
  public com.viber.voip.calls.u getRecentCallsManager()
  {
    return z.a(this);
  }
  
  public com.viber.voip.calls.ao getRecentLetterManager()
  {
    if (this.mRecentsLettersToNumbersManager == null) {
      this.mRecentsLettersToNumbersManager = new com.viber.voip.calls.ao(this);
    }
    return this.mRecentsLettersToNumbersManager;
  }
  
  public cp getRegistrationValues()
  {
    if (this.registrationValues == null) {
      this.registrationValues = new cp(this);
    }
    return this.registrationValues;
  }
  
  public com.viber.voip.sms.a getSmsDbManager()
  {
    return this.mSmsDbManager;
  }
  
  public ISoundService getSoundService()
  {
    return SoundFactory.getSoundService(this);
  }
  
  public String getSyncAccountName()
  {
    return getRegistrationValues().f();
  }
  
  public Object getSystemService(String paramString)
  {
    if ("image_fetcher".equals(paramString)) {
      return getImageFetcher();
    }
    return super.getSystemService(paramString);
  }
  
  public com.viber.voip.messages.extras.twitter.l getTwitterManager()
  {
    if (this.mTwitterManager.get() == null)
    {
      com.viber.voip.messages.extras.twitter.l locall = com.viber.voip.messages.extras.twitter.l.a(this);
      this.mTwitterManager.compareAndSet(null, locall);
    }
    return (com.viber.voip.messages.extras.twitter.l)this.mTwitterManager.get();
  }
  
  public ViberInInfo getViberInInfo()
  {
    log("returning viberInInfoisViberInNativeCallScreen =  " + this.mViberInInfo.isViberInNativeCallScreen + "isViberInTestGroup = " + this.mViberInInfo.isViberInTestGroup);
    return this.mViberInInfo;
  }
  
  public void handleUnknownDialog(String paramString)
  {
    getPhoneController(true).getDialerController().handleDialogReply(2, paramString);
  }
  
  @SuppressLint({"NewApi"})
  public void initApplication()
  {
    this.mChatHeadsController = new d(this);
    PhoneControllerWrapper localPhoneControllerWrapper = getPhoneController(false);
    localPhoneControllerWrapper.init();
    if (!localPhoneControllerWrapper.isReady())
    {
      log("library load failed!");
      Intent localIntent = new Intent("com.viber.voip.action.CORRUPTED_UPGRADE_DIALOG");
      localIntent.setFlags(268435456);
      startActivity(localIntent);
      return;
    }
    SoundFactory.init(this);
    Settings.publishInstallAsync(this, getString(2131493172));
    if (isActivated())
    {
      getPhoneController(false).initService();
      com.viber.voip.stickers.e.c.b(this);
    }
    com.viber.service.contacts.sync.a.a().b();
    as.a().s();
    as.a().t();
    try
    {
      enableComponent(new ComponentName(this, IncomingSmsReceiver.class));
      enableComponent(new ComponentName(this, KeepAliveReceiver.class));
      preferences().a("isConnectivityTestOn", false);
      checkKeyChainWasSaved();
      if ((!isComponentEnabled("com.viber.voip.WelcomeShareActivity")) && (isActivated())) {
        enableShareViaViber(true);
      }
      preferences().a(this);
      this.mSmsDbManager.a();
      getContactManager().b();
      getRecentCallsManager();
      r.a().b();
      com.viber.voip.messages.ui.bd.a().f();
      String str = preferences().b(com.viber.voip.settings.j.E(), com.viber.voip.settings.j.F());
      boolean bool1 = getString(2131493868).equals(str);
      boolean bool2 = false;
      if (!bool1) {
        bool2 = true;
      }
      getPhoneApp().a(bool2);
      bv.a().b();
      if (preferences().b("PREF_DELETE_EMPTY_FILES", true))
      {
        log("deleteEmptyFiles from : " + w.q);
        new be().a(dc.a(dk.h), w.q, new dp(this));
      }
      notifyAppListener();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public boolean isActivityOnForeground(String paramString)
  {
    String str1 = "";
    List localList = getActivityManager().getRunningTasks(STACK_SIZE);
    boolean bool;
    String str2;
    if (localList != null)
    {
      ActivityManager.RunningTaskInfo localRunningTaskInfo = (ActivityManager.RunningTaskInfo)localList.get(0);
      if (localRunningTaskInfo != null) {
        str1 = localRunningTaskInfo.baseActivity.getClassName();
      }
      if ((localRunningTaskInfo != null) && (localRunningTaskInfo.baseActivity.getClassName().equals(paramString)))
      {
        String str3 = str1;
        bool = true;
        str2 = str3;
      }
    }
    for (;;)
    {
      log(4, "ViberApplication", "Notifier isActivity " + paramString + " On Foreground: " + bool + ",foregroundTask:" + str2);
      return bool;
      str2 = str1;
      bool = false;
    }
  }
  
  public boolean isConnectivityTestOn()
  {
    return preferences().b("isConnectivityTestOn", false);
  }
  
  public boolean isOnForeground()
  {
    try
    {
      List localList2 = getActivityManager().getRunningTasks(1);
      localList1 = localList2;
    }
    catch (NullPointerException localNullPointerException)
    {
      for (;;)
      {
        ActivityManager.RunningTaskInfo localRunningTaskInfo;
        String str;
        boolean bool;
        localNullPointerException.printStackTrace();
        log(6, "ViberApplication", "NPE isOnForeground, also see git history MessageControllerUtils.checkViberOnForeground");
        List localList1 = null;
      }
    }
    if ((localList1 != null) && (!localList1.isEmpty()))
    {
      localRunningTaskInfo = (ActivityManager.RunningTaskInfo)localList1.get(0);
      if (localRunningTaskInfo != null)
      {
        str = localRunningTaskInfo.baseActivity.getPackageName();
        bool = str.equals(getPackageName());
        log(4, "ViberApplication", "ViberApplication.isOnForeground: " + bool + "\t" + str);
        return bool;
      }
    }
    return false;
  }
  
  public boolean isTouchInputEnabled()
  {
    return sEnableTouchInput.get();
  }
  
  public boolean isUseDelayedLoad()
  {
    return (isActivated()) && (isOnForeground());
  }
  
  public void notifyActivityOnForeground(boolean paramBoolean, String paramString)
  {
    if (com.viber.voip.process.k.a() == com.viber.voip.process.k.a)
    {
      doNotifyActivityOnForeground(paramBoolean, paramString);
      return;
    }
    new dv().a(paramBoolean, paramString);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    updateLanguage(paramConfiguration, preferences(), true);
    super.onConfigurationChanged(paramConfiguration);
  }
  
  public void onCreate()
  {
    super.onCreate();
    Log.i("ViberApplication", "ViberApplication, initialization STARTED");
    ViberEnv.init(new dy(), new com.viber.voip.c.a());
    mInstance = this;
    com.viber.voip.util.a.a.a(this);
    com.viber.voip.settings.j.a(this);
    com.viber.voip.process.k.a(this);
    log("ViberProcess:" + com.viber.voip.process.k.a());
    loadDex();
    if (com.viber.voip.process.k.a() == com.viber.voip.process.k.d) {
      HelperServiceAdapter.create(new HelperServiceImpl());
    }
    if (com.viber.voip.process.k.a() == com.viber.voip.process.k.a)
    {
      if ((databaseList() == null) || (databaseList().length == 0))
      {
        log("provider installation error");
        com.viber.voip.e.u.a(this);
        System.exit(0);
        return;
      }
      dc.a(this);
      this.mActivityManager = getActivityManager();
      this.mSmsDbManager = new com.viber.voip.sms.a(getApplicationContext(), dc.a(dk.d));
      ViberApi.a().b();
      com.viber.voip.phone.i.a().b();
      n.a(this);
    }
    try
    {
      this.mAppVersion = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
      com.viber.error.a.a().b();
      initLogger();
      if (com.viber.voip.process.k.a() == com.viber.voip.process.k.a)
      {
        if (preferences().b(com.viber.voip.settings.j.J(), true)) {
          startCrashlytics();
        }
        if ((!dx.b) || (Build.VERSION.SDK_INT <= 7)) {}
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      try
      {
        com.google.android.gcm.a.a(this);
        String str = com.google.android.gcm.a.d(this);
        log("gcmRegistrationId:" + str);
        if (str.equals("")) {
          com.google.android.gcm.a.a(this, new String[] { "373969298204" });
        }
        if ((com.viber.voip.process.k.a() == com.viber.voip.process.k.a) && (preferences().b("pref_clear_prefs", true)))
        {
          preferences().a(com.viber.voip.settings.k.a);
          preferences().a("pref_clear_prefs", false);
        }
        bc.a().a(preferences());
        com.viber.voip.a.bc.a();
        if (com.viber.voip.process.k.a() != com.viber.voip.process.k.a)
        {
          if (com.viber.voip.process.k.a() == com.viber.voip.process.k.c) {
            ViberEnv.getPixieController().init();
          }
          log("ViberProcess:" + com.viber.voip.process.k.a() + " EXIT from ViberApplication initialization");
          return;
          localNameNotFoundException = localNameNotFoundException;
          this.mAppVersion = "unknown";
          localNameNotFoundException.printStackTrace();
        }
      }
      catch (UnsupportedOperationException localUnsupportedOperationException)
      {
        for (;;)
        {
          log("gcmRegistrationId:" + localUnsupportedOperationException.getMessage());
        }
        updateLanguage(getResources().getConfiguration(), preferences(), false);
        this.configManager = new com.viber.voip.registration.ao(this, bc.b().x);
        ViberEnv.getPixieController().addReadyListener(new dm(this));
        this.mAppBackgroundChecker = new com.viber.voip.util.b(getApplicationContext());
        getPhoneController(false).addInitializedListener(this.mAppBackgroundChecker);
        this.mAvailableScreenWidthMeasurer = new com.viber.voip.ui.a(this);
        an.a(this, this.mAvailableScreenWidthMeasurer);
        new dn(this).execute(new Void[0]);
        Log.i("ViberApplication", "ViberApplication basic initialization DONE");
        boolean bool = isTablet();
        disableConversationActivity(bool);
        disableContactDetailsActivity(bool);
        disableYouActivity(bool);
        disableSettingsActivity(bool);
        disableSyncAccountComponents(dj.e());
        PhoneControllerListener localPhoneControllerListener = getPhoneController(false).getDelegatesManager();
        ds localds = new ds(this, null);
        localPhoneControllerListener.registerDelegate(new PhoneControllerDelegate[] { localds });
        localPhoneControllerListener.getDialerCallbackListener().registerDelegate(new DialerControllerDelegate.DialerCallback[] { localds });
        localPhoneControllerListener.getPttPlayerListener().registerDelegate(com.viber.voip.h.b.d(), dc.a(dk.d));
        localPhoneControllerListener.getPttRecorderListener().registerDelegate(com.viber.voip.h.b.d(), dc.a(dk.d));
        PhoneControllerDelegate[] arrayOfPhoneControllerDelegate1 = new PhoneControllerDelegate[1];
        arrayOfPhoneControllerDelegate1[0] = com.viber.voip.viberout.e.c();
        localPhoneControllerListener.registerDelegate(arrayOfPhoneControllerDelegate1);
        PhoneControllerDelegate[] arrayOfPhoneControllerDelegate2 = new PhoneControllerDelegate[1];
        arrayOfPhoneControllerDelegate2[0] = com.viber.voip.rakuten.l.a();
        localPhoneControllerListener.registerDelegate(arrayOfPhoneControllerDelegate2);
        getMessagesManager();
        PhoneControllerDelegate[] arrayOfPhoneControllerDelegate3 = new PhoneControllerDelegate[1];
        arrayOfPhoneControllerDelegate3[0] = com.viber.voip.e.u.a();
        localPhoneControllerListener.registerDelegate(arrayOfPhoneControllerDelegate3);
        getPhoneController(false).addInitializedListener(new do(this));
        Log.i("ViberApplication", "ViberApplication initialization isOnForeground:" + isOnForeground() + ",isUseDelayedLoad():" + isUseDelayedLoad());
        if (!isUseDelayedLoad()) {
          startService(new Intent("com.viber.voip.action.VIBER_SERVICE"));
        }
        ViberEnv.getPixieController().init();
        this.mDownloadValve = new bb();
        this.mMediaServerController = new com.viber.voip.util.upload.a.b();
        startService(new Intent("com.viber.voip.api.billing.InAppBillingService.BIND"));
        if (com.viber.voip.process.k.a() == com.viber.voip.process.k.a) {
          MarketReceiver.a();
        }
        Log.i("ViberApplication", "ViberApplication initialization DONE");
      }
    }
  }
  
  public void onLowMemory()
  {
    getImageFetcher().f();
    com.viber.voip.backgrounds.a.a().c();
    super.onLowMemory();
  }
  
  public void onSharedPreferenceChanged(com.viber.voip.settings.l paraml, String paramString)
  {
    if (paramString.equals(com.viber.voip.settings.j.G())) {
      updateLanguage(getResources().getConfiguration(), paraml, false);
    }
  }
  
  public void onTerminate()
  {
    try
    {
      log("onTerminate");
      if (logger != null) {
        logger.a();
      }
      getContactManager().a();
      getRecentCallsManager().a();
      com.viber.voip.stickers.e.c.c(this);
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        localThrowable.printStackTrace();
      }
    }
    if (this.mMediaServerController != null) {
      this.mMediaServerController.a();
    }
    super.onTerminate();
  }
  
  public void registerMediaMountListener(du paramdu)
  {
    if (!this.mMediaMountListeners.contains(paramdu)) {
      this.mMediaMountListeners.add(paramdu);
    }
  }
  
  public void setActivated(boolean paramBoolean)
  {
    log("setActivated: " + paramBoolean);
    preferences().a("is_activated", paramBoolean);
    if (!paramBoolean)
    {
      getActivationController().clearState();
      com.viber.voip.sms.s.a(false, true);
      getPhoneController(true).resetDeviceKey();
      getPhoneController(true).disconnect();
    }
    for (;;)
    {
      enableShareViaViber(paramBoolean);
      return;
      byte[] arrayOfByte = aj.a(getActivationController().getDeviceKey());
      getPhoneController(true).setDeviceKey(arrayOfByte);
    }
  }
  
  public void setAddressBookVersion(int paramInt)
  {
    preferences().a("AddressBookVersion", paramInt);
  }
  
  public void setCachedOnlineContactInfo(OnlineContactInfo[] paramArrayOfOnlineContactInfo)
  {
    int i = paramArrayOfOnlineContactInfo.length;
    for (int j = 0; j < i; j++)
    {
      OnlineContactInfo localOnlineContactInfo = paramArrayOfOnlineContactInfo[j];
      if (!localOnlineContactInfo.contactPhone.startsWith("+")) {
        localOnlineContactInfo.contactPhone = ("+" + localOnlineContactInfo.contactPhone);
      }
      if ((!localOnlineContactInfo.isOnLine) && (System.currentTimeMillis() - localOnlineContactInfo.time < 1000L)) {
        localOnlineContactInfo.isOnLine = true;
      }
      onlineContactInfoCache.put(localOnlineContactInfo.contactPhone, localOnlineContactInfo);
    }
  }
  
  public void setCachedUnknownNumberInfo(String paramString, Boolean paramBoolean)
  {
    if (paramBoolean != null)
    {
      unknownNumberInfoCache.put(paramString, paramBoolean);
      return;
    }
    unknownNumberInfoCache.remove(paramString);
  }
  
  public void setConnectivityTestMode(boolean paramBoolean)
  {
    preferences().a("isConnectivityTestOn", paramBoolean);
  }
  
  protected void showSwitchToGSMDialog(String paramString)
  {
    Intent localIntent = new Intent("com.viber.voip.action.SWITCH_TO_GSM_DIALOG");
    localIntent.putExtra("phone_number", paramString);
    localIntent.setFlags(268435456);
    startActivity(localIntent);
  }
  
  public void showToast(String paramString)
  {
    this.handler.post(new dq(this, paramString));
  }
  
  protected void showUnknownDialog(int paramInt, String paramString)
  {
    if (((ViberActivity.getLastUsedActivity() instanceof PhoneActivity)) && (isOnForeground()))
    {
      ((PhoneActivity)ViberActivity.getLastUsedActivity()).a(paramString);
      return;
    }
    handleUnknownDialog(paramString);
  }
  
  public void unregisterMediaMountListener(du paramdu)
  {
    this.mMediaMountListeners.remove(paramdu);
  }
  
  public void updateAddressBookVersion()
  {
    int i = getAddressBookVersion();
    log("updateAddressBookVersion old:" + i);
    setAddressBookVersion(i + 1);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ViberApplication
 * JD-Core Version:    0.7.0.1
 */