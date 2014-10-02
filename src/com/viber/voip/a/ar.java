package com.viber.voip.a;

public class ar
  extends g
{
  private final c d = new c("VI_Ongoing", null);
  private final c e = new c("VI_Hold", null);
  private final c f = new c("VI_Being held", null);
  private final c g = new c("VI_Disconnected", null);
  private final c h = new c("VI_Failed", null);
  private final c i = new c("VI_Ended", null);
  private final c j = new c("VI_Busy", null);
  
  public ar()
  {
    super("Viber_in", null);
  }
  
  public x b(String paramString)
  {
    return new x("Calls", "Incoming_Viber_in_call", paramString, null, null);
  }
  
  public c e()
  {
    return this.d;
  }
  
  public c f()
  {
    return this.e;
  }
  
  public c g()
  {
    return this.f;
  }
  
  public c h()
  {
    return this.g;
  }
  
  public c i()
  {
    return this.h;
  }
  
  public c j()
  {
    return this.i;
  }
  
  public c k()
  {
    return this.j;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.a.ar
 * JD-Core Version:    0.7.0.1
 */