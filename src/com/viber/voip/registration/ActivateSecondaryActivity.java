package com.viber.voip.registration;

import android.app.KeyguardManager;
import android.content.Intent;
import android.os.Bundle;
import android.os.PowerManager;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.Window;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.sound.IRingtoneService.Ringtone;
import com.viber.voip.sound.ISoundService;

public class ActivateSecondaryActivity
  extends ViberActivity
  implements View.OnTouchListener
{
  private ISoundService a;
  private IRingtoneService.Ringtone b;
  private int c;
  private boolean d;
  
  private void a()
  {
    this.b = this.a.getRingtone(2131099648, false, true);
    this.b.setEndPlaybackCallback(new a(this));
    this.a.playRingtone(this.b);
  }
  
  private void b()
  {
    if (this.b != null) {
      this.b.setEndPlaybackCallback(null);
    }
    if (this.a != null) {
      this.a.stopRingtone();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903125);
    Intent localIntent = getIntent();
    if ((localIntent.hasExtra("code")) && (localIntent.hasExtra("code")))
    {
      Window localWindow = getWindow();
      localWindow.addFlags(4718592);
      PowerManager localPowerManager = (PowerManager)getSystemService("power");
      KeyguardManager localKeyguardManager = (KeyguardManager)getSystemService("keyguard");
      if (!localPowerManager.isScreenOn())
      {
        localWindow.addFlags(2097152);
        this.d = true;
      }
      for (;;)
      {
        localWindow.getDecorView().setOnTouchListener(this);
        this.a = ViberApplication.getInstance().getSoundService();
        a();
        String str1 = localIntent.getStringExtra("device_type");
        String str2 = localIntent.getStringExtra("code");
        TextView localTextView1 = (TextView)findViewById(2131165538);
        TextView localTextView2 = (TextView)findViewById(2131165540);
        TextView localTextView3 = (TextView)findViewById(2131165539);
        TextView localTextView4 = (TextView)findViewById(2131165537);
        localTextView1.setText(getString(2131494436, new Object[] { str1 }));
        localTextView2.setText(getString(2131494438, new Object[] { str1 }));
        localTextView3.setText(str2);
        localTextView4.setText(getString(2131494440, new Object[] { str1 }));
        return;
        if (localKeyguardManager.inKeyguardRestrictedInputMode()) {
          this.d = true;
        }
      }
    }
    finish();
  }
  
  protected void onDestroy()
  {
    b();
    super.onDestroy();
  }
  
  protected void onStop()
  {
    if (this.d) {
      this.d = false;
    }
    for (;;)
    {
      super.onStop();
      return;
      b();
      finish();
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    b();
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.ActivateSecondaryActivity
 * JD-Core Version:    0.7.0.1
 */