package com.viber.voip.g;

import android.content.Context;
import com.viber.voip.ViberApplication;
import com.viber.voip.phone.v;

public abstract class a
{
  private b a;
  
  protected a(Context paramContext) {}
  
  protected b a()
  {
    return this.a;
  }
  
  public void a(b paramb)
  {
    this.a = paramb;
  }
  
  protected void a(String paramString) {}
  
  public abstract void a(boolean paramBoolean);
  
  protected ViberApplication b()
  {
    return ViberApplication.getInstance();
  }
  
  protected v c()
  {
    return b().getPhoneApp();
  }
  
  public boolean d()
  {
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.g.a
 * JD-Core Version:    0.7.0.1
 */