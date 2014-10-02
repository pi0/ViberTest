package com.viber.voip.billing;

public class bo
{
  int a;
  String b;
  
  public bo(int paramInt, String paramString)
  {
    this.a = paramInt;
    if ((paramString == null) || (paramString.trim().length() == 0))
    {
      this.b = ap.a(paramInt);
      return;
    }
    this.b = (paramString + " (response: " + ap.a(paramInt) + ")");
  }
  
  public int a()
  {
    return this.a;
  }
  
  public String b()
  {
    return this.b;
  }
  
  public boolean c()
  {
    return this.a == 0;
  }
  
  public boolean d()
  {
    return !c();
  }
  
  public String toString()
  {
    return "IabResult: (" + this.a + ") " + b();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.bo
 * JD-Core Version:    0.7.0.1
 */