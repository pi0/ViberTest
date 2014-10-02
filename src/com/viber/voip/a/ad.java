package com.viber.voip.a;

public class ad
  extends c
{
  private final x a = new x("Messages", "Select", "Edit", null, null);
  private final x b = new x("Messages", "Enter_Suggested", "Enhancement", null, null);
  
  private ad(String paramString)
  {
    super(paramString, null);
    a("Messages");
  }
  
  public final x a(long paramLong)
  {
    return new x("Messages", "Delete_conversations", "Edit", Long.valueOf(paramLong), null);
  }
  
  public x a(Long paramLong)
  {
    return new x(b(), "Finish_Recording", "Voice_Messages", paramLong, null);
  }
  
  public final x c()
  {
    return this.a;
  }
  
  public final x d()
  {
    return this.b;
  }
  
  public x e()
  {
    return new x(b(), "Open_Button", "Voice_Messages", null, null);
  }
  
  public x f()
  {
    return new x(b(), "Start_Recording", "Voice_Messages", null, null);
  }
  
  public x g()
  {
    return new x(b(), "Play_Incoming_voice_message", "Voice_Messages", null, null);
  }
  
  public x h()
  {
    return new x(b(), "Play_outgoing_voice_message", "Voice_Messages", null, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.a.ad
 * JD-Core Version:    0.7.0.1
 */