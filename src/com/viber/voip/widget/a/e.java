package com.viber.voip.widget.a;

public class e
{
  int a;
  int b;
  long c = 5000L;
  
  public e(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }
  
  public e(int paramInt1, int paramInt2, long paramLong)
  {
    this(paramInt1, paramInt2);
    this.c = paramLong;
  }
  
  public String toString()
  {
    return "UndoBarStyle{iconRes=" + this.a + ", titleRes=" + this.b + ", duration=" + this.c + '}';
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.a.e
 * JD-Core Version:    0.7.0.1
 */