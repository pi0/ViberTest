package com.viber.voip.messages.conversation;

import android.database.Cursor;
import com.viber.voip.util.gk;

public class ar
{
  public static final String[] a = { "participants._id", "participants.active", "participants_info._id", "participants_info.participant_type", "participants_info.contact_name", "participants_info.display_name", "participants_info.contact_id", "participants_info.native_contact_id", "participants_info.number", "participants_info.location_lat", "participants_info.location_lng", "participants_info.location_date", "participants_info.viber_name", "conversations.conversation_type" };
  private long b;
  private int c;
  private long d;
  private int e;
  private String f;
  private String g;
  private long h;
  private long i;
  private String j;
  private int k;
  private int l;
  private long m;
  private String n;
  private int o;
  
  public ar(Cursor paramCursor)
  {
    a(this, paramCursor);
  }
  
  private static void a(ar paramar, Cursor paramCursor)
  {
    paramar.b = paramCursor.getLong(0);
    paramar.c = paramCursor.getInt(1);
    paramar.d = paramCursor.getLong(2);
    paramar.e = paramCursor.getInt(3);
    paramar.f = paramCursor.getString(4);
    paramar.g = paramCursor.getString(5);
    paramar.h = paramCursor.getLong(6);
    paramar.i = paramCursor.getLong(7);
    paramar.j = paramCursor.getString(8);
    paramar.k = paramCursor.getInt(9);
    paramar.l = paramCursor.getInt(10);
    paramar.m = paramCursor.getLong(11);
    paramar.n = paramCursor.getString(12);
    paramar.o = paramCursor.getInt(13);
  }
  
  public int a()
  {
    return this.c;
  }
  
  public String a(int paramInt)
  {
    return gk.a(this, paramInt);
  }
  
  public long b()
  {
    return this.d;
  }
  
  public int c()
  {
    return this.e;
  }
  
  public String d()
  {
    return this.f;
  }
  
  public String e()
  {
    return this.g;
  }
  
  public long f()
  {
    return this.h;
  }
  
  public long g()
  {
    return this.i;
  }
  
  public String h()
  {
    return this.j;
  }
  
  public int i()
  {
    return this.k;
  }
  
  public int j()
  {
    return this.l;
  }
  
  public long k()
  {
    return this.m;
  }
  
  public boolean l()
  {
    return (this.k != 0) && (this.l != 0);
  }
  
  public boolean m()
  {
    return this.o != 0;
  }
  
  public String n()
  {
    return gk.a(this);
  }
  
  public boolean o()
  {
    return c() == 0;
  }
  
  public boolean p()
  {
    return a() == 0;
  }
  
  public String q()
  {
    return this.n;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ar
 * JD-Core Version:    0.7.0.1
 */