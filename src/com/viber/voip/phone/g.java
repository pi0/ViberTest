package com.viber.voip.phone;

public class g
{
  private int a = 0;
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a = (0x1 | this.a);
      return;
    }
    this.a = (0xFFFFFFFE & this.a);
  }
  
  public boolean a()
  {
    return (0x1 & this.a) != 0;
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a = (0x2 | this.a);
      return;
    }
    this.a = (0xFFFFFFFD & this.a);
  }
  
  public boolean b()
  {
    return (0x2 & this.a) != 0;
  }
  
  public void c(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a = (0x4 | this.a);
      return;
    }
    this.a = (0xFFFFFFFB & this.a);
  }
  
  public boolean c()
  {
    return (0x4 & this.a) != 0;
  }
  
  public void d(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a = (0x8 | this.a);
      return;
    }
    this.a = (0xFFFFFFF7 & this.a);
  }
  
  public boolean d()
  {
    return (0x8 & this.a) != 0;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.g
 * JD-Core Version:    0.7.0.1
 */