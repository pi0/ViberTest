package com.viber.voip.settings.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceScreen;
import android.support.v4.app.FragmentActivity;
import android.text.Html;
import com.viber.jni.DeviceFlags;
import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.provider.messages.b.d;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.an;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.registration.dj;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.settings.m;
import com.viber.voip.sms.s;
import com.viber.voip.sound.AbstractSoundService;
import com.viber.voip.util.fe;
import com.viber.voip.util.ft;
import com.viber.voip.widget.LongSummaryCheckbBoxPreference;
import org.webrtc.videoengine.ViEVideoSupport;

public class a
  extends bv
  implements Preference.OnPreferenceClickListener, m
{
  private com.viber.voip.messages.i b;
  
  public a()
  {
    super(2131034117);
  }
  
  public static void a(l paraml)
  {
    paraml.a(j.d(), j.e());
    s.a(j.e(), true);
    if (paraml.b(j.ao(), j.ap()) != j.ap())
    {
      PhoneControllerWrapper localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(true);
      int i = localPhoneControllerWrapper.generateSequence();
      ViberApplication.preferences().a("settings_viber_in_syncing", i);
      localPhoneControllerWrapper.handleChangeSettings(i, true, true, j.ap());
    }
  }
  
  private void b()
  {
    fe.b(getActivity()).a(780, null, d.a, null, null, null, null, new i(this), true);
  }
  
  private void e()
  {
    LongSummaryCheckbBoxPreference localLongSummaryCheckbBoxPreference = (LongSummaryCheckbBoxPreference)this.e.findPreference(j.ao());
    if (localLongSummaryCheckbBoxPreference != null) {
      localLongSummaryCheckbBoxPreference.setSummary(Html.fromHtml(getString(2131494136)));
    }
  }
  
  public void a()
  {
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)a(j.ao());
    if ((localCheckBoxPreference != null) && (localCheckBoxPreference.isChecked() != j.ap()))
    {
      localCheckBoxPreference.setChecked(j.ap());
      localCheckBoxPreference.setEnabled(false);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (dj.d())
    {
      d().removePreference(a(j.ao()));
      a(j.d()).setOnPreferenceClickListener(this);
      a(j.a()).setOnPreferenceClickListener(this);
      a(j.b()).setOnPreferenceClickListener(this);
      ((ListPreference)a("sound_settings_video")).setEnabled(ViEVideoSupport.isVideoCallSupported());
      d().removePreference(a(j.c()));
      if (s.h()) {
        break label135;
      }
      d().removePreference(a(j.d()));
    }
    for (;;)
    {
      this.b = ViberApplication.getInstance().getMessagesManager();
      return;
      a(j.ao()).setOnPreferenceClickListener(this);
      break;
      label135:
      CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)this.e.findPreference(j.d());
      if (localCheckBoxPreference != null) {
        localCheckBoxPreference.setChecked(s.b());
      }
    }
  }
  
  public void onPause()
  {
    super.onPause();
  }
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    boolean bool1 = true;
    super.onPreferenceClick(paramPreference);
    PhoneControllerWrapper localPhoneControllerWrapper;
    boolean bool3;
    PhoneControllerDelegate.ViberConnectionState localViberConnectionState;
    boolean bool4;
    boolean bool6;
    if (j.ao().equals(paramPreference.getKey()))
    {
      localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(bool1);
      bool3 = ft.b(getActivity());
      localViberConnectionState = localPhoneControllerWrapper.getServiceState();
      bool4 = ((CheckBoxPreference)paramPreference).isChecked();
      if (!bool3)
      {
        CheckBoxPreference localCheckBoxPreference2 = (CheckBoxPreference)paramPreference;
        if (!bool4)
        {
          bool6 = bool1;
          localCheckBoxPreference2.setChecked(bool6);
        }
      }
    }
    label276:
    do
    {
      do
      {
        return bool1;
        bool6 = false;
        break;
        if ((bool3) && (localViberConnectionState != PhoneControllerDelegate.ViberConnectionState.SERVICE_CONNECTED))
        {
          CheckBoxPreference localCheckBoxPreference1 = (CheckBoxPreference)paramPreference;
          if (!bool4) {}
          for (;;)
          {
            localCheckBoxPreference1.setChecked(bool1);
            return false;
            bool1 = false;
          }
        }
        int i = localPhoneControllerWrapper.generateSequence();
        ViberApplication.preferences().a("settings_viber_in_syncing", i);
        if (!bool4) {}
        for (boolean bool5 = bool1;; bool5 = false)
        {
          bool1 = localPhoneControllerWrapper.handleChangeSettings(i, bool1, bool1, bool5);
          if (!bool1) {
            break;
          }
          paramPreference.setEnabled(false);
          return bool1;
        }
        if (j.d().equals(paramPreference.getKey()))
        {
          boolean bool2 = ((CheckBoxPreference)paramPreference).isChecked();
          s.f();
          s.a(bool2);
          return bool1;
        }
        if (!j.a().equals(paramPreference.getKey())) {
          break label276;
        }
      } while ((!com.viber.voip.messages.extras.image.h.a()) || (!com.viber.voip.messages.extras.image.h.c()));
      bc.a().a(com.viber.voip.a.a.i.b.a());
      new com.viber.voip.util.f(getActivity()).execute(new Void[0]);
      return bool1;
      if (j.b().equals(paramPreference.getKey()))
      {
        bc localbc = bc.a();
        u localu = com.viber.voip.a.a.z;
        com.viber.voip.a.a.z.getClass();
        localbc.a(localu.b("401"));
        new AlertDialog.Builder(getActivity()).setTitle(2131494127).setMessage(2131494128).setNegativeButton(2131493558, new e(this)).setPositiveButton(2131493669, new c(this)).setOnCancelListener(new b(this)).create().show();
        return bool1;
      }
    } while (!j.c().equals(paramPreference.getKey()));
    ViberApplication.getInstance().getPhoneController(false).addInitializedListener(new f(this));
    return bool1;
  }
  
  public void onResume()
  {
    super.onResume();
    b();
    e();
  }
  
  public void onSharedPreferenceChanged(l paraml, String paramString)
  {
    boolean bool = true;
    super.onSharedPreferenceChanged(paraml, paramString);
    if (paramString.equals(j.ao()))
    {
      CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)this.e.findPreference(paramString);
      if ((localCheckBoxPreference != null) && (!localCheckBoxPreference.isEnabled()) && (getActivity() != null)) {
        getActivity().runOnUiThread(new g(this, localCheckBoxPreference));
      }
    }
    do
    {
      return;
      if (paramString.equals(j.d()))
      {
        a(com.viber.voip.a.a.i.h(bool), com.viber.voip.a.a.i.h(false), j.e(), paramString);
        return;
      }
    } while (!paramString.equals("sound_settings_video"));
    if (!"0".equals(paraml.b("sound_settings_video", "1")))
    {
      if (!bool) {
        break label170;
      }
      AbstractSoundService.setDeviceFlags(0x40 | DeviceFlags.getFlagsForDeviceModel());
    }
    for (;;)
    {
      ViberApplication.getInstance().getPhoneController(false).addInitializedListener(new h(this, bool));
      return;
      bool = false;
      break;
      label170:
      AbstractSoundService.setDeviceFlags(0xFFFFFFBF & DeviceFlags.getFlagsForDeviceModel());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.a
 * JD-Core Version:    0.7.0.1
 */