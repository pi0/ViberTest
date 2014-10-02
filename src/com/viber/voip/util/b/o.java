package com.viber.voip.util.b;

import java.io.FileOutputStream;
import java.io.OutputStream;

public final class o
{
  private final q b;
  private boolean c;
  
  private o(m paramm, q paramq)
  {
    this.b = paramq;
  }
  
  public OutputStream a(int paramInt)
  {
    synchronized (this.a)
    {
      if (q.a(this.b) != this) {
        throw new IllegalStateException();
      }
    }
    p localp = new p(this, new FileOutputStream(this.b.b(paramInt)), null);
    return localp;
  }
  
  public void a()
  {
    if (this.c)
    {
      m.a(this.a, this, false);
      this.a.c(q.c(this.b));
      return;
    }
    m.a(this.a, this, true);
  }
  
  public void b()
  {
    m.a(this.a, this, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.b.o
 * JD-Core Version:    0.7.0.1
 */