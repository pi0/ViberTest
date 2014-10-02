package com.viber.voip.contacts.c.d;

import android.content.ContentValues;
import android.net.Uri;
import com.viber.voip.contacts.c.e.b;
import com.viber.voip.util.fn;

class ab
  implements fn
{
  ab(aa paramaa, ap paramap, boolean paramBoolean, long paramLong, String paramString) {}
  
  public void onUpdateComplete(int paramInt1, Object paramObject, Uri paramUri, Exception paramException, int paramInt2)
  {
    if (this.a != null) {
      this.a.a();
    }
    ContentValues localContentValues = new ContentValues(1);
    if (this.b) {}
    for (int i = 1;; i = 0)
    {
      localContentValues.put("starred", Integer.valueOf(i));
      Uri localUri = aa.a(this.e, this.c, this.d);
      aa.a(this.e).a(1584, this.d, localUri, localContentValues, null, null, null, false, true);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.ab
 * JD-Core Version:    0.7.0.1
 */