package com.viber.voip.settings.ui;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceScreen;
import android.support.v4.app.FragmentActivity;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.settings.SettingsController;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.an;
import com.viber.voip.messages.extras.fb.ah;
import com.viber.voip.messages.extras.fb.s;
import com.viber.voip.registration.ActivationController;
import com.viber.voip.registration.dj;
import com.viber.voip.settings.j;
import com.viber.voip.settings.m;
import com.viber.voip.util.hb;

public class bj
  extends bv
  implements Preference.OnPreferenceClickListener, m
{
  static final Intent b = new Intent("com.viber.voip.action.SETTINGS_CHANGE_CHECK");
  static volatile PendingIntent c;
  private com.viber.voip.messages.extras.twitter.l g;
  private SettingsController h = ViberApplication.getInstance().getPhoneController(false).getSettingsController();
  
  public bj()
  {
    super(2131034123);
  }
  
  public static void a(Activity paramActivity, com.viber.voip.settings.l paraml)
  {
    int i = 1;
    SettingsController localSettingsController = ViberApplication.getInstance().getPhoneController(i).getSettingsController();
    long l = paraml.b("last_online_last_changed_time", 0L);
    if (paraml.b(j.Y(), j.Z()) != j.Z())
    {
      if (System.currentTimeMillis() - l < 86400000L) {
        b(l, paramActivity);
      }
    }
    else
    {
      paraml.a(j.aa());
      if (!j.ab()) {
        break label136;
      }
    }
    for (;;)
    {
      localSettingsController.handleChangeReadNotificationsSettings(i);
      paraml.a(j.J(), j.K());
      return;
      paraml.a(j.Y());
      if (j.Z()) {}
      int m;
      for (int k = i;; m = 0)
      {
        localSettingsController.handleChangeLastOnlineSettings(k);
        break;
      }
      label136:
      int j = 0;
    }
  }
  
  private void b()
  {
    String str1 = this.g.b();
    Preference localPreference = a(j.g());
    if (str1 != null) {}
    for (String str2 = getString(2131494110, new Object[] { str1 });; str2 = getString(2131494109))
    {
      localPreference.setSummary(str2);
      return;
    }
  }
  
  private static void b(long paramLong, Activity paramActivity)
  {
    long l = paramLong + 86400000L;
    try
    {
      if (c == null) {
        c = PendingIntent.getBroadcast(paramActivity, 0, b, 134217728);
      }
      ((AlarmManager)paramActivity.getSystemService("alarm")).set(0, l, c);
      ViberApplication.preferences().a("last_online_settings_enable_alarmed", true);
      ViberApplication.log(3, "Settings", "ChangeSettingsEnable Daemon sleep current:" + System.currentTimeMillis() + ",to:" + l);
      return;
    }
    catch (Exception localException)
    {
      ViberApplication.log(3, "Settings", "ChangeSettingsEnable Daemon sleep error (!) : " + localException);
    }
  }
  
  private void e()
  {
    if (getActivity() != null) {
      getActivity().runOnUiThread(new bu(this));
    }
  }
  
  public void a()
  {
    if (getActivity() != null)
    {
      e();
      b();
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    ViberApplication.getInstance().getFacebookManager().a(getActivity(), paramInt1, paramInt2, paramIntent);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.g = ((ViberApplication)getActivity().getApplication()).getTwitterManager();
    this.g.a(new bk(this));
    if (dj.d())
    {
      d().removePreference(a(j.Y()));
      d().removePreference(a(j.aa()));
      d().removePreference(a(j.h()));
    }
    for (;;)
    {
      a(j.f()).setOnPreferenceClickListener(this);
      a(j.g()).setOnPreferenceClickListener(this);
      a(j.ax()).setOnPreferenceClickListener(this);
      a(j.ay()).setOnPreferenceClickListener(this);
      return;
      a(j.Y()).setOnPreferenceClickListener(this);
      a(j.aa()).setOnPreferenceClickListener(this);
    }
  }
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    super.onPreferenceClick(paramPreference);
    if (j.Y().equals(paramPreference.getKey()))
    {
      long l = ViberApplication.preferences().b("last_online_last_changed_time", 0L);
      boolean bool3 = ((CheckBoxPreference)paramPreference).isChecked();
      if (System.currentTimeMillis() - l < 86400000L)
      {
        new AlertDialog.Builder(getActivity()).setMessage(2131493892).setPositiveButton(2131493557, new bm(this, l)).create().show();
        CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)paramPreference;
        if (!bool3) {}
        for (boolean bool4 = true;; bool4 = false)
        {
          localCheckBoxPreference.setChecked(bool4);
          return true;
        }
      }
      SettingsController localSettingsController2 = this.h;
      int j = 0;
      if (bool3) {
        j = 1;
      }
      localSettingsController2.handleChangeLastOnlineSettings(j);
      ViberApplication.preferences().a("last_online_last_changed_time", System.currentTimeMillis());
      return true;
    }
    if (j.aa().equals(paramPreference.getKey()))
    {
      boolean bool2 = ((CheckBoxPreference)paramPreference).isChecked();
      SettingsController localSettingsController1 = this.h;
      int i = 0;
      if (bool2) {
        i = 1;
      }
      localSettingsController1.handleChangeReadNotificationsSettings(i);
      return true;
    }
    if (j.f().equals(paramPreference.getKey()))
    {
      s locals = ViberApplication.getInstance().getFacebookManager();
      if (locals.b() != ah.d)
      {
        String str = ViberApplication.getInstance().getFacebookManager().f();
        new AlertDialog.Builder(getActivity()).setMessage(getString(2131493966, new Object[] { str })).setNegativeButton(2131493558, new bp(this)).setPositiveButton(2131493967, new bn(this, locals)).show();
        return true;
      }
      locals.a(getActivity(), new bq(this), false);
      return true;
    }
    if (j.g().equals(paramPreference.getKey()))
    {
      boolean bool1 = this.g.c();
      this.g.a(getActivity(), new br(this, bool1));
      return true;
    }
    if (j.ax().equals(paramPreference.getKey())) {
      hb.a(getActivity());
    }
    for (;;)
    {
      return false;
      if (j.ay().equals(paramPreference.getKey()))
      {
        this.f.b(this);
        ActivationController.deActivate(getActivity(), false);
      }
    }
  }
  
  public void onResume()
  {
    super.onResume();
    b();
    e();
  }
  
  public void onSharedPreferenceChanged(com.viber.voip.settings.l paraml, String paramString)
  {
    super.onSharedPreferenceChanged(paraml, paramString);
    if (paramString.equals(j.Y())) {
      getActivity().runOnUiThread(new bs(this, paramString));
    }
    CheckBoxPreference localCheckBoxPreference;
    do
    {
      do
      {
        return;
        if (paramString.equals(j.J()))
        {
          a(a.i.j(true), a.i.j(false), j.K(), paramString);
          ViberApplication.exit(getActivity(), true);
          return;
        }
      } while (!paramString.equals(j.aa()));
      a(a.i.o(true), a.i.o(false), j.ab(), paramString);
      localCheckBoxPreference = (CheckBoxPreference)this.e.findPreference(paramString);
    } while ((localCheckBoxPreference == null) || (localCheckBoxPreference.isEnabled()) || (getActivity() == null));
    getActivity().runOnUiThread(new bt(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.bj
 * JD-Core Version:    0.7.0.1
 */