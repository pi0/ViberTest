package com.viber.voip.backgrounds.b;

import com.viber.voip.backgrounds.l;
import com.viber.voip.backgrounds.o;

public abstract class f
  extends l
{
  private final int a;
  
  public f(int paramInt)
  {
    this.a = paramInt;
  }
  
  public void a() {}
  
  protected abstract void a(int paramInt);
  
  public void a(o paramo)
  {
    if (paramo.a != this.a) {
      return;
    }
    b(this.a);
  }
  
  public void a(o paramo, int paramInt) {}
  
  protected abstract void b(int paramInt);
  
  public void b(o paramo)
  {
    if (paramo.a != this.a) {
      return;
    }
    a(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.backgrounds.b.f
 * JD-Core Version:    0.7.0.1
 */