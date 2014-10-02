package com.viber.voip.billing;

import android.content.Intent;

public class dl
{
  Intent a = PurchaseSupportActivity.a(dm.b);
  
  public dl a(String paramString)
  {
    if (paramString != null) {
      this.a.putExtra(dn.a.name(), paramString);
    }
    return this;
  }
  
  public void a()
  {
    PurchaseSupportActivity.b("Showing error dialog: " + this.a.getStringExtra(dn.a.name()) + " / " + this.a.getStringExtra(dn.b.name()) + " / " + this.a.getStringExtra(dn.c.name()));
    PurchaseSupportActivity.a(this.a);
  }
  
  public dl b(String paramString)
  {
    if (paramString != null) {
      this.a.putExtra(dn.b.name(), paramString);
    }
    return this;
  }
  
  public dl c(String paramString)
  {
    this.a.putExtra(dn.c.name(), paramString);
    return this;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.dl
 * JD-Core Version:    0.7.0.1
 */