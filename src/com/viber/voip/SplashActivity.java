package com.viber.voip;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.viber.voip.a.a;
import com.viber.voip.a.az;
import com.viber.voip.a.bc;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.registration.ActivationController;
import com.viber.voip.util.ft;
import com.viber.voip.util.gj;
import com.viber.voip.util.hb;

public class SplashActivity
  extends ViberActivity
  implements View.OnClickListener
{
  private Button a;
  private TextView b;
  private TextView c;
  private TextView d;
  private TextView e;
  private TextView f;
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131165881: 
      hb.a(this);
      return;
    }
    if (ft.b(this))
    {
      ViberApplication.getInstance().getActivationController().setStep(0, true);
      return;
    }
    showDialog(1001);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903332);
    bc.a().a(a.a.a());
    this.a = ((Button)findViewById(2131166128));
    this.a.setOnClickListener(this);
    this.b = ((TextView)findViewById(2131165881));
    this.b.setOnClickListener(this);
    this.c = ((TextView)findViewById(2131166127));
    this.d = ((TextView)findViewById(2131166131));
    this.e = ((TextView)findViewById(2131166132));
    this.f = ((TextView)findViewById(2131166133));
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    return new AlertDialog.Builder(this).setCancelable(true).setTitle(2131493728).setMessage(2131493729).setPositiveButton(2131493557, null).create();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if (paramBoolean)
    {
      if (this.c.getLineCount() > 2) {
        this.c.setTextSize(2, 28.0F);
      }
      gj.a(this.d);
      gj.a(this.e);
      gj.a(this.f);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.SplashActivity
 * JD-Core Version:    0.7.0.1
 */