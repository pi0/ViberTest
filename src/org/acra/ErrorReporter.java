package org.acra;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.format.Time;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.widget.Toast;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.InvalidPropertiesFormatException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.acra.annotation.ReportsCrashes;
import org.acra.sender.ReportSender;
import org.acra.sender.ReportSenderException;
import org.acra.util.Installation;

public class ErrorReporter
  implements Thread.UncaughtExceptionHandler
{
  static final String APPROVED_SUFFIX = "-approved";
  static final String EXTRA_REPORT_FILE_NAME = "REPORT_FILE_NAME";
  private static final int MAX_SEND_REPORTS = 5;
  public static final String REPORTFILE_EXTENSION = ".stacktrace";
  static final String SILENT_SUFFIX = "-" + ReportField.IS_SILENT;
  private static boolean enabled = false;
  private static Context mContext;
  private static CrashReportData mCrashProperties;
  private static ErrorReporter mInstanceSingleton;
  private static ArrayList<ReportSender> mReportSenders = new ArrayList();
  Map<String, String> mCustomParameters = new HashMap();
  private Thread.UncaughtExceptionHandler mDfltExceptionHandler;
  private String mInitialConfiguration;
  private ReportingInteractionMode mReportingInteractionMode = ReportingInteractionMode.SILENT;
  
  static
  {
    mCrashProperties = new CrashReportData();
  }
  
  private static void addUserDataToReport(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    Log.d(ACRA.LOG_TAG, "Add user comment to " + paramString1);
    if ((paramString1 != null) && (paramString2 != null)) {
      try
      {
        FileInputStream localFileInputStream = paramContext.openFileInput(paramString1);
        CrashReportData localCrashReportData = new CrashReportData();
        try
        {
          Log.d(ACRA.LOG_TAG, "Loading Properties report to insert user comment.");
          localCrashReportData.load(localFileInputStream);
          localFileInputStream.close();
          localCrashReportData.put(ReportField.USER_COMMENT, paramString2);
          ReportField localReportField = ReportField.USER_EMAIL;
          if (paramString3 == null) {
            paramString3 = "";
          }
          localCrashReportData.put(localReportField, paramString3);
          saveCrashReportFile(paramString1, localCrashReportData);
          return;
        }
        finally
        {
          localFileInputStream.close();
        }
        return;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        Log.w(ACRA.LOG_TAG, "User comment not added: ", localFileNotFoundException);
        return;
      }
      catch (InvalidPropertiesFormatException localInvalidPropertiesFormatException)
      {
        Log.w(ACRA.LOG_TAG, "User comment not added: ", localInvalidPropertiesFormatException);
        return;
      }
      catch (IOException localIOException)
      {
        Log.w(ACRA.LOG_TAG, "User comment not added: ", localIOException);
      }
    }
  }
  
  private boolean containsOnlySilentOrApprovedReports(String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++) {
      if (!isApproved(paramArrayOfString[j])) {
        return false;
      }
    }
    return true;
  }
  
  private String createCustomInfoString()
  {
    Iterator localIterator = this.mCustomParameters.keySet().iterator();
    String str2;
    String str3;
    for (String str1 = ""; localIterator.hasNext(); str1 = str1 + str2 + " = " + str3 + "\n")
    {
      str2 = (String)localIterator.next();
      str3 = (String)this.mCustomParameters.get(str2);
    }
    return str1;
  }
  
  private void deleteFile(Context paramContext, String paramString)
  {
    if (!paramContext.deleteFile(paramString)) {
      Log.w(ACRA.LOG_TAG, "Could not deleted error report : " + paramString);
    }
  }
  
  private void deletePendingReports(boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    String[] arrayOfString = getCrashReportFilesList();
    Arrays.sort(arrayOfString);
    if (arrayOfString != null) {
      for (int i = 0; i < arrayOfString.length - paramInt; i++)
      {
        String str = arrayOfString[i];
        boolean bool = isApproved(str);
        if (((bool) && (paramBoolean1)) || ((!bool) && (paramBoolean2))) {
          new File(mContext.getFilesDir(), str).delete();
        }
      }
    }
  }
  
  private static long getAvailableInternalMemorySize()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    return localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
  }
  
  public static ErrorReporter getInstance()
  {
    if (mInstanceSingleton == null) {
      mInstanceSingleton = new ErrorReporter();
    }
    return mInstanceSingleton;
  }
  
  private String getLatestNonSilentReport(String[] paramArrayOfString)
  {
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
    {
      for (int i = -1 + paramArrayOfString.length; i >= 0; i--) {
        if (!isSilent(paramArrayOfString[i])) {
          return paramArrayOfString[i];
        }
      }
      return paramArrayOfString[(-1 + paramArrayOfString.length)];
    }
    return null;
  }
  
  private static long getTotalInternalMemorySize()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    return localStatFs.getBlockSize() * localStatFs.getBlockCount();
  }
  
  private boolean isApproved(String paramString)
  {
    return (isSilent(paramString)) || (paramString.contains("-approved"));
  }
  
  private boolean isSilent(String paramString)
  {
    return paramString.contains(SILENT_SUFFIX);
  }
  
  private CrashReportData loadCrashReport(Context paramContext, String paramString)
  {
    CrashReportData localCrashReportData = new CrashReportData();
    FileInputStream localFileInputStream = paramContext.openFileInput(paramString);
    try
    {
      localCrashReportData.load(localFileInputStream);
      return localCrashReportData;
    }
    finally
    {
      localFileInputStream.close();
    }
  }
  
  private void retrieveCrashData(Context paramContext)
  {
    for (;;)
    {
      try
      {
        ReportsCrashes localReportsCrashes = ACRA.getConfig();
        ReportField[] arrayOfReportField = localReportsCrashes.customReportContent();
        if (arrayOfReportField.length == 0)
        {
          if ((localReportsCrashes.mailTo() == null) || ("".equals(localReportsCrashes.mailTo()))) {
            arrayOfReportField = ACRA.DEFAULT_REPORT_FIELDS;
          }
        }
        else
        {
          List localList = Arrays.asList(arrayOfReportField);
          SharedPreferences localSharedPreferences = ACRA.getACRASharedPreferences();
          if (localList.contains(ReportField.REPORT_ID)) {
            mCrashProperties.put(ReportField.REPORT_ID, UUID.randomUUID().toString());
          }
          if (localList.contains(ReportField.DUMPSYS_MEMINFO)) {
            mCrashProperties.put(ReportField.DUMPSYS_MEMINFO, DumpSysCollector.collectMemInfo());
          }
          PackageManager localPackageManager = paramContext.getPackageManager();
          if (localPackageManager != null)
          {
            if ((!localSharedPreferences.getBoolean("acra.syslog.enable", true)) || (localPackageManager.checkPermission("android.permission.READ_LOGS", paramContext.getPackageName()) != 0)) {
              continue;
            }
            Log.i(ACRA.LOG_TAG, "READ_LOGS granted! ACRA can include LogCat and DropBox data.");
            if (localList.contains(ReportField.LOGCAT)) {
              mCrashProperties.put(ReportField.LOGCAT, LogCatCollector.collectLogCat(null).toString());
            }
            if (localList.contains(ReportField.EVENTSLOG)) {
              mCrashProperties.put(ReportField.EVENTSLOG, LogCatCollector.collectLogCat("events").toString());
            }
            if (localList.contains(ReportField.RADIOLOG)) {
              mCrashProperties.put(ReportField.RADIOLOG, LogCatCollector.collectLogCat("radio").toString());
            }
            if (localList.contains(ReportField.DROPBOX)) {
              mCrashProperties.put(ReportField.DROPBOX, DropBoxCollector.read(mContext, ACRA.getConfig().additionalDropBoxTags()));
            }
            if ((localList.contains(ReportField.DEVICE_ID)) && (localSharedPreferences.getBoolean("acra.deviceid.enable", true)) && (localPackageManager.checkPermission("android.permission.READ_PHONE_STATE", paramContext.getPackageName()) == 0))
            {
              String str2 = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
              if (str2 != null) {
                mCrashProperties.put(ReportField.DEVICE_ID, str2);
              }
            }
          }
          if (localList.contains(ReportField.INSTALLATION_ID)) {
            mCrashProperties.put(ReportField.INSTALLATION_ID, Installation.id(mContext));
          }
          if (localList.contains(ReportField.INITIAL_CONFIGURATION)) {
            mCrashProperties.put(ReportField.INITIAL_CONFIGURATION, this.mInitialConfiguration);
          }
          if (localList.contains(ReportField.CRASH_CONFIGURATION))
          {
            Configuration localConfiguration = paramContext.getResources().getConfiguration();
            mCrashProperties.put(ReportField.CRASH_CONFIGURATION, ConfigurationInspector.toString(localConfiguration));
          }
          PackageInfo localPackageInfo = localPackageManager.getPackageInfo(paramContext.getPackageName(), 0);
          if (localPackageInfo == null) {
            break label1160;
          }
          if (localList.contains(ReportField.APP_VERSION_CODE)) {
            mCrashProperties.put(ReportField.APP_VERSION_CODE, Integer.toString(localPackageInfo.versionCode));
          }
          if (localList.contains(ReportField.APP_VERSION_NAME))
          {
            CrashReportData localCrashReportData = mCrashProperties;
            ReportField localReportField = ReportField.APP_VERSION_NAME;
            if (localPackageInfo.versionName == null) {
              break label1152;
            }
            str1 = localPackageInfo.versionName;
            localCrashReportData.put(localReportField, str1);
          }
          if (localList.contains(ReportField.PACKAGE_NAME)) {
            mCrashProperties.put(ReportField.PACKAGE_NAME, paramContext.getPackageName());
          }
          if (localList.contains(ReportField.BUILD)) {
            mCrashProperties.put(ReportField.BUILD, ReflectionCollector.collectConstants(Build.class));
          }
          if (localList.contains(ReportField.PHONE_MODEL)) {
            mCrashProperties.put(ReportField.PHONE_MODEL, Build.MODEL);
          }
          if (localList.contains(ReportField.ANDROID_VERSION)) {
            mCrashProperties.put(ReportField.ANDROID_VERSION, Build.VERSION.RELEASE);
          }
          if (localList.contains(ReportField.BRAND)) {
            mCrashProperties.put(ReportField.BRAND, Build.BRAND);
          }
          if (localList.contains(ReportField.PRODUCT)) {
            mCrashProperties.put(ReportField.PRODUCT, Build.PRODUCT);
          }
          if (localList.contains(ReportField.TOTAL_MEM_SIZE)) {
            mCrashProperties.put(ReportField.TOTAL_MEM_SIZE, Long.toString(getTotalInternalMemorySize()));
          }
          if (localList.contains(ReportField.AVAILABLE_MEM_SIZE)) {
            mCrashProperties.put(ReportField.AVAILABLE_MEM_SIZE, Long.toString(getAvailableInternalMemorySize()));
          }
          if (localList.contains(ReportField.FILE_PATH)) {
            mCrashProperties.put(ReportField.FILE_PATH, paramContext.getFilesDir().getAbsolutePath());
          }
          if (localList.contains(ReportField.DISPLAY))
          {
            Display localDisplay = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
            mCrashProperties.put(ReportField.DISPLAY, toString(localDisplay));
          }
          if (localList.contains(ReportField.USER_CRASH_DATE))
          {
            Time localTime = new Time();
            localTime.setToNow();
            mCrashProperties.put(ReportField.USER_CRASH_DATE, localTime.format3339(false));
          }
          if (localList.contains(ReportField.CUSTOM_DATA)) {
            mCrashProperties.put(ReportField.CUSTOM_DATA, createCustomInfoString());
          }
          if (localList.contains(ReportField.USER_EMAIL)) {
            mCrashProperties.put(ReportField.USER_EMAIL, localSharedPreferences.getString("acra.user.email", "N/A"));
          }
          if (localList.contains(ReportField.DEVICE_FEATURES)) {
            mCrashProperties.put(ReportField.DEVICE_FEATURES, DeviceFeaturesCollector.getFeatures(paramContext));
          }
          if (localList.contains(ReportField.ENVIRONMENT)) {
            mCrashProperties.put(ReportField.ENVIRONMENT, ReflectionCollector.collectStaticGettersResults(Environment.class));
          }
          if (localList.contains(ReportField.SETTINGS_SYSTEM)) {
            mCrashProperties.put(ReportField.SETTINGS_SYSTEM, SettingsCollector.collectSystemSettings(mContext));
          }
          if (localList.contains(ReportField.SETTINGS_SECURE)) {
            mCrashProperties.put(ReportField.SETTINGS_SECURE, SettingsCollector.collectSecureSettings(mContext));
          }
          if (!localList.contains(ReportField.SHARED_PREFERENCES)) {
            break;
          }
          mCrashProperties.put(ReportField.SHARED_PREFERENCES, SharedPreferencesCollector.collect(mContext));
          return;
        }
        if ("".equals(localReportsCrashes.mailTo())) {
          continue;
        }
        arrayOfReportField = ACRA.DEFAULT_MAIL_REPORT_FIELDS;
        continue;
        Log.i(ACRA.LOG_TAG, "READ_LOGS not allowed. ACRA will not include LogCat and DropBox data.");
        continue;
        String str1 = "not set";
      }
      catch (Exception localException)
      {
        Log.e(ACRA.LOG_TAG, "Error while retrieving crash data", localException);
        return;
      }
      label1152:
      continue;
      label1160:
      mCrashProperties.put(ReportField.APP_VERSION_NAME, "Package info unavailable");
    }
  }
  
  private static String saveCrashReportFile(String paramString, CrashReportData paramCrashReportData)
  {
    for (;;)
    {
      try
      {
        Log.d(ACRA.LOG_TAG, "Writing crash report file.");
        if (paramCrashReportData == null) {
          paramCrashReportData = mCrashProperties;
        }
        if (paramString == null)
        {
          Time localTime = new Time();
          localTime.setToNow();
          long l = localTime.toMillis(false);
          String str1 = paramCrashReportData.getProperty(ReportField.IS_SILENT);
          StringBuilder localStringBuilder = new StringBuilder().append("").append(l);
          if (str1 == null) {
            break label156;
          }
          str2 = SILENT_SUFFIX;
          str3 = str2 + ".stacktrace";
          FileOutputStream localFileOutputStream = mContext.openFileOutput(str3, 0);
          try
          {
            paramCrashReportData.store(localFileOutputStream, "");
            return str3;
          }
          finally
          {
            localFileOutputStream.close();
          }
        }
        String str3 = paramString;
      }
      catch (Exception localException)
      {
        Log.e(ACRA.LOG_TAG, "An error occured while writing the report file...", localException);
        return null;
      }
      continue;
      label156:
      String str2 = "";
    }
  }
  
  private static void sendCrashReport(Context paramContext, CrashReportData paramCrashReportData)
  {
    Iterator localIterator = mReportSenders.iterator();
    for (int i = 0;; i = j)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ReportSender localReportSender = (ReportSender)localIterator.next();
      try
      {
        localReportSender.send(paramCrashReportData);
        j = 1;
      }
      catch (ReportSenderException localReportSenderException)
      {
        for (;;)
        {
          if (i == 0) {
            throw localReportSenderException;
          }
          Log.w(ACRA.LOG_TAG, "ReportSender of class " + localReportSender.getClass().getName() + " failed but other senders completed their task. ACRA will not send this report again.");
          int j = i;
        }
      }
    }
  }
  
  private static String toString(Display paramDisplay)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramDisplay.getMetrics(localDisplayMetrics);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("width=").append(paramDisplay.getWidth()).append('\n').append("height=").append(paramDisplay.getHeight()).append('\n').append("pixelFormat=").append(paramDisplay.getPixelFormat()).append('\n').append("refreshRate=").append(paramDisplay.getRefreshRate()).append("fps").append('\n').append("metrics.density=x").append(localDisplayMetrics.density).append('\n').append("metrics.scaledDensity=x").append(localDisplayMetrics.scaledDensity).append('\n').append("metrics.widthPixels=").append(localDisplayMetrics.widthPixels).append('\n').append("metrics.heightPixels=").append(localDisplayMetrics.heightPixels).append('\n').append("metrics.xdpi=").append(localDisplayMetrics.xdpi).append('\n').append("metrics.ydpi=").append(localDisplayMetrics.ydpi);
    return localStringBuilder.toString();
  }
  
  @Deprecated
  public void addCustomData(String paramString1, String paramString2)
  {
    this.mCustomParameters.put(paramString1, paramString2);
  }
  
  public void addReportSender(ReportSender paramReportSender)
  {
    mReportSenders.add(paramReportSender);
  }
  
  public void approvePendingReports()
  {
    Log.d(ACRA.LOG_TAG, "Mark all pending reports as approved.");
    for (String str1 : getCrashReportFilesList()) {
      if (!isApproved(str1))
      {
        File localFile = new File(mContext.getFilesDir(), str1);
        String str2 = str1.replace(".stacktrace", "-approved.stacktrace");
        localFile.renameTo(new File(mContext.getFilesDir(), str2));
      }
    }
  }
  
  /* Error */
  void checkAndSendReports(Context paramContext, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: getstatic 112	org/acra/ACRA:LOG_TAG	Ljava/lang/String;
    //   7: ldc_w 760
    //   10: invokestatic 120	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   13: pop
    //   14: aload_0
    //   15: invokevirtual 212	org/acra/ErrorReporter:getCrashReportFilesList	()[Ljava/lang/String;
    //   18: astore 6
    //   20: aload 6
    //   22: invokestatic 218	java/util/Arrays:sort	([Ljava/lang/Object;)V
    //   25: aload 6
    //   27: arraylength
    //   28: istore 7
    //   30: iconst_0
    //   31: istore 8
    //   33: iload 8
    //   35: iload 7
    //   37: if_icmpge +26 -> 63
    //   40: aload 6
    //   42: iload 8
    //   44: aaload
    //   45: astore 9
    //   47: iload_2
    //   48: ifeq +194 -> 242
    //   51: aload_0
    //   52: aload 9
    //   54: invokespecial 262	org/acra/ErrorReporter:isSilent	(Ljava/lang/String;)Z
    //   57: ifne +185 -> 242
    //   60: goto +176 -> 236
    //   63: getstatic 112	org/acra/ACRA:LOG_TAG	Ljava/lang/String;
    //   66: ldc_w 762
    //   69: invokestatic 120	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   72: pop
    //   73: aload_0
    //   74: monitorexit
    //   75: return
    //   76: getstatic 112	org/acra/ACRA:LOG_TAG	Ljava/lang/String;
    //   79: new 57	java/lang/StringBuilder
    //   82: dup
    //   83: invokespecial 58	java/lang/StringBuilder:<init>	()V
    //   86: ldc_w 764
    //   89: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: aload 9
    //   94: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   100: invokestatic 354	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   103: pop
    //   104: aload_1
    //   105: aload_0
    //   106: aload_1
    //   107: aload 9
    //   109: invokespecial 766	org/acra/ErrorReporter:loadCrashReport	(Landroid/content/Context;Ljava/lang/String;)Lorg/acra/CrashReportData;
    //   112: invokestatic 768	org/acra/ErrorReporter:sendCrashReport	(Landroid/content/Context;Lorg/acra/CrashReportData;)V
    //   115: aload_0
    //   116: aload_1
    //   117: aload 9
    //   119: invokespecial 770	org/acra/ErrorReporter:deleteFile	(Landroid/content/Context;Ljava/lang/String;)V
    //   122: iinc 3 1
    //   125: goto +111 -> 236
    //   128: astore 16
    //   130: getstatic 112	org/acra/ACRA:LOG_TAG	Ljava/lang/String;
    //   133: ldc_w 772
    //   136: aload 16
    //   138: invokestatic 604	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   141: pop
    //   142: aload_0
    //   143: aload_1
    //   144: aload 9
    //   146: invokespecial 770	org/acra/ErrorReporter:deleteFile	(Landroid/content/Context;Ljava/lang/String;)V
    //   149: goto -86 -> 63
    //   152: astore 4
    //   154: aload_0
    //   155: monitorexit
    //   156: aload 4
    //   158: athrow
    //   159: astore 14
    //   161: getstatic 112	org/acra/ACRA:LOG_TAG	Ljava/lang/String;
    //   164: new 57	java/lang/StringBuilder
    //   167: dup
    //   168: invokespecial 58	java/lang/StringBuilder:<init>	()V
    //   171: ldc_w 774
    //   174: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: aload 9
    //   179: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   185: aload 14
    //   187: invokestatic 604	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   190: pop
    //   191: aload_0
    //   192: aload_1
    //   193: aload 9
    //   195: invokespecial 770	org/acra/ErrorReporter:deleteFile	(Landroid/content/Context;Ljava/lang/String;)V
    //   198: goto -135 -> 63
    //   201: astore 12
    //   203: getstatic 112	org/acra/ACRA:LOG_TAG	Ljava/lang/String;
    //   206: new 57	java/lang/StringBuilder
    //   209: dup
    //   210: invokespecial 58	java/lang/StringBuilder:<init>	()V
    //   213: ldc_w 776
    //   216: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: aload 9
    //   221: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   227: aload 12
    //   229: invokestatic 604	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   232: pop
    //   233: goto -170 -> 63
    //   236: iinc 8 1
    //   239: goto -206 -> 33
    //   242: iload_3
    //   243: iconst_5
    //   244: if_icmplt -168 -> 76
    //   247: goto -184 -> 63
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	250	0	this	ErrorReporter
    //   0	250	1	paramContext	Context
    //   0	250	2	paramBoolean	boolean
    //   1	244	3	i	int
    //   152	5	4	localObject	Object
    //   18	23	6	arrayOfString	String[]
    //   28	10	7	j	int
    //   31	206	8	k	int
    //   45	175	9	str	String
    //   201	27	12	localReportSenderException	ReportSenderException
    //   159	27	14	localIOException	IOException
    //   128	9	16	localRuntimeException	java.lang.RuntimeException
    // Exception table:
    //   from	to	target	type
    //   104	122	128	java/lang/RuntimeException
    //   4	30	152	finally
    //   40	47	152	finally
    //   51	60	152	finally
    //   63	73	152	finally
    //   76	104	152	finally
    //   104	122	152	finally
    //   130	149	152	finally
    //   161	198	152	finally
    //   203	233	152	finally
    //   104	122	159	java/io/IOException
    //   104	122	201	org/acra/sender/ReportSenderException
  }
  
  public void checkReportsOnApplicationStart()
  {
    String[] arrayOfString = getCrashReportFilesList();
    if ((arrayOfString != null) && (arrayOfString.length > 0))
    {
      boolean bool = containsOnlySilentOrApprovedReports(arrayOfString);
      if ((this.mReportingInteractionMode == ReportingInteractionMode.SILENT) || (this.mReportingInteractionMode == ReportingInteractionMode.TOAST) || ((this.mReportingInteractionMode == ReportingInteractionMode.NOTIFICATION) && (bool)))
      {
        if ((this.mReportingInteractionMode == ReportingInteractionMode.TOAST) && (!bool)) {
          Toast.makeText(mContext, ACRA.getConfig().resToastText(), 1).show();
        }
        Log.v(ACRA.LOG_TAG, "About to start ReportSenderWorker from #checkReportOnApplicationStart");
        new ErrorReporter.ReportsSenderWorker(this).start();
      }
    }
    else
    {
      return;
    }
    if (ACRA.getConfig().deleteUnapprovedReportsOnApplicationStart())
    {
      getInstance().deletePendingNonApprovedReports();
      return;
    }
    getInstance().notifySendReport(getLatestNonSilentReport(arrayOfString));
  }
  
  public void deletePendingNonApprovedReports()
  {
    if (this.mReportingInteractionMode == ReportingInteractionMode.NOTIFICATION) {}
    for (int i = 1;; i = 0)
    {
      deletePendingReports(false, true, i);
      return;
    }
  }
  
  public void deletePendingReports()
  {
    deletePendingReports(true, true, 0);
  }
  
  public void deletePendingSilentReports()
  {
    deletePendingReports(true, false, 0);
  }
  
  public void disable()
  {
    if (mContext != null) {
      Log.d(ACRA.LOG_TAG, "ACRA is disabled for " + mContext.getPackageName());
    }
    for (;;)
    {
      if (this.mDfltExceptionHandler != null)
      {
        Thread.setDefaultUncaughtExceptionHandler(this.mDfltExceptionHandler);
        enabled = false;
      }
      return;
      Log.d(ACRA.LOG_TAG, "ACRA is disabled.");
    }
  }
  
  String[] getCrashReportFilesList()
  {
    String[] arrayOfString;
    if (mContext == null)
    {
      Log.e(ACRA.LOG_TAG, "Trying to get ACRA reports but ACRA is not initialized.");
      arrayOfString = new String[0];
    }
    do
    {
      return arrayOfString;
      File localFile = mContext.getFilesDir();
      if (localFile == null) {
        break;
      }
      Log.d(ACRA.LOG_TAG, "Looking for error files in " + localFile.getAbsolutePath());
      arrayOfString = localFile.list(new ErrorReporter.2(this));
    } while (arrayOfString != null);
    return new String[0];
    Log.w(ACRA.LOG_TAG, "Application files directory does not exist! The application may not be installed correctly. Please try reinstalling.");
    return new String[0];
  }
  
  public String getCustomData(String paramString)
  {
    return (String)this.mCustomParameters.get(paramString);
  }
  
  public ErrorReporter.ReportsSenderWorker handleException(Throwable paramThrowable)
  {
    return handleException(paramThrowable, this.mReportingInteractionMode);
  }
  
  ErrorReporter.ReportsSenderWorker handleException(Throwable paramThrowable, ReportingInteractionMode paramReportingInteractionMode)
  {
    boolean bool;
    if (paramReportingInteractionMode == null)
    {
      paramReportingInteractionMode = this.mReportingInteractionMode;
      bool = false;
    }
    for (;;)
    {
      if (paramThrowable == null) {
        paramThrowable = new Exception("Report requested by developer");
      }
      if ((paramReportingInteractionMode == ReportingInteractionMode.TOAST) || ((paramReportingInteractionMode == ReportingInteractionMode.NOTIFICATION) && (ACRA.getConfig().resToastText() != 0))) {
        new ErrorReporter.1(this).start();
      }
      retrieveCrashData(mContext);
      StringWriter localStringWriter = new StringWriter();
      PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
      paramThrowable.printStackTrace(localPrintWriter);
      Log.getStackTraceString(paramThrowable);
      Throwable localThrowable = paramThrowable.getCause();
      for (;;)
      {
        if (localThrowable != null)
        {
          localThrowable.printStackTrace(localPrintWriter);
          localThrowable = localThrowable.getCause();
          continue;
          if ((paramReportingInteractionMode != ReportingInteractionMode.SILENT) || (this.mReportingInteractionMode == ReportingInteractionMode.SILENT)) {
            break label281;
          }
          bool = true;
          break;
        }
      }
      mCrashProperties.put(ReportField.STACK_TRACE, localStringWriter.toString());
      localPrintWriter.close();
      String str = saveCrashReportFile(null, null);
      mCrashProperties.remove(ReportField.IS_SILENT);
      mCrashProperties.remove(ReportField.USER_COMMENT);
      ErrorReporter.ReportsSenderWorker localReportsSenderWorker;
      if ((paramReportingInteractionMode == ReportingInteractionMode.SILENT) || (paramReportingInteractionMode == ReportingInteractionMode.TOAST) || (ACRA.getACRASharedPreferences().getBoolean("acra.alwaysaccept", false)))
      {
        approvePendingReports();
        localReportsSenderWorker = new ErrorReporter.ReportsSenderWorker(this, bool);
        Log.v(ACRA.LOG_TAG, "About to start ReportSenderWorker from #handleException");
        localReportsSenderWorker.start();
      }
      ReportingInteractionMode localReportingInteractionMode;
      do
      {
        return localReportsSenderWorker;
        localReportingInteractionMode = ReportingInteractionMode.NOTIFICATION;
        localReportsSenderWorker = null;
      } while (paramReportingInteractionMode != localReportingInteractionMode);
      notifySendReport(str);
      return null;
      label281:
      bool = false;
    }
  }
  
  public Thread handleSilentException(Throwable paramThrowable)
  {
    if (enabled)
    {
      mCrashProperties.put(ReportField.IS_SILENT, "true");
      return handleException(paramThrowable, ReportingInteractionMode.SILENT);
    }
    Log.d(ACRA.LOG_TAG, "ACRA is disabled. Silent report not sent.");
    return null;
  }
  
  public void init(Context paramContext)
  {
    if (this.mDfltExceptionHandler == null)
    {
      this.mDfltExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
      enabled = true;
      Thread.setDefaultUncaughtExceptionHandler(this);
      mContext = paramContext;
      this.mInitialConfiguration = ConfigurationInspector.toString(mContext.getResources().getConfiguration());
    }
  }
  
  void notifySendReport(String paramString)
  {
    NotificationManager localNotificationManager = (NotificationManager)mContext.getSystemService("notification");
    ReportsCrashes localReportsCrashes = ACRA.getConfig();
    Notification localNotification = new Notification(localReportsCrashes.resNotifIcon(), mContext.getText(localReportsCrashes.resNotifTickerText()), System.currentTimeMillis());
    CharSequence localCharSequence1 = mContext.getText(localReportsCrashes.resNotifTitle());
    CharSequence localCharSequence2 = mContext.getText(localReportsCrashes.resNotifText());
    Intent localIntent = new Intent(mContext, CrashReportDialog.class);
    Log.d(ACRA.LOG_TAG, "Creating Notification for " + paramString);
    localIntent.putExtra("REPORT_FILE_NAME", paramString);
    PendingIntent localPendingIntent = PendingIntent.getActivity(mContext, 0, localIntent, 134217728);
    localNotification.setLatestEventInfo(mContext, localCharSequence1, localCharSequence2, localPendingIntent);
    localNotificationManager.cancelAll();
    localNotificationManager.notify(666, localNotification);
  }
  
  public String putCustomData(String paramString1, String paramString2)
  {
    return (String)this.mCustomParameters.put(paramString1, paramString2);
  }
  
  public void removeAllReportSenders()
  {
    mReportSenders.clear();
  }
  
  public String removeCustomData(String paramString)
  {
    return (String)this.mCustomParameters.remove(paramString);
  }
  
  public void removeReportSender(ReportSender paramReportSender)
  {
    mReportSenders.remove(paramReportSender);
  }
  
  public void removeReportSenders(Class<?> paramClass)
  {
    if (ReportSender.class.isAssignableFrom(paramClass))
    {
      Iterator localIterator = mReportSenders.iterator();
      while (localIterator.hasNext())
      {
        ReportSender localReportSender = (ReportSender)localIterator.next();
        if (paramClass.isInstance(localReportSender)) {
          mReportSenders.remove(localReportSender);
        }
      }
    }
  }
  
  public void setAppStartDate(Time paramTime)
  {
    mCrashProperties.put(ReportField.USER_APP_START_DATE, paramTime.format3339(false));
  }
  
  public void setReportSender(ReportSender paramReportSender)
  {
    removeAllReportSenders();
    addReportSender(paramReportSender);
  }
  
  void setReportingInteractionMode(ReportingInteractionMode paramReportingInteractionMode)
  {
    this.mReportingInteractionMode = paramReportingInteractionMode;
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    Log.e(ACRA.LOG_TAG, "ACRA caught a " + paramThrowable.getClass().getSimpleName() + " exception for " + mContext.getPackageName() + ". Building report.");
    mCrashProperties.remove(ReportField.IS_SILENT);
    ErrorReporter.ReportsSenderWorker localReportsSenderWorker = handleException(paramThrowable);
    if (this.mReportingInteractionMode == ReportingInteractionMode.TOAST) {}
    try
    {
      Thread.sleep(4000L);
      if (localReportsSenderWorker != null) {
        while (localReportsSenderWorker.isAlive()) {
          try
          {
            Thread.sleep(100L);
          }
          catch (InterruptedException localInterruptedException1)
          {
            Log.e(ACRA.LOG_TAG, "Error : ", localInterruptedException1);
          }
        }
      }
    }
    catch (InterruptedException localInterruptedException2)
    {
      for (;;)
      {
        Log.e(ACRA.LOG_TAG, "Error : ", localInterruptedException2);
      }
      if ((this.mReportingInteractionMode == ReportingInteractionMode.SILENT) || ((this.mReportingInteractionMode == ReportingInteractionMode.TOAST) && (ACRA.getConfig().forceCloseDialogAfterToast())))
      {
        this.mDfltExceptionHandler.uncaughtException(paramThread, paramThrowable);
        return;
      }
      try
      {
        CharSequence localCharSequence = mContext.getPackageManager().getApplicationInfo(mContext.getPackageName(), 0).loadLabel(mContext.getPackageManager());
        Log.e(ACRA.LOG_TAG, localCharSequence + " fatal error : " + paramThrowable.getMessage(), paramThrowable);
        return;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        Log.e(ACRA.LOG_TAG, "Error : ", localNameNotFoundException);
        return;
      }
      finally
      {
        Process.killProcess(Process.myPid());
        System.exit(10);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.acra.ErrorReporter
 * JD-Core Version:    0.7.0.1
 */