package com.viber.voip.viberout.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

class ay
{
  private TextView a;
  private ViewGroup b;
  private TextView c;
  private View d;
  private Context e;
  private AlertDialog f;
  private AlertDialog.Builder g;
  private boolean h;
  private LayoutInflater i;
  
  public ay(Context paramContext)
  {
    this.e = paramContext;
    this.i = LayoutInflater.from(paramContext);
    View localView = this.i.inflate(2130903348, null);
    this.b = ((ViewGroup)localView.findViewById(2131165585));
    this.a = ((TextView)localView.findViewById(2131165356));
    this.c = ((TextView)localView.findViewById(2131165357));
    this.d = localView.findViewById(2131166169);
    this.g = new AlertDialog.Builder(this.e);
    this.g.setView(localView);
  }
  
  public View a(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    return a(this.e.getString(paramInt), paramOnClickListener);
  }
  
  public View a(String paramString, DialogInterface.OnClickListener paramOnClickListener)
  {
    Button localButton = (Button)this.i.inflate(2130903349, this.b, false);
    localButton.setText(paramString);
    localButton.setOnClickListener(new az(this, paramOnClickListener));
    this.b.addView(localButton);
    return localButton;
  }
  
  public void a()
  {
    this.f = this.g.create();
    this.f.requestWindowFeature(1);
    if (TextUtils.isEmpty(this.a.getText())) {
      this.a.setVisibility(8);
    }
    this.f.show();
  }
  
  public void a(int paramInt)
  {
    this.d.setVisibility(0);
    this.c.setText(paramInt);
    this.h = true;
  }
  
  public void a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    this.g.setOnCancelListener(paramOnCancelListener);
  }
  
  public void a(String paramString)
  {
    this.a.setText(paramString);
  }
  
  public void a(boolean paramBoolean)
  {
    this.g.setCancelable(paramBoolean);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.ui.ay
 * JD-Core Version:    0.7.0.1
 */