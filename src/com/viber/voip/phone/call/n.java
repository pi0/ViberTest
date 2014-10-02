package com.viber.voip.phone.call;

import java.util.Arrays;
import java.util.Observable;

public class n
  extends Observable
  implements Cloneable
{
  private long a = 0L;
  private long b = System.currentTimeMillis();
  private long c = 0L;
  private long d = 0L;
  private long e = 0L;
  private boolean f = false;
  private boolean g = false;
  private boolean h = false;
  private boolean i = false;
  private boolean j = false;
  private boolean k = false;
  private boolean l = false;
  private boolean m = false;
  private boolean n = false;
  private boolean o = false;
  private boolean p = false;
  private boolean q = false;
  private int r = 0;
  private int s = 0;
  private int t = 0;
  private byte[] u = null;
  private String v = null;
  private int w = 0;
  private long x = 0L;
  private int y = 0;
  private int z = 0;
  
  public n A()
  {
    try
    {
      if (this.d > 0L) {
        this.a = x();
      }
      this.d = 0L;
      setChanged();
      return this;
    }
    finally {}
  }
  
  public boolean B()
  {
    return this.i;
  }
  
  public boolean C()
  {
    return this.j;
  }
  
  public n a(int paramInt)
  {
    if (this.w != paramInt)
    {
      this.w = paramInt;
      if (10 == paramInt) {
        this.f = true;
      }
      setChanged();
    }
    return this;
  }
  
  public n a(int paramInt1, byte[] paramArrayOfByte, String paramString, int paramInt2)
  {
    if (this.s != paramInt2)
    {
      this.s = paramInt2;
      setChanged();
    }
    if (this.t != paramInt1)
    {
      this.t = paramInt1;
      setChanged();
    }
    if ((this.u != paramArrayOfByte) && (!Arrays.equals(this.u, paramArrayOfByte)))
    {
      this.u = paramArrayOfByte;
      this.v = paramString;
      setChanged();
    }
    return this;
  }
  
  public n a(long paramLong)
  {
    if (this.x != paramLong)
    {
      this.x = paramLong;
      setChanged();
    }
    return this;
  }
  
  public n a(boolean paramBoolean)
  {
    if (this.i != paramBoolean)
    {
      this.i = paramBoolean;
      setChanged();
    }
    return this;
  }
  
  public boolean a()
  {
    return this.h;
  }
  
  public n b(int paramInt)
  {
    if (this.y != paramInt)
    {
      this.y = paramInt;
      setChanged();
    }
    return this;
  }
  
  public n b(long paramLong)
  {
    if (this.e != paramLong)
    {
      this.e = paramLong;
      setChanged();
    }
    return this;
  }
  
  public n b(boolean paramBoolean)
  {
    if (this.h != paramBoolean)
    {
      this.h = paramBoolean;
      setChanged();
    }
    return this;
  }
  
  public boolean b()
  {
    return this.n;
  }
  
  public int c()
  {
    return this.w;
  }
  
  public n c(int paramInt)
  {
    if (this.z != paramInt)
    {
      this.z = paramInt;
      setChanged();
    }
    return this;
  }
  
  public n c(boolean paramBoolean)
  {
    if (this.n != paramBoolean)
    {
      this.n = paramBoolean;
      setChanged();
    }
    return this;
  }
  
  public Object clone()
  {
    try
    {
      Object localObject = super.clone();
      return localObject;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      localCloneNotSupportedException.printStackTrace();
    }
    return null;
  }
  
  public n d(boolean paramBoolean)
  {
    if (paramBoolean != this.q)
    {
      this.q = paramBoolean;
      setChanged();
    }
    return this;
  }
  
  public boolean d()
  {
    return this.q;
  }
  
  public n e(boolean paramBoolean)
  {
    if (paramBoolean != this.o)
    {
      this.o = paramBoolean;
      setChanged();
    }
    return this;
  }
  
  public boolean e()
  {
    return this.o;
  }
  
  public n f(boolean paramBoolean)
  {
    if (this.g != paramBoolean)
    {
      this.g = paramBoolean;
      setChanged();
    }
    return this;
  }
  
  public boolean f()
  {
    return this.f;
  }
  
  public int g()
  {
    return this.s;
  }
  
  public n g(boolean paramBoolean)
  {
    if (this.l != paramBoolean)
    {
      this.l = paramBoolean;
      setChanged();
    }
    return this;
  }
  
  public int h()
  {
    return this.t;
  }
  
  public n h(boolean paramBoolean)
  {
    if (this.k != paramBoolean)
    {
      this.k = paramBoolean;
      setChanged();
    }
    return this;
  }
  
  public n i(boolean paramBoolean)
  {
    if (this.m != paramBoolean)
    {
      this.m = paramBoolean;
      if (!paramBoolean) {
        break label30;
      }
      this.c = System.currentTimeMillis();
    }
    for (;;)
    {
      setChanged();
      return this;
      label30:
      this.c = 0L;
      this.e = 0L;
    }
  }
  
  public byte[] i()
  {
    return this.u;
  }
  
  public n j(boolean paramBoolean)
  {
    if (this.j != paramBoolean)
    {
      this.j = paramBoolean;
      setChanged();
    }
    return this;
  }
  
  public String j()
  {
    return this.v;
  }
  
  public boolean k()
  {
    return (0x2 & this.s) > 0;
  }
  
  public boolean l()
  {
    return (0x1 & this.s) > 0;
  }
  
  public boolean m()
  {
    return (0x4 & this.s) > 0;
  }
  
  public boolean n()
  {
    return this.w == 2;
  }
  
  public void notifyObservers()
  {
    notifyObservers(clone());
  }
  
  public int o()
  {
    return this.y;
  }
  
  public int p()
  {
    return this.z;
  }
  
  public boolean q()
  {
    return this.g;
  }
  
  public boolean r()
  {
    return this.l;
  }
  
  public boolean s()
  {
    return this.k;
  }
  
  public long t()
  {
    return System.currentTimeMillis() - this.b;
  }
  
  public String toString()
  {
    return "InCallState{checkpointTime=" + this.d + ", endReason=" + this.y + ", createTime=" + this.b + ", progressTime=" + this.a + ", isMuteEnabled=" + this.g + ", isHoldEnabled=" + this.h + ", isSpeakerEnabled=" + this.k + ", isDataInterrupted=" + this.q + ", callQuality=" + this.r + ", state=" + this.w + ", secureState=" + this.s + ", secureNumber=" + (0x8 & this.s) + ", securePeer=" + (0x2 & this.s) + ", secureEncripted=" + (0x1 & this.s) + ", secureBreach=" + (0x4 & this.s) + '}';
  }
  
  public boolean u()
  {
    return this.m;
  }
  
  public long v()
  {
    return this.e;
  }
  
  public long w()
  {
    return this.c;
  }
  
  public long x()
  {
    try
    {
      long l1 = this.a;
      if (this.d > 0L)
      {
        long l2 = this.a;
        long l3 = System.currentTimeMillis();
        long l4 = this.d;
        l1 = l2 + (l3 - l4);
      }
      return l1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int y()
  {
    return this.r;
  }
  
  public n z()
  {
    try
    {
      this.d = System.currentTimeMillis();
      setChanged();
      return this;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.call.n
 * JD-Core Version:    0.7.0.1
 */