package com.viber.voip.messages.extras.fb;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.phone.call.k;
import com.viber.voip.settings.l;
import com.viber.voip.util.ak;
import java.util.List;

public class FacebookLikeDialogActivity
  extends ViberActivity
{
  private static boolean a;
  private static long b;
  private static boolean c;
  
  public static void a(Activity paramActivity)
  {
    boolean bool1 = true;
    l locall = ViberApplication.preferences();
    a = locall.b("show_rate_dialog", bool1);
    b = locall.b("rate_dialog_shown_time", 0L);
    c = locall.b("show_facebook_like_dialog", bool1);
    int i = 1 + locall.b("call_min_time_count", -1);
    RelativeLayout localRelativeLayout = new RelativeLayout(paramActivity);
    localRelativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
    CheckBox localCheckBox1 = new CheckBox(paramActivity);
    localCheckBox1.setId(101);
    localCheckBox1.setText("Show Rate");
    localCheckBox1.setChecked(a);
    localRelativeLayout.addView(localCheckBox1, new RelativeLayout.LayoutParams(-2, -2));
    CheckBox localCheckBox2 = new CheckBox(paramActivity);
    localCheckBox2.setId(102);
    boolean bool2;
    CheckBox localCheckBox3;
    if ((!a) && (b != 0L))
    {
      bool2 = bool1;
      localCheckBox2.setEnabled(bool2);
      localCheckBox2.setText("Rate Shown Today");
      localCheckBox2.setChecked(ak.isToday(b));
      RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams1.addRule(3, localCheckBox1.getId());
      localRelativeLayout.addView(localCheckBox2, localLayoutParams1);
      localCheckBox3 = new CheckBox(paramActivity);
      localCheckBox3.setId(103);
      if (a) {
        break label450;
      }
    }
    for (;;)
    {
      localCheckBox3.setEnabled(bool1);
      localCheckBox3.setText("Show Facebook Like");
      localCheckBox3.setChecked(c);
      RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams2.addRule(3, localCheckBox2.getId());
      localRelativeLayout.addView(localCheckBox3, localLayoutParams2);
      TextView localTextView = new TextView(paramActivity);
      localTextView.setText("Call Count: " + i);
      RelativeLayout.LayoutParams localLayoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams3.addRule(3, localCheckBox3.getId());
      localRelativeLayout.addView(localTextView, localLayoutParams3);
      localCheckBox1.setOnCheckedChangeListener(new p(locall, localCheckBox3, localCheckBox2));
      localCheckBox2.setOnCheckedChangeListener(new q(locall));
      localCheckBox3.setOnCheckedChangeListener(new r(locall));
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramActivity);
      localBuilder.setView(localRelativeLayout);
      localBuilder.setTitle("Rate & Facebook Like Dialogs");
      localBuilder.create().show();
      return;
      bool2 = false;
      break;
      label450:
      bool1 = false;
    }
  }
  
  public static boolean a(k paramk)
  {
    l locall = ViberApplication.preferences();
    boolean bool1 = locall.b("show_rate_dialog", true);
    com.viber.voip.phone.call.n localn = paramk.d();
    boolean bool2;
    int i;
    boolean bool3;
    if (!bool1)
    {
      bool2 = locall.b("show_facebook_like_dialog", true);
      long l = localn.x();
      if ((bool2) && (l >= 480000L))
      {
        i = locall.b("call_min_time_count", -1);
        bool3 = ak.isToday(locall.b("rate_dialog_shown_time", 0L));
        if (i >= 0) {
          break label91;
        }
        if (!bool3) {
          break label131;
        }
      }
    }
    return false;
    label91:
    if ((i >= 9) && (!bool3))
    {
      locall.a("call_min_time_count", -1);
      return bool2;
    }
    locall.a("call_min_time_count", i + 1);
    return false;
    label131:
    return bool2;
  }
  
  private void c()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setNegativeButton(2131494444, new m(this));
    localBuilder.setNeutralButton(2131494445, new n(this));
    localBuilder.setPositiveButton(2131494446, new o(this));
    localBuilder.setMessage(2131494443);
    localBuilder.setCancelable(false);
    localBuilder.create().show();
  }
  
  private void d()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("fb://profile/121349544572559"));
    if (getPackageManager().queryIntentActivities(localIntent, 65536).size() == 0) {
      localIntent.setData(Uri.parse("https://www.facebook.com/viber"));
    }
    localIntent.setFlags(268435456);
    startActivity(localIntent);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    ViberApplication.getInstance().getFacebookManager().a(this, paramInt1, paramInt2, paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    ViberApplication.getInstance().finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.FacebookLikeDialogActivity
 * JD-Core Version:    0.7.0.1
 */