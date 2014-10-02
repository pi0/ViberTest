package com.viber.voip.block;

import android.database.Cursor;
import android.text.TextUtils;

public class q
{
  public static final String[] a = { "blockednumbers._id", "blockednumbers.canonized_number", "blockednumbers.blocked_date", "GROUP_CONCAT(phonebookcontact.display_name, ', ')", "phonebookcontact._id", "phonebookcontact.contact_lookup_key" };
  private long b;
  private String c;
  private long d;
  private String e;
  private long f;
  private String g;
  
  public q(Cursor paramCursor)
  {
    a(this, paramCursor);
  }
  
  private static void a(q paramq, Cursor paramCursor)
  {
    paramq.b = paramCursor.getLong(0);
    paramq.c = paramCursor.getString(1);
    paramq.d = paramCursor.getLong(2);
    paramq.e = paramCursor.getString(3);
    paramq.f = paramCursor.getLong(4);
    paramq.g = paramCursor.getString(5);
  }
  
  public String a()
  {
    return this.c;
  }
  
  public String b()
  {
    return this.e;
  }
  
  public boolean c()
  {
    return !TextUtils.isEmpty(this.e);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.block.q
 * JD-Core Version:    0.7.0.1
 */