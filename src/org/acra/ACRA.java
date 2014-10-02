package org.acra;

import android.app.Application;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.pm.PackageManager;
import android.preference.PreferenceManager;
import android.text.format.Time;
import android.util.Log;
import org.acra.annotation.ReportsCrashes;
import org.acra.sender.EmailIntentSender;
import org.acra.sender.GoogleFormSender;
import org.acra.sender.HttpPostSender;

public class ACRA
{
  public static final ReportField[] DEFAULT_MAIL_REPORT_FIELDS;
  public static final ReportField[] DEFAULT_REPORT_FIELDS;
  public static final boolean DEV_LOGGING = false;
  public static final String LOG_TAG = ACRA.class.getSimpleName();
  static final int NOTIF_CRASH_ID = 666;
  public static final String NULL_VALUE = "ACRA-NULL-STRING";
  public static final String PREF_ALWAYS_ACCEPT = "acra.alwaysaccept";
  public static final String PREF_DISABLE_ACRA = "acra.disable";
  public static final String PREF_ENABLE_ACRA = "acra.enable";
  public static final String PREF_ENABLE_DEVICE_ID = "acra.deviceid.enable";
  public static final String PREF_ENABLE_SYSTEM_LOGS = "acra.syslog.enable";
  public static final String PREF_USER_EMAIL_ADDRESS = "acra.user.email";
  static final String RES_DIALOG_COMMENT_PROMPT = "RES_DIALOG_COMMENT_PROMPT";
  static final String RES_DIALOG_ICON = "RES_DIALOG_ICON";
  static final String RES_DIALOG_OK_TOAST = "RES_DIALOG_OK_TOAST";
  static final String RES_DIALOG_TEXT = "RES_DIALOG_TEXT";
  static final String RES_DIALOG_TITLE = "RES_DIALOG_TITLE";
  static final String RES_NOTIF_ICON = "RES_NOTIF_ICON";
  static final String RES_NOTIF_TEXT = "RES_NOTIF_TEXT";
  static final String RES_NOTIF_TICKER_TEXT = "RES_NOTIF_TICKER_TEXT";
  static final String RES_NOTIF_TITLE = "RES_NOTIF_TITLE";
  static final String RES_TOAST_TEXT = "RES_TOAST_TEXT";
  private static Time mAppStartDate;
  private static Application mApplication;
  private static SharedPreferences.OnSharedPreferenceChangeListener mPrefListener;
  private static ReportsCrashes mReportsCrashes;
  
  static
  {
    ReportField[] arrayOfReportField1 = new ReportField[7];
    arrayOfReportField1[0] = ReportField.USER_COMMENT;
    arrayOfReportField1[1] = ReportField.ANDROID_VERSION;
    arrayOfReportField1[2] = ReportField.APP_VERSION_NAME;
    arrayOfReportField1[3] = ReportField.BRAND;
    arrayOfReportField1[4] = ReportField.PHONE_MODEL;
    arrayOfReportField1[5] = ReportField.CUSTOM_DATA;
    arrayOfReportField1[6] = ReportField.STACK_TRACE;
    DEFAULT_MAIL_REPORT_FIELDS = arrayOfReportField1;
    ReportField[] arrayOfReportField2 = new ReportField[34];
    arrayOfReportField2[0] = ReportField.REPORT_ID;
    arrayOfReportField2[1] = ReportField.APP_VERSION_CODE;
    arrayOfReportField2[2] = ReportField.APP_VERSION_NAME;
    arrayOfReportField2[3] = ReportField.PACKAGE_NAME;
    arrayOfReportField2[4] = ReportField.FILE_PATH;
    arrayOfReportField2[5] = ReportField.PHONE_MODEL;
    arrayOfReportField2[6] = ReportField.BRAND;
    arrayOfReportField2[7] = ReportField.PRODUCT;
    arrayOfReportField2[8] = ReportField.ANDROID_VERSION;
    arrayOfReportField2[9] = ReportField.BUILD;
    arrayOfReportField2[10] = ReportField.TOTAL_MEM_SIZE;
    arrayOfReportField2[11] = ReportField.AVAILABLE_MEM_SIZE;
    arrayOfReportField2[12] = ReportField.CUSTOM_DATA;
    arrayOfReportField2[13] = ReportField.IS_SILENT;
    arrayOfReportField2[14] = ReportField.STACK_TRACE;
    arrayOfReportField2[15] = ReportField.INITIAL_CONFIGURATION;
    arrayOfReportField2[16] = ReportField.CRASH_CONFIGURATION;
    arrayOfReportField2[17] = ReportField.DISPLAY;
    arrayOfReportField2[18] = ReportField.USER_COMMENT;
    arrayOfReportField2[19] = ReportField.USER_EMAIL;
    arrayOfReportField2[20] = ReportField.USER_APP_START_DATE;
    arrayOfReportField2[21] = ReportField.USER_CRASH_DATE;
    arrayOfReportField2[22] = ReportField.DUMPSYS_MEMINFO;
    arrayOfReportField2[23] = ReportField.DROPBOX;
    arrayOfReportField2[24] = ReportField.LOGCAT;
    arrayOfReportField2[25] = ReportField.EVENTSLOG;
    arrayOfReportField2[26] = ReportField.RADIOLOG;
    arrayOfReportField2[27] = ReportField.DEVICE_ID;
    arrayOfReportField2[28] = ReportField.INSTALLATION_ID;
    arrayOfReportField2[29] = ReportField.DEVICE_FEATURES;
    arrayOfReportField2[30] = ReportField.ENVIRONMENT;
    arrayOfReportField2[31] = ReportField.SHARED_PREFERENCES;
    arrayOfReportField2[32] = ReportField.SETTINGS_SYSTEM;
    arrayOfReportField2[33] = ReportField.SETTINGS_SECURE;
    DEFAULT_REPORT_FIELDS = arrayOfReportField2;
  }
  
  static void checkCrashResources()
  {
    switch (ACRA.2.$SwitchMap$org$acra$ReportingInteractionMode[mReportsCrashes.mode().ordinal()])
    {
    }
    do
    {
      do
      {
        return;
      } while (mReportsCrashes.resToastText() != 0);
      throw new ACRAConfigurationException("TOAST mode: you have to define the resToastText parameter in your application @ReportsCrashes() annotation.");
    } while ((mReportsCrashes.resNotifTickerText() != 0) && (mReportsCrashes.resNotifTitle() != 0) && (mReportsCrashes.resNotifText() != 0) && (mReportsCrashes.resDialogText() != 0));
    throw new ACRAConfigurationException("NOTIFICATION mode: you have to define at least the resNotifTickerText, resNotifTitle, resNotifText, resDialogText parameters in your application @ReportsCrashes() annotation.");
  }
  
  public static SharedPreferences getACRASharedPreferences()
  {
    if (!"".equals(mReportsCrashes.sharedPreferencesName()))
    {
      Log.d(LOG_TAG, "Retrieve SharedPreferences " + mReportsCrashes.sharedPreferencesName());
      return mApplication.getSharedPreferences(mReportsCrashes.sharedPreferencesName(), mReportsCrashes.sharedPreferencesMode());
    }
    Log.d(LOG_TAG, "Retrieve application default SharedPreferences.");
    return PreferenceManager.getDefaultSharedPreferences(mApplication);
  }
  
  public static ReportsCrashes getConfig()
  {
    return mReportsCrashes;
  }
  
  public static void init(Application paramApplication)
  {
    mAppStartDate = new Time();
    mAppStartDate.setToNow();
    mApplication = paramApplication;
    mReportsCrashes = (ReportsCrashes)mApplication.getClass().getAnnotation(ReportsCrashes.class);
    SharedPreferences localSharedPreferences;
    if (mReportsCrashes != null)
    {
      localSharedPreferences = getACRASharedPreferences();
      Log.d(LOG_TAG, "Set OnSharedPreferenceChangeListener.");
      mPrefListener = new ACRA.1();
    }
    for (;;)
    {
      try
      {
        if (localSharedPreferences.getBoolean("acra.enable", true)) {
          continue;
        }
        bool2 = true;
        boolean bool3 = localSharedPreferences.getBoolean("acra.disable", bool2);
        bool1 = bool3;
      }
      catch (Exception localException)
      {
        boolean bool2;
        boolean bool1 = false;
        continue;
        try
        {
          initAcra();
        }
        catch (ACRAConfigurationException localACRAConfigurationException)
        {
          Log.w(LOG_TAG, "Error : ", localACRAConfigurationException);
        }
        continue;
      }
      if (!bool1) {
        continue;
      }
      Log.d(LOG_TAG, "ACRA is disabled for " + mApplication.getPackageName() + ".");
      localSharedPreferences.registerOnSharedPreferenceChangeListener(mPrefListener);
      return;
      bool2 = false;
    }
  }
  
  private static void initAcra()
  {
    checkCrashResources();
    Log.d(LOG_TAG, "ACRA is enabled for " + mApplication.getPackageName() + ", intializing...");
    ErrorReporter localErrorReporter = ErrorReporter.getInstance();
    localErrorReporter.setReportingInteractionMode(mReportsCrashes.mode());
    localErrorReporter.setAppStartDate(mAppStartDate);
    if (!"".equals(mReportsCrashes.mailTo()))
    {
      Log.w(LOG_TAG, mApplication.getPackageName() + " reports will be sent by email (if accepted by user).");
      localErrorReporter.addReportSender(new EmailIntentSender(mApplication));
    }
    for (;;)
    {
      localErrorReporter.init(mApplication.getApplicationContext());
      localErrorReporter.checkReportsOnApplicationStart();
      return;
      PackageManager localPackageManager = mApplication.getPackageManager();
      if (localPackageManager != null) {
        if (localPackageManager.checkPermission("android.permission.INTERNET", mApplication.getPackageName()) == 0)
        {
          if ((mReportsCrashes.formUri() != null) && (!"".equals(mReportsCrashes.formUri()))) {
            localErrorReporter.addReportSender(new HttpPostSender(mReportsCrashes.formUri(), null));
          } else if ((mReportsCrashes.formKey() != null) && (!"".equals(mReportsCrashes.formKey().trim()))) {
            localErrorReporter.addReportSender(new GoogleFormSender(mReportsCrashes.formKey()));
          }
        }
        else {
          Log.e(LOG_TAG, mApplication.getPackageName() + " should be granted permission " + "android.permission.INTERNET" + " if you want your crash reports to be sent. If you don't want to add this permission to your application you can also enable sending reports by email. If this is your will then provide your email address in @ReportsCrashes(mailTo=\"your.account@domain.com\"");
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.acra.ACRA
 * JD-Core Version:    0.7.0.1
 */