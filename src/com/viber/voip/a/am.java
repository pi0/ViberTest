package com.viber.voip.a;

public class am
  extends c
{
  public final c a = new c("Preview_Photo", null);
  public final c b = new c("Preview_Video", null);
  public final x c = new x("Messages", "Send_Photo", "Messaging", null, null);
  public final x d = new x("Messages", "Send_Photo_With_description", "Messaging", null, null);
  public final x e = new x("Messages", "Send_Video", "Messaging", null, null);
  public final x f = new x("Messages", "Send_Video_With_description", "Messaging", null, null);
  
  public am()
  {
    super("Send_Media", null);
    a("Messages");
  }
  
  public final x a(long paramLong)
  {
    return new x(b(), "Send_Photo_With_description", "Messaging", Long.valueOf(paramLong), null);
  }
  
  public final x b(long paramLong)
  {
    return new x(b(), "Send_Video_With_description", "Messaging", Long.valueOf(paramLong), null);
  }
  
  public final x c()
  {
    return new x(b(), "Send_Photo", "Messaging", null, null);
  }
  
  public final x d()
  {
    return new x(b(), "Send_Video", "Messaging", null, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.a.am
 * JD-Core Version:    0.7.0.1
 */