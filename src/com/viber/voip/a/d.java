package com.viber.voip.a;

public class d
  extends c
{
  private final x a = new x("Activation", "Timeout", "", null, null);
  private final x b = new x("Activation", "Get_call", "", null, null);
  
  public d()
  {
    super("Activation", null);
  }
  
  public final x a(long paramLong)
  {
    return new x("Activation", "Auto_insert", "", Long.valueOf(paramLong), null);
  }
  
  public final x c()
  {
    return this.a;
  }
  
  public final x d()
  {
    return this.b;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.a.d
 * JD-Core Version:    0.7.0.1
 */