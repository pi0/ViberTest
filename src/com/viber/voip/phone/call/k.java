package com.viber.voip.phone.call;

import com.viber.voip.a.a;
import com.viber.voip.a.au;
import com.viber.voip.a.g;
import java.util.concurrent.atomic.AtomicInteger;

public class k
{
  public boolean a;
  private int b = 3840;
  private final l c;
  private final CallerInfo d;
  private n e;
  private int f;
  private boolean g = false;
  private boolean h;
  private AtomicInteger i = new AtomicInteger(0);
  private int j = 2147483647;
  
  public k(CallerInfo paramCallerInfo, int paramInt, boolean paramBoolean)
  {
    this(l.a, paramCallerInfo, paramInt, paramBoolean, false);
  }
  
  public k(CallerInfo paramCallerInfo, boolean paramBoolean)
  {
    this(l.b, paramCallerInfo, 0, false, paramBoolean);
  }
  
  public k(l paraml, CallerInfo paramCallerInfo, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paraml == null) {
      throw new IllegalArgumentException("The type argument is invalid");
    }
    if (paramCallerInfo == null) {
      throw new IllegalArgumentException("The callerInfo argument is invalid");
    }
    this.c = paraml;
    this.d = paramCallerInfo;
    this.f = paramInt;
    this.g = paramBoolean1;
    this.h = paramBoolean2;
    this.e = new n();
  }
  
  public static au l()
  {
    return a.w;
  }
  
  public int a()
  {
    return this.f;
  }
  
  public int a(int paramInt)
  {
    return this.i.getAndSet(paramInt);
  }
  
  public l b()
  {
    return this.c;
  }
  
  public void b(int paramInt)
  {
    this.j = paramInt;
  }
  
  public CallerInfo c()
  {
    return this.d;
  }
  
  public n d()
  {
    return this.e;
  }
  
  public boolean e()
  {
    return this.g;
  }
  
  public boolean f()
  {
    return this.h;
  }
  
  public boolean g()
  {
    int k = this.e.c();
    return (k != 0) && (k != 10);
  }
  
  public boolean h()
  {
    return this.e.c() == 3;
  }
  
  public boolean i()
  {
    int k = this.e.c();
    return ((this.b & 1 << k) > 0) || (k == 0);
  }
  
  public boolean j()
  {
    return this.f == 1;
  }
  
  public g k()
  {
    if (this.h) {
      return a.k;
    }
    if (1 == this.f) {
      return a.j;
    }
    if (this.a) {
      return l();
    }
    return a.v;
  }
  
  public int m()
  {
    return this.i.get();
  }
  
  public boolean n()
  {
    return (0x100 & m()) != 0;
  }
  
  public int o()
  {
    return this.j;
  }
  
  public String toString()
  {
    return "CallInfo [type=" + this.c + ", callerInfo=" + this.d + ", isTransfer:" + this.g + ", isViberOut:" + this.h + ", isViberIn:" + this.f + ", inCallState" + this.e + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.call.k
 * JD-Core Version:    0.7.0.1
 */