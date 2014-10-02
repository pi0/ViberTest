package com.viber.voip.settings.ui;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceScreen;
import android.preference.RingtonePreference;
import android.support.v4.app.FragmentActivity;
import com.viber.voip.a.a;
import com.viber.voip.a.an;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.settings.m;
import com.viber.voip.util.at;
import com.viber.voip.util.gj;

public class bf
  extends bv
  implements Preference.OnPreferenceClickListener, m
{
  private String b;
  private String c;
  private int g = 0;
  private MediaPlayer h;
  
  public bf()
  {
    super(2131034122);
  }
  
  private void a(RingtonePreference paramRingtonePreference)
  {
    if (this.g > 3)
    {
      this.f.a(j.N(), j.O());
      this.g = 0;
      return;
    }
    paramRingtonePreference.setSummary(null);
    if (j.av().equals(paramRingtonePreference.getKey()))
    {
      if (this.b != null) {}
      for (String str2 = this.b;; str2 = "content://settings/system/ringtone")
      {
        this.b = null;
        this.f.a(j.av(), str2);
        this.g = 0;
        return;
      }
    }
    if (this.c != null) {}
    for (String str1 = this.c;; str1 = "content://settings/system/notification_sound")
    {
      this.c = null;
      this.f.a(j.aw(), str1);
      break;
    }
  }
  
  private void a(RingtonePreference paramRingtonePreference, String paramString)
  {
    a("updateRingtoneSummary preference:" + paramRingtonePreference + ",ringtoneString:" + paramString);
    if (paramString != null) {
      try
      {
        Uri localUri = Uri.parse(paramString);
        a(getActivity(), localUri);
        Ringtone localRingtone = RingtoneManager.getRingtone(getActivity(), localUri);
        if ((localRingtone != null) && (!gj.c(localUri.toString()))) {
          paramRingtonePreference.setSummary(localRingtone.getTitle(getActivity()));
        }
        while (j.av().equals(paramRingtonePreference.getKey()))
        {
          this.b = paramString;
          return;
          paramRingtonePreference.setSummary(getString(2131494193));
        }
        this.c = null;
      }
      catch (Exception localException)
      {
        if (gj.c(paramString))
        {
          paramRingtonePreference.setSummary(getString(2131494193));
          return;
          this.c = paramString;
          return;
        }
        a("updateRingtoneSummary Exception:" + localException);
        if (this.g == 0) {
          at.a(getActivity(), null, getActivity().getString(2131494312), null);
        }
        this.g = (1 + this.g);
        a(paramRingtonePreference);
        return;
      }
    }
    this.b = null;
    a(paramRingtonePreference);
  }
  
  public static void a(l paraml)
  {
    paraml.a(j.k(), j.l());
    paraml.a(j.m(), j.n());
    paraml.a(j.q(), j.r());
    paraml.a(j.i(), j.j());
    paraml.a(j.o(), j.p());
    paraml.a(j.N(), j.O());
    paraml.a(j.at(), j.au());
    paraml.a(j.av(), "content://settings/system/ringtone");
    paraml.a(j.aw(), "content://settings/system/notification_sound");
    paraml.a(j.P(), j.Q());
    paraml.a(j.aB(), j.aC());
  }
  
  private void b()
  {
    if (this.h != null)
    {
      this.h.reset();
      this.h.release();
      this.h = null;
    }
  }
  
  private void e()
  {
    boolean bool = this.f.b(j.q(), j.r());
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)this.e.findPreference(j.o());
    if (localCheckBoxPreference != null) {
      localCheckBoxPreference.setEnabled(bool);
    }
  }
  
  private void f()
  {
    a((RingtonePreference)this.e.findPreference(j.av()), this.f.b(j.av(), null));
    a((RingtonePreference)this.e.findPreference(j.aw()), this.f.b(j.aw(), null));
  }
  
  public void a() {}
  
  public void a(Context paramContext, Uri paramUri)
  {
    if (paramUri.toString().startsWith("content://settings/system/")) {
      return;
    }
    if (((paramUri.getPath() != null) && (paramUri.getPath().endsWith(".mp4"))) || (paramUri.getPath().endsWith(".avi")) || (paramUri.getPath().endsWith(".mkv")) || (paramUri.getPath().endsWith(".flv"))) {
      throw new IllegalArgumentException("Illegal RingtoneUri:" + paramUri);
    }
    b();
    this.h = new MediaPlayer();
    this.h.setDataSource(paramContext, paramUri);
    this.h.setAudioStreamType(-1);
    this.h.prepare();
    b();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (Build.VERSION.SDK_INT < 16) {
      this.e.removePreference(a(j.P()));
    }
    this.e.removePreference(a(j.aB()));
  }
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    super.onPreferenceClick(paramPreference);
    return true;
  }
  
  public void onSharedPreferenceChanged(l paraml, String paramString)
  {
    super.onSharedPreferenceChanged(paraml, paramString);
    if (paramString.equals(j.k())) {
      a(a.i.e(true), a.i.e(false), j.l(), paramString);
    }
    do
    {
      return;
      if (paramString.equals(j.m()))
      {
        a(a.i.a(true), a.i.a(false), j.n(), paramString);
        return;
      }
      if (paramString.equals(j.i()))
      {
        a(a.i.f(true), a.i.f(false), j.j(), paramString);
        return;
      }
      if (paramString.equals(j.q()))
      {
        a(a.i.f(true), a.i.f(false), j.r(), paramString);
        e();
        return;
      }
      if (paramString.equals(j.o()))
      {
        a(a.i.g(true), a.i.g(false), j.p(), paramString);
        return;
      }
      if (paramString.equals(j.N()))
      {
        a(a.i.c(true), a.i.c(false), j.O(), paramString);
        return;
      }
      if (paramString.equals(j.P()))
      {
        a(a.i.d(true), a.i.d(false), j.Q(), paramString);
        return;
      }
      if (paramString.equals(j.av()))
      {
        a((RingtonePreference)this.e.findPreference(paramString), this.f.b(paramString, "content://settings/system/ringtone"));
        return;
      }
      if (paramString.equals(j.aw()))
      {
        a((RingtonePreference)this.e.findPreference(paramString), this.f.b(paramString, "content://settings/system/notification_sound"));
        return;
      }
    } while (!paramString.equals(j.aB()));
    a(a.i.p(true), a.i.p(false), j.aC(), paramString);
  }
  
  public void onStart()
  {
    super.onResume();
    e();
    f();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.bf
 * JD-Core Version:    0.7.0.1
 */