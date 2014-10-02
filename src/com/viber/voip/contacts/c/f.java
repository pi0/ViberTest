package com.viber.voip.contacts.c;

import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.b.w;

final class f
  extends r
{
  f()
  {
    super(null);
  }
  
  public void a(String paramString)
  {
    w.a(ViberApplication.getInstance()).b(Uri.parse(paramString));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f
 * JD-Core Version:    0.7.0.1
 */