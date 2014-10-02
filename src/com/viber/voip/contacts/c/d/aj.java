package com.viber.voip.contacts.c.d;

import android.net.Uri;
import com.viber.voip.contacts.c.e.b;
import com.viber.voip.util.fh;

class aj
  implements fh
{
  aj(aa paramaa, ap paramap, long paramLong, String paramString) {}
  
  public void onDeleteComplete(int paramInt1, Object paramObject, int paramInt2)
  {
    if (this.a != null) {
      this.a.a();
    }
    Uri localUri = aa.a(this.d, this.b, this.c);
    aa.a(this.d).a(1589, this.c, localUri, null, null, null, false, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.aj
 * JD-Core Version:    0.7.0.1
 */