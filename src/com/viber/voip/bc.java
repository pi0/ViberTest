package com.viber.voip;

import com.viber.voip.settings.l;

public class bc
{
  private static bc a;
  private bd b;
  
  public static bc a()
  {
    if (a == null) {
      a = new bc();
    }
    return a;
  }
  
  public static bd b()
  {
    try
    {
      if (a().b == null) {
        throw new NullPointerException("ServerConfig is not initialized. Possibly you should inspect Application.onCreate()");
      }
    }
    finally {}
    bd localbd = a().b;
    return localbd;
  }
  
  public void a(l paraml)
  {
    this.b = new be(this);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.bc
 * JD-Core Version:    0.7.0.1
 */