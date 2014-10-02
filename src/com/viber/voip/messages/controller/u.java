package com.viber.voip.messages.controller;

import java.util.HashMap;
import java.util.Map;

public class u
{
  private int b;
  private int c = 0;
  private Map<String, Integer> d;
  
  public u(r paramr, int paramInt1, int paramInt2)
  {
    this.c = paramInt2;
    this.b = paramInt1;
  }
  
  public int a()
  {
    return this.b;
  }
  
  public boolean a(int paramInt, String paramString)
  {
    if (paramInt != 1)
    {
      if (this.d == null) {
        this.d = new HashMap();
      }
      this.d.put(paramString, Integer.valueOf(paramInt));
    }
    this.c = (-1 + this.c);
    return this.c <= 0;
  }
  
  public Map<String, Integer> b()
  {
    return this.d;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.u
 * JD-Core Version:    0.7.0.1
 */