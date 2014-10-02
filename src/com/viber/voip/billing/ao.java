package com.viber.voip.billing;

public class ao
  extends Exception
{
  bo a;
  
  public ao(int paramInt, String paramString)
  {
    this(new bo(paramInt, paramString));
  }
  
  public ao(int paramInt, String paramString, Exception paramException)
  {
    this(new bo(paramInt, paramString), paramException);
  }
  
  public ao(bo parambo)
  {
    this(parambo, null);
  }
  
  public ao(bo parambo, Exception paramException)
  {
    super(parambo.b(), paramException);
    this.a = parambo;
  }
  
  public bo a()
  {
    return this.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.ao
 * JD-Core Version:    0.7.0.1
 */