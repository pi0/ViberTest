package com.viber.voip.messages.extras.map;

abstract class e
  implements Runnable
{
  protected double a;
  protected double b;
  
  public e(d paramd, double paramDouble1, double paramDouble2)
  {
    this.a = paramDouble1;
    this.b = paramDouble2;
  }
  
  protected boolean a()
  {
    return (this.a == d.d(this.c)) && (this.b == d.e(this.c));
  }
  
  protected abstract void b();
  
  public void run()
  {
    if (!a()) {
      return;
    }
    b();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.map.e
 * JD-Core Version:    0.7.0.1
 */