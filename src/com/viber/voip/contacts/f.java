package com.viber.voip.contacts;

import com.viber.voip.contacts.b.e;

public class f
  implements a
{
  private int b;
  private int c;
  private int d = -1;
  
  public f(b paramb) {}
  
  private int a(long paramLong)
  {
    if (paramLong > 0L)
    {
      if (c(this.d) == paramLong) {
        return this.d;
      }
      for (int i = 0; i < this.c; i++) {
        if (c(i) == paramLong)
        {
          this.d = i;
          return this.d;
        }
      }
    }
    this.d = -1;
    return this.d;
  }
  
  private void a()
  {
    this.b = 0;
    this.c = 0;
  }
  
  public e b(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.c)) {
      return this.a.b(paramInt + this.b);
    }
    return null;
  }
  
  public long c(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.c)) {
      return this.a.a_(paramInt + this.b);
    }
    return -1L;
  }
  
  public int c_()
  {
    return b.a(this.a);
  }
  
  public boolean d_()
  {
    return this.a.d_();
  }
  
  public int getCount()
  {
    return this.c;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.f
 * JD-Core Version:    0.7.0.1
 */