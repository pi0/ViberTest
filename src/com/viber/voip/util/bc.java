package com.viber.voip.util;

class bc
{
  String a;
  long b;
  int c;
  int d;
  
  bc(bb parambb, String paramString)
  {
    this.a = paramString;
  }
  
  long a()
  {
    switch (this.c)
    {
    default: 
      return Math.max(c(), this.b + bb.c(this.e));
    case 0: 
      return System.currentTimeMillis();
    case 1: 
      return this.b + bb.a(this.e);
    case 2: 
      return this.b + bb.b(this.e);
    }
    return this.b + bb.c(this.e);
  }
  
  void b()
  {
    if ((this.c >= 4) && (d())) {
      this.c = 0;
    }
    this.c = (1 + this.c);
    this.d = (1 + this.d);
    this.b = System.currentTimeMillis();
  }
  
  long c()
  {
    long l = System.currentTimeMillis();
    if (l >= bb.d(this.e))
    {
      bb.a(this.e, bb.b(this.e, l));
      bb.c(this.e, bb.e(this.e) + bb.f(this.e));
      bb.d("getNextAttemptMinTime() new day, mCurDayStart: " + bb.d(this.e, bb.e(this.e)) + ", mNextDayStart: " + bb.d(this.e, bb.d(this.e)));
    }
    if (this.b < bb.e(this.e))
    {
      this.c = 0;
      return l;
    }
    return bb.d(this.e);
  }
  
  boolean d()
  {
    return System.currentTimeMillis() >= a();
  }
  
  public String toString()
  {
    return "Item{" + this.a + " count:" + this.c + "/" + this.d + " next:" + bb.d(this.e, a()) + "}";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.bc
 * JD-Core Version:    0.7.0.1
 */