package com.viber.voip.phone.b;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnCancelListener;
import android.content.res.Resources;
import android.view.View;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.phone.PhoneActivity;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.ui.call.WavesView;
import com.viber.voip.ui.call.f;

@Deprecated
public class ac
  extends ah
  implements f
{
  DialogInterface.OnCancelListener c = new ae(this);
  private final String f = "IncomingStateWrapper";
  private WavesView g;
  private String[] h;
  private AlertDialog i;
  private ISoundService j = ViberApplication.getInstance().getSoundService();
  
  public ac(View paramView, PhoneActivity paramPhoneActivity)
  {
    super(paramView, paramPhoneActivity);
    this.g = ((WavesView)paramView.findViewById(2131165321));
    if (this.g != null) {
      this.g.setTargetListener(this);
    }
    this.h = paramPhoneActivity.getResources().getStringArray(2131623937);
  }
  
  public void a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 2: 
      this.b.e();
      return;
    case 0: 
      this.b.f();
      return;
    }
    c();
  }
  
  public void a(PhoneControllerWrapper paramPhoneControllerWrapper)
  {
    super.a(paramPhoneControllerWrapper);
    this.g.setVisibility(0);
    this.b.setVolumeControlStream(this.j.stream_Ring());
  }
  
  public void a(boolean paramBoolean) {}
  
  public void b()
  {
    super.b();
    this.g.setVisibility(8);
    if ((this.i != null) && (this.i.isShowing())) {
      this.i.dismiss();
    }
  }
  
  protected void c()
  {
    this.j.stopRingtone();
    this.g.setVisibility(8);
    this.i = new AlertDialog.Builder(this.b).setItems(2131623937, new ad(this)).setOnCancelListener(this.c).create();
    this.i.show();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.ac
 * JD-Core Version:    0.7.0.1
 */