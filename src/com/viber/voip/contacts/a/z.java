package com.viber.voip.contacts.a;

import android.net.Uri;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.b.e;
import com.viber.voip.registration.cp;

class z
  extends e
{
  private String E;
  private Uri F;
  
  z(y paramy) {}
  
  public String a()
  {
    if (this.E == null) {
      a(ViberApplication.getInstance().getRegistrationValues().f());
    }
    if (TextUtils.isEmpty(super.a())) {
      return this.E;
    }
    return super.a();
  }
  
  public void a(Uri paramUri)
  {
    this.F = paramUri;
  }
  
  public void a(String paramString)
  {
    this.E = paramString;
  }
  
  public Uri b()
  {
    return this.F;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.a.z
 * JD-Core Version:    0.7.0.1
 */