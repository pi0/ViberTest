package com.viber.voip.billing;

import java.util.Map;

public abstract class ac
  extends k
{
  an g;
  
  public ac(a parama)
  {
    super(parama);
  }
  
  public void b()
  {
    a.a(this.h, new ad(this));
  }
  
  protected void b(Map<String, String> paramMap)
  {
    if (this.g != null)
    {
      paramMap.put("token", this.g.b);
      paramMap.put("ts", Long.toString(this.g.a));
      return;
    }
    a(s.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.ac
 * JD-Core Version:    0.7.0.1
 */