package com.viber.voip.billing;

abstract class bl
  implements Runnable
{
  String h;
  
  bl(ap paramap, String paramString)
  {
    this.h = paramString;
  }
  
  abstract void a();
  
  void a(bo parambo) {}
  
  String b()
  {
    return this.h;
  }
  
  public final void run()
  {
    this.i.a("Executing task " + this.h);
    a();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.bl
 * JD-Core Version:    0.7.0.1
 */