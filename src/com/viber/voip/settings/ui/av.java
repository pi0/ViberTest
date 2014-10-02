package com.viber.voip.settings.ui;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.support.v4.app.FragmentActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.backgrounds.a;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.settings.m;

public class av
  extends bv
  implements Preference.OnPreferenceClickListener, m
{
  public av()
  {
    super(2131034119);
  }
  
  private void a(Activity paramActivity, boolean paramBoolean)
  {
    if (paramActivity == null) {}
    do
    {
      return;
      paramActivity.runOnUiThread(new aw(this));
    } while ((!ViberApplication.isTablet()) || (!paramBoolean));
    a.a().e();
  }
  
  public static void b() {}
  
  private static void e()
  {
    a.a("", "");
    a.a().d();
  }
  
  public void a()
  {
    a(getActivity(), true);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt2 == -1) && (paramInt1 == 2004))
    {
      if (paramIntent.getExtras() == null) {
        break label107;
      }
      Uri localUri1 = Uri.parse(paramIntent.getStringExtra("portraitUri"));
      Uri localUri2 = Uri.parse(paramIntent.getStringExtra("landscapeUri"));
      ViberApplication.log(3, "Settings", "onActivityResult: action(portrait img uri): " + localUri1 + ", landscape img uri: " + localUri2);
      a.a(localUri1.toString(), localUri2.toString());
      a(getActivity(), true);
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      label107:
      if ("remove_conversation_background".equals(paramIntent.getAction())) {
        e();
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(j.aq()).setOnPreferenceClickListener(this);
  }
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    super.onPreferenceClick(paramPreference);
    if (j.aq().equals(paramPreference.getKey()))
    {
      Intent localIntent = new Intent("com.viber.voip.action.BACKGROUND_GALLERY");
      localIntent.putExtra("has_background", false);
      getActivity().startActivityForResult(localIntent, 2004);
    }
    return true;
  }
  
  public void onResume()
  {
    super.onResume();
    a(getActivity(), false);
  }
  
  public void onSharedPreferenceChanged(l paraml, String paramString)
  {
    super.onSharedPreferenceChanged(paraml, paramString);
    if (paramString.equals(j.ar())) {
      a(getActivity(), true);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.av
 * JD-Core Version:    0.7.0.1
 */