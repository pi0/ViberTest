package com.viber.voip.billing;

import org.json.JSONObject;

public class bu
{
  String a;
  String b;
  bn c;
  long d;
  int e;
  String f;
  String g;
  String h;
  String i;
  boolean j;
  boolean k;
  boolean l;
  boolean m;
  long n;
  long o;
  boolean p;
  
  bu(String paramString1, String paramString2)
  {
    this.h = paramString1;
    JSONObject localJSONObject = new JSONObject(this.h);
    this.a = localJSONObject.optString("orderId");
    this.b = localJSONObject.optString("packageName");
    this.c = bn.a(localJSONObject.optString("productId"));
    this.d = localJSONObject.optLong("purchaseTime");
    this.e = localJSONObject.optInt("purchaseState");
    this.f = localJSONObject.optString("developerPayload");
    this.g = localJSONObject.optString("token", localJSONObject.optString("purchaseToken"));
    this.i = paramString2;
    this.l = true;
  }
  
  public bu(String paramString1, String paramString2, bn parambn, long paramLong, int paramInt, String paramString3, String paramString4, String paramString5, String paramString6, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = parambn;
    this.d = paramLong;
    this.e = paramInt;
    this.f = paramString3;
    this.g = paramString4;
    this.h = paramString5;
    this.i = paramString6;
    this.j = paramBoolean1;
    this.k = paramBoolean2;
    this.l = paramBoolean3;
  }
  
  public String a()
  {
    return this.c.b();
  }
  
  public void a(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }
  
  public String b()
  {
    return this.a;
  }
  
  public void b(boolean paramBoolean)
  {
    this.k = paramBoolean;
  }
  
  public String c()
  {
    return this.b;
  }
  
  public void c(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }
  
  public bn d()
  {
    return this.c;
  }
  
  void d(boolean paramBoolean)
  {
    this.m = true;
  }
  
  public long e()
  {
    return this.d;
  }
  
  void e(boolean paramBoolean)
  {
    this.p = true;
  }
  
  public int f()
  {
    return this.e;
  }
  
  public String g()
  {
    return this.f;
  }
  
  public String h()
  {
    return this.g;
  }
  
  public String i()
  {
    return this.h;
  }
  
  public String j()
  {
    return this.i;
  }
  
  public boolean k()
  {
    return this.j;
  }
  
  public boolean l()
  {
    return this.k;
  }
  
  public boolean m()
  {
    return this.l;
  }
  
  boolean n()
  {
    return this.m;
  }
  
  boolean o()
  {
    return this.p;
  }
  
  public String toString()
  {
    return "Purchase(itemType:" + a() + ", category:" + d().a().a() + ", verified:" + this.j + ", consumed:" + this.k + " pending:" + this.l + "):" + this.h;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.bu
 * JD-Core Version:    0.7.0.1
 */