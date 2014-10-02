package com.viber.service.contacts.sync.c;

import android.content.ContentValues;
import android.content.Context;

public class a
{
  private final String a;
  private final String b;
  private final String c;
  private final String d;
  
  public a(Context paramContext)
  {
    this.a = paramContext.getString(2131494822);
    this.b = paramContext.getString(2131494140);
    this.c = paramContext.getString(2131494141);
    this.d = paramContext.getString(2131494142);
  }
  
  public ContentValues a(ContentValues paramContentValues, String paramString)
  {
    paramContentValues.put("data1", paramString);
    paramContentValues.put("data2", this.a);
    paramContentValues.put("data3", String.format(this.b, new Object[] { paramString }));
    paramContentValues.put("mimetype", "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_call");
    return paramContentValues;
  }
  
  public ContentValues b(ContentValues paramContentValues, String paramString)
  {
    paramContentValues.put("data1", paramString);
    paramContentValues.put("data2", this.a);
    paramContentValues.put("data3", String.format(this.c, new Object[] { paramString }));
    paramContentValues.put("mimetype", "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_message");
    return paramContentValues;
  }
  
  public ContentValues c(ContentValues paramContentValues, String paramString)
  {
    paramContentValues.put("data1", paramString);
    paramContentValues.put("data2", this.a);
    paramContentValues.put("data3", String.format(this.d, new Object[] { paramString }));
    paramContentValues.put("mimetype", "vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_viber");
    return paramContentValues;
  }
  
  public ContentValues d(ContentValues paramContentValues, String paramString)
  {
    paramContentValues.put("data1", paramString);
    paramContentValues.put("data2", this.a);
    paramContentValues.put("data3", String.format(this.d, new Object[] { paramString }));
    paramContentValues.put("mimetype", "vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_none_viber");
    return paramContentValues;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.contacts.sync.c.a
 * JD-Core Version:    0.7.0.1
 */