package com.viber.voip.widget;

public enum v
{
  public final String c;
  
  static
  {
    v[] arrayOfv = new v[2];
    arrayOfv[0] = a;
    arrayOfv[1] = b;
    d = arrayOfv;
  }
  
  private v(String paramString)
  {
    this.c = paramString;
  }
  
  public static v a(String paramString)
  {
    if (a.c.equals(paramString)) {
      return a;
    }
    if (b.c.equals(paramString)) {
      return b;
    }
    throw new IllegalStateException("direction must be either " + a.c + " or " + b.c);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.v
 * JD-Core Version:    0.7.0.1
 */