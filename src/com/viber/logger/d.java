package com.viber.logger;

class d
  implements Runnable
{
  private CharSequence b;
  private CharSequence c;
  private boolean d;
  private long e;
  
  public d(b paramb, long paramLong, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean)
  {
    this.b = paramCharSequence1;
    this.c = paramCharSequence2;
    this.d = paramBoolean;
    this.e = paramLong;
  }
  
  public void run()
  {
    if (this.d)
    {
      b.a(this.a).b(this.e, this.b, this.c);
      return;
    }
    b.a(this.a).a(this.e, this.b, this.c);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.logger.d
 * JD-Core Version:    0.7.0.1
 */