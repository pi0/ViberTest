package com.viber.voip.billing;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.viber.provider.messages.ViberMessagesProvider;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.al;

public class cn
  implements cm
{
  private static final String a = cn.class.getSimpleName();
  private static final String[] b = { "order_id", "type", "category", "package_name", "product_id", "purchase_time", "purchase_state", "dev_payload", "token", "json", "signature", "verified", "consumed", "pending" };
  private SQLiteDatabase c = ViberMessagesProvider.a(ViberApplication.getInstance());
  
  private void a(String paramString) {}
  
  private bu[] a(Cursor paramCursor)
  {
    int i = 0;
    bu[] arrayOfbu2;
    if ((!al.b(paramCursor)) && (paramCursor.moveToFirst())) {
      arrayOfbu2 = new bu[paramCursor.getCount()];
    }
    for (;;)
    {
      int j = i + 1;
      arrayOfbu2[i] = b(paramCursor);
      if (!paramCursor.moveToNext()) {
        for (bu[] arrayOfbu1 = arrayOfbu2;; arrayOfbu1 = new bu[0])
        {
          al.a(paramCursor);
          return arrayOfbu1;
        }
      }
      i = j;
    }
  }
  
  private bu b(Cursor paramCursor)
  {
    String str1 = paramCursor.getString(0);
    String str2 = paramCursor.getString(3);
    bn localbn = bn.a(paramCursor.getString(4));
    long l = paramCursor.getLong(5);
    int i = paramCursor.getInt(6);
    String str3 = paramCursor.getString(7);
    String str4 = paramCursor.getString(8);
    String str5 = paramCursor.getString(9);
    String str6 = paramCursor.getString(10);
    boolean bool1;
    boolean bool2;
    if (paramCursor.getInt(11) != 0)
    {
      bool1 = true;
      if (paramCursor.getInt(12) == 0) {
        break label175;
      }
      bool2 = true;
      label115:
      if (paramCursor.getInt(13) == 0) {
        break label181;
      }
    }
    label175:
    label181:
    for (boolean bool3 = true;; bool3 = false)
    {
      bu localbu = new bu(str1, str2, localbn, l, i, str3, str4, str5, str6, bool1, bool2, bool3);
      localbu.d(true);
      return localbu;
      bool1 = false;
      break;
      bool2 = false;
      break label115;
    }
  }
  
  public void a(bu parambu)
  {
    StringBuilder localStringBuilder = new StringBuilder().append("savePurchase ");
    String str;
    ContentValues localContentValues;
    int i;
    label200:
    int j;
    if (parambu.n())
    {
      str = "UPDATE ";
      a(str + parambu);
      localContentValues = new ContentValues();
      localContentValues.put("order_id", parambu.b());
      localContentValues.put("type", parambu.a());
      localContentValues.put("category", Integer.valueOf(parambu.d().a().a().ordinal()));
      localContentValues.put("package_name", parambu.c());
      localContentValues.put("product_id", parambu.d().toString());
      localContentValues.put("purchase_time", Long.valueOf(parambu.e()));
      localContentValues.put("purchase_state", Integer.valueOf(parambu.f()));
      localContentValues.put("dev_payload", parambu.g());
      localContentValues.put("token", parambu.h());
      localContentValues.put("json", parambu.i());
      localContentValues.put("signature", parambu.j());
      if (!parambu.k()) {
        break label304;
      }
      i = 1;
      localContentValues.put("verified", Integer.valueOf(i));
      if (!parambu.l()) {
        break label310;
      }
      j = 1;
      label222:
      localContentValues.put("consumed", Integer.valueOf(j));
      if (!parambu.m()) {
        break label316;
      }
    }
    label304:
    label310:
    label316:
    for (int k = 1;; k = 0)
    {
      localContentValues.put("pending", Integer.valueOf(k));
      if (!parambu.n()) {
        break label322;
      }
      SQLiteDatabase localSQLiteDatabase = this.c;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = parambu.b();
      localSQLiteDatabase.update("purchase", localContentValues, "order_id = ?", arrayOfString);
      return;
      str = "INSERT ";
      break;
      i = 0;
      break label200;
      j = 0;
      break label222;
    }
    label322:
    this.c.insert("purchase", null, localContentValues);
    parambu.d(true);
  }
  
  public bu[] a()
  {
    return a(this.c.query("purchase", b, "pending = ?", new String[] { "1" }, null, null, null));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.cn
 * JD-Core Version:    0.7.0.1
 */