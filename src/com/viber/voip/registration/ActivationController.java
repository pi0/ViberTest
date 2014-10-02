package com.viber.voip.registration;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.telephony.TelephonyManager;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.secure.SecureCallsController;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.ak;
import com.viber.voip.bd;
import com.viber.voip.contacts.c.d.b;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;
import com.viber.voip.phone.v;
import com.viber.voip.settings.ui.av;
import com.viber.voip.settings.ui.ax;
import com.viber.voip.settings.ui.bb;
import com.viber.voip.settings.ui.bf;
import com.viber.voip.settings.ui.bj;
import com.viber.voip.user.UserData;
import com.viber.voip.util.am;
import com.viber.voip.util.fz;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class ActivationController
{
  public static final int ACTIVATION_STEP_ACTIVATION = 1;
  public static final int ACTIVATION_STEP_CHECK_USER_DATA = 6;
  public static final int ACTIVATION_STEP_COMPLETE = 8;
  public static final int ACTIVATION_STEP_COMPLETE_FAST_REG = 3;
  public static final int ACTIVATION_STEP_COMPLETE_USUAL_REG = 2;
  public static final int ACTIVATION_STEP_NEW_USER = 5;
  public static final int ACTIVATION_STEP_REGISTRATION = 0;
  public static final int ACTIVATION_STEP_SET_USER_DATA = 7;
  public static final int ACTIVATION_STEP_SPLASH = 4;
  public static final int CONNECTION_WAIT_TIMEOUT = 10000;
  public static final int CONTROLLER_VERSION = 1;
  public static final String EXTRA_ACTIVATION_CODE = "activation_code";
  public static final String INTENT_PREF_FRESH_START = "fresh_start";
  public static final String LOG_TAG = "ActivationController";
  public static final String PREF_ACTIVATION_VERSION = "activation_ver";
  private String acticationCode;
  private final ab activationManager;
  private ViberApplication app;
  private r callbacks;
  private final bc deactivationManager;
  private Handler handler;
  private PhoneControllerDelegateAdapter mNetworkListener = new h(this);
  private Set<p> mStateChangeListeners = new HashSet();
  private final cj registrationManager;
  private Runnable waitServiceConnectedTimeout = new g(this);
  
  public ActivationController(ViberApplication paramViberApplication)
  {
    this.app = paramViberApplication;
    this.handler = dc.a(dk.g);
    this.activationManager = new ab(com.viber.voip.bc.b().a);
    this.registrationManager = new cj(com.viber.voip.bc.b().b);
    this.deactivationManager = new bc(com.viber.voip.bc.b().d);
  }
  
  private void checkIsNeedToSetUserData()
  {
    if (getControllerVersion() != 1)
    {
      log("checkIsNeedToSetUserData not need to check user info - this is just upgrade from old version");
      setStep(8, true);
      return;
    }
    this.app.getPhoneController(false).addInitializedListener(new e(this));
  }
  
  private void clearShowCarlosMessagesPref()
  {
    if (dj.d())
    {
      ViberApplication.preferences().a("show_carlos_messages");
      fz.a().b();
    }
  }
  
  public static void deActivate(Context paramContext, boolean paramBoolean)
  {
    Intent localIntent = new Intent(paramContext, DeActivationActivity.class);
    localIntent.putExtra("skip_dialog", paramBoolean);
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }
  
  private int getDefaultStep()
  {
    return 4;
  }
  
  private static void log(String paramString) {}
  
  private void notifyActivationStateListeners(int paramInt)
  {
    synchronized (this.mStateChangeListeners)
    {
      HashSet localHashSet = new HashSet(this.mStateChangeListeners);
      Iterator localIterator = localHashSet.iterator();
      if (localIterator.hasNext()) {
        ((p)localIterator.next()).a(paramInt);
      }
    }
  }
  
  private void notifyCallbacks(df paramdf)
  {
    dc.a(dk.a).post(new m(this, paramdf));
  }
  
  private void restoreDefaultValues(Activity paramActivity)
  {
    com.viber.voip.settings.l locall = ViberApplication.preferences();
    ax.a(locall);
    bb.a(locall);
    bj.a(paramActivity, locall);
    bf.a(locall);
    com.viber.voip.settings.ui.a.a(locall);
    av.b();
  }
  
  private void setSimSerial(String paramString)
  {
    if (paramString == null) {
      paramString = "";
    }
    ViberApplication.preferences().a("activated_sim_serial", paramString);
  }
  
  private void showActivationScreen()
  {
    Intent localIntent = new Intent("com.viber.voip.action.ACTIVATION");
    localIntent.addFlags(268435456);
    if (this.acticationCode != null)
    {
      localIntent.putExtra("activation_code", this.acticationCode);
      this.acticationCode = null;
    }
    this.app.startActivity(localIntent);
  }
  
  private void showSplashScreen()
  {
    clearAllRegValues();
    Intent localIntent = new Intent("com.viber.voip.action.SPLASH");
    if (!ViberApplication.isTablet()) {
      localIntent.setFlags(1073741824);
    }
    localIntent.addFlags(268435456);
    this.app.startActivity(localIntent);
  }
  
  private void startActivity(String paramString)
  {
    this.app.startActivity(new Intent(paramString).addFlags(268435456));
  }
  
  void checkNetworkConnection()
  {
    if (!am.c)
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)this.app.getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo == null) {
        throw new com.viber.voip.d.a("Active network is not found");
      }
      if (!localNetworkInfo.isConnected()) {
        throw new com.viber.voip.d.a("Active network is not connected");
      }
    }
  }
  
  public void clearAllRegValues()
  {
    ViberApplication.getInstance().getRegistrationValues().h();
  }
  
  public void clearState()
  {
    setStep(getDefaultStep(), false);
  }
  
  public void deActivateDone(Activity paramActivity)
  {
    clearState();
    setSimSerial("");
    ViberApplication localViberApplication = (ViberApplication)this.app.getApplicationContext();
    localViberApplication.setActivated(false);
    localViberApplication.getContactManager().f();
    clearAllRegValues();
    clearShowCarlosMessagesPref();
    setShouldDeactivate(false);
    fz.a().j();
    ViberApplication.preferences().a("PREF_MARKET_PRODUCTS_SYNCED", false);
    ViberApplication.preferences().a("VIBER_OUT_ENABLED", false);
    ViberApplication.preferences().a(com.viber.voip.settings.j.R(), com.viber.voip.settings.j.X());
    com.viber.service.contacts.sync.a.a().e();
    restoreDefaultValues(paramActivity);
    localViberApplication.getPhoneController(false).getSecureCallsController().handleClearSecureCallStorage();
    com.viber.voip.rakuten.l.a().m();
    com.viber.voip.j.a.a().a(0, true);
    bk.a();
    dj.a(ViberApplication.isTablet());
    UserData.clear();
    localViberApplication.getPhoneApp().a().f();
    ViberApplication.getInstance().getFacebookManager().a();
    localViberApplication.getContactManager().f();
    localViberApplication.getRecentCallsManager().a(new j(this, localViberApplication, paramActivity));
  }
  
  String getActicationCode()
  {
    return this.acticationCode;
  }
  
  ab getActivationManager()
  {
    return this.activationManager;
  }
  
  public String getAlphaCountryCode()
  {
    return ViberApplication.getInstance().getRegistrationValues().c();
  }
  
  int getControllerVersion()
  {
    return ViberApplication.preferences().b("activation_ver", 0);
  }
  
  public String getCountryCode()
  {
    return ViberApplication.getInstance().getRegistrationValues().a();
  }
  
  public int getCountryCodeInt()
  {
    return ViberApplication.getInstance().getRegistrationValues().b();
  }
  
  bc getDeActivationManager()
  {
    return this.deactivationManager;
  }
  
  public String getDeviceKey()
  {
    return dj.b();
  }
  
  public String getKeyChainDeviceKey()
  {
    if (dj.d()) {}
    for (dl localdl = dl.d;; localdl = dl.a) {
      return dj.a(localdl);
    }
  }
  
  public String getKeyChainHardwareKey()
  {
    return dj.a(dl.c);
  }
  
  public String getKeyChainUDID()
  {
    if (dj.d()) {}
    for (dl localdl = dl.e;; localdl = dl.b) {
      return dj.a(localdl);
    }
  }
  
  public String getRegNumber()
  {
    return ViberApplication.getInstance().getRegistrationValues().d();
  }
  
  public String getRegNumberCanonized()
  {
    return ViberApplication.getInstance().getRegistrationValues().e();
  }
  
  cj getRegistrationManager()
  {
    return this.registrationManager;
  }
  
  public int getStep()
  {
    return ViberApplication.preferences().b("activation_step", getDefaultStep());
  }
  
  public boolean isActivationCompleted()
  {
    return getStep() == 8;
  }
  
  public void registerActivationStateListener(p paramp)
  {
    synchronized (this.mStateChangeListeners)
    {
      this.mStateChangeListeners.add(paramp);
      return;
    }
  }
  
  public void removeRegistrationCallback()
  {
    this.callbacks = null;
  }
  
  public void resumeActivation()
  {
    int i = getStep();
    if ((i > 6) && (!ViberApplication.isActivated()))
    {
      clearState();
      i = getStep();
    }
    switch (i)
    {
    default: 
      return;
    case 4: 
      log("resumeActivation ACTIVATION_STEP_SPLASH");
      showSplashScreen();
      return;
    case 0: 
      log("resumeActivation ACTIVATION_STEP_REGISTRATION");
      setControllerVersion(1);
      new q(this, null).execute(new Void[0]);
      startActivity("com.viber.voip.action.REGISTER");
      setShouldDeactivate(false);
      fz.a().j();
      return;
    case 1: 
      log("resumeActivation ACTIVATION_STEP_ACTIVATION");
      this.app.getContactManager().f();
      if (this.app.getMessagesManager() != null) {
        this.app.getMessagesManager().c().a(true, null);
      }
      showActivationScreen();
      return;
    case 3: 
      log("resumeActivation ACTIVATION_STEP_COMPLETE_FAST_REG");
    case 2: 
      log("resumeActivation ACTIVATION_STEP_COMPLETE_USUAL_REG");
      ViberApplication.preferences().a("need_recover_groups", true);
      setActivatedSimSerial();
      this.app.setActivated(true);
      this.app.getContactManager().b();
      setStep(6, true);
      return;
    case 5: 
      log("resumeActivation ACTIVATION_STEP_CHECK_USER_INFO");
      com.viber.voip.a.bc.a().a(ak.a);
      startActivity("com.viber.voip.action.NEW_USER");
      return;
    case 6: 
      log("resumeActivation ACTIVATION_STEP_CHECK_USER_DATA");
      UserData.setNeedSyncUserInfo(false);
      checkIsNeedToSetUserData();
      return;
    case 7: 
      log("resumeActivation ACTIVATION_STEP_SET_USER_DATA");
      startActivity("com.viber.voip.action.ENTER_DETAILS_SCREEN");
      return;
    }
    log("resumeActivation ACTIVATION_STEP_COMPLETE");
    startActivity("com.viber.voip.action.REGISTER");
    Intent localIntent = new Intent("com.viber.voip.action.DEFAULT");
    localIntent.putExtra("fresh_start", true);
    localIntent.addFlags(268435456);
    this.app.startActivity(localIntent);
  }
  
  void setActicationCode(String paramString)
  {
    this.acticationCode = paramString;
  }
  
  void setActivatedSimSerial()
  {
    setSimSerial(((TelephonyManager)this.app.getSystemService("phone")).getSimSerialNumber());
  }
  
  public void setControllerVersion(int paramInt)
  {
    log("setControllerVersion " + paramInt);
    ViberApplication.preferences().a("activation_ver", paramInt);
  }
  
  public void setDeviceKey(String paramString)
  {
    log("setDeviceKey:" + paramString);
    dj.a(paramString);
  }
  
  public void setKeyChainDeviceKey(String paramString)
  {
    if (dj.d()) {}
    for (dl localdl = dl.d;; localdl = dl.a)
    {
      dj.a(localdl, paramString);
      return;
    }
  }
  
  public void setKeyChainHardwareKey(String paramString)
  {
    dj.a(dl.c, paramString);
  }
  
  public void setKeyChainUDID(String paramString)
  {
    if (dj.d()) {}
    for (dl localdl = dl.e;; localdl = dl.b)
    {
      dj.a(localdl, paramString);
      return;
    }
  }
  
  public void setShouldDeactivate(boolean paramBoolean)
  {
    log("setShouldDeactivate() " + paramBoolean);
    ViberApplication.preferences().a("should_deactivate", paramBoolean);
  }
  
  public void setStep(int paramInt, boolean paramBoolean)
  {
    log("setStep " + paramInt);
    ViberApplication.preferences().a("activation_step", paramInt);
    notifyActivationStateListeners(paramInt);
    if (paramBoolean) {
      resumeActivation();
    }
  }
  
  public void startRegistration(String paramString1, String paramString2, String paramString3, String paramString4, r paramr)
  {
    this.callbacks = paramr;
    dc.a(dk.d).post(new s(this, paramString1, paramString2, paramString3, paramString4, null));
  }
  
  public void storeRegNumberCanonized(String paramString)
  {
    ViberApplication.getInstance().getRegistrationValues().a(paramString);
  }
  
  public void storeRegValues(String paramString1, String paramString2, String paramString3)
  {
    ViberApplication.getInstance().getRegistrationValues().a(paramString1, paramString2, paramString3);
  }
  
  public void unregisterActivationStateListener(p paramp)
  {
    synchronized (this.mStateChangeListeners)
    {
      this.mStateChangeListeners.remove(paramp);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.ActivationController
 * JD-Core Version:    0.7.0.1
 */