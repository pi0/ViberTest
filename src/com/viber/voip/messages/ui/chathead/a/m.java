package com.viber.voip.messages.ui.chathead.a;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.view.View;
import android.widget.FrameLayout;

class m
  extends b
{
  m(l paraml) {}
  
  public Context D()
  {
    return l.d(this.a).getContext();
  }
  
  public View E()
  {
    return l.e(this.a);
  }
  
  public void a(Intent paramIntent)
  {
    this.a.c();
  }
  
  public void c(int paramInt)
  {
    this.a.c();
    switch (paramInt)
    {
    default: 
      l.b(this.a).putExtra("popup_action_id", paramInt);
      l.c(this.a);
      return;
    }
    l.a(this.a).d(false);
  }
  
  public void e_(int paramInt)
  {
    this.a.c();
    l.b(this.a).setFlags(268435456);
    l.b(this.a).putExtra("popup_action_id", 13);
    l.b(this.a).putExtra("package_id", paramInt);
    l.f(this.a).startActivity(l.b(this.a));
  }
  
  public void f_()
  {
    this.a.c();
    l.b(this.a).setFlags(268435456);
    l.b(this.a).putExtra("popup_action_id", 12);
    l.f(this.a).startActivity(l.b(this.a));
  }
  
  public void f_(int paramInt)
  {
    this.a.c();
    l.b(this.a).setFlags(268435456);
    l.b(this.a).putExtra("popup_action_id", 14);
    l.b(this.a).putExtra("package_id", paramInt);
    l.f(this.a).startActivity(l.b(this.a));
  }
  
  public IBinder h()
  {
    return l.d(this.a).getWindowToken();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.a.m
 * JD-Core Version:    0.7.0.1
 */