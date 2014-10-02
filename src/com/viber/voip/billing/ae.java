package com.viber.voip.billing;

import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.b;
import com.viber.voip.util.hd;

public class ae
{
  private String a;
  private String b;
  private String c;
  
  public ae(String paramString)
  {
    this.a = paramString;
    this.b = hd.a(ViberApplication.getInstance(), paramString, null);
  }
  
  public String a()
  {
    return this.a;
  }
  
  public void a(ag paramag)
  {
    if (this.c != null)
    {
      paramag.a(this.c);
      return;
    }
    if (this.b != null) {}
    for (String str = this.b;; str = this.a)
    {
      ViberApplication.getInstance().getContactManager().a(str, new af(this, paramag));
      return;
    }
  }
  
  public String b()
  {
    if (this.b != null) {
      return this.b.substring(1);
    }
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.ae
 * JD-Core Version:    0.7.0.1
 */