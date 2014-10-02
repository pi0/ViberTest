package com.viber.voip.contacts.c;

import android.net.Uri;
import com.viber.voip.messages.a.a;
import com.viber.voip.messages.a.b;
import java.util.Map;

class d
  implements t
{
  int a = 0;
  
  d(c paramc, int paramInt, Map paramMap) {}
  
  public void a(String paramString1, Uri paramUri, String paramString2)
  {
    b.d().a(paramUri, paramString1);
    this.a = (1 + this.a);
    if (paramString2 != null) {
      this.c.put(paramString1, paramString2);
    }
    if ((this.a >= this.b) && (this.d.b != null)) {
      this.d.b.a(this.c);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.d
 * JD-Core Version:    0.7.0.1
 */