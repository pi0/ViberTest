package com.viber.voip.messages.extras.map;

import android.location.Address;
import android.util.Log;
import com.viber.dexshared.GMaps.Factory;
import com.viber.voip.messages.extras.a.c;

class g
  implements c
{
  g(f paramf) {}
  
  public void a(Address paramAddress, String paramString)
  {
    String str;
    if (this.a.a()) {
      str = new String(paramString);
    }
    try
    {
      b localb = new b(d.a(this.a.a), d.a(this.a.b));
      k localk = new k();
      localk.e(paramString);
      localk.d(str);
      localk.a(localb);
      localk.a(d.a(this.a.d).newLatLng(this.a.a, this.a.b));
      d.b(this.a.d).a(localk);
      return;
    }
    catch (NoClassDefFoundError localNoClassDefFoundError)
    {
      d.a(this.a.d, "AddressLoader : " + Log.getStackTraceString(localNoClassDefFoundError));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.map.g
 * JD-Core Version:    0.7.0.1
 */