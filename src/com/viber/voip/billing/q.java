package com.viber.voip.billing;

public class q
{
  private final bn a;
  private final String b;
  private final int c;
  private final double d;
  private final String e;
  private String f;
  
  public q(bn parambn, String paramString1, double paramDouble, String paramString2, int paramInt)
  {
    this.a = parambn;
    this.b = paramString1;
    this.d = paramDouble;
    this.e = paramString2;
    this.c = paramInt;
  }
  
  public String a()
  {
    if (this.f != null) {
      return this.f;
    }
    if ("USD".equals(this.e)) {
      return "$" + this.d;
    }
    if ("EUR".equals(this.e)) {
      return "€" + this.d;
    }
    return this.b;
  }
  
  public void a(String paramString)
  {
    this.f = paramString;
  }
  
  public bn b()
  {
    return this.a;
  }
  
  public String c()
  {
    return this.b;
  }
  
  public String d()
  {
    return this.e;
  }
  
  public double e()
  {
    return this.d;
  }
  
  public int f()
  {
    return this.c;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.q
 * JD-Core Version:    0.7.0.1
 */