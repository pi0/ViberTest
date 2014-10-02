package com.viber.voip.contacts.c.d.a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.al;

class d
  implements Runnable
{
  d(b paramb) {}
  
  public void run()
  {
    long l1 = b.d(this.a);
    Uri localUri;
    long l2;
    String str1;
    if (!TextUtils.isEmpty(b.e(this.a)))
    {
      localUri = ContactsContract.Contacts.getLookupUri(b.d(this.a), b.e(this.a));
      Cursor localCursor = a.b(this.a.b).getContentResolver().query(localUri, new String[] { "_id", "lookup", "display_name" }, null, null, null);
      if ((localCursor == null) || (!localCursor.moveToFirst())) {
        break label246;
      }
      long l3 = localCursor.getLong(0);
      String str2 = localCursor.getString(1);
      l2 = l3;
      str1 = str2;
      label123:
      al.a(localCursor);
      if (b.e(this.a) == null) {
        b.a(this.a, str1);
      }
      if ((l2 == -1L) || ((l2 == b.d(this.a)) && (b.e(this.a).equals(str1)))) {
        break label257;
      }
    }
    label257:
    for (boolean bool = true;; bool = false)
    {
      if (bool)
      {
        b.a(this.a, l2);
        b.a(this.a, str1);
      }
      this.a.a(bool, l2, l1);
      return;
      localUri = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, String.valueOf(b.d(this.a)));
      break;
      label246:
      l2 = -1L;
      str1 = null;
      break label123;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.a.d
 * JD-Core Version:    0.7.0.1
 */