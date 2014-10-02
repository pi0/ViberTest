package com.viber.voip.a;

public class m
  extends c
{
  public q a;
  public final ac b = new ac(null);
  public final ax c = new ax();
  public final ay d = new ay();
  public final av e = new av();
  public final k f = new k();
  public final ai g = new ai(null);
  private final x h = new x("Messages", "Send_Text", "Messaging", null, null);
  private final x i = new x("Messages", "Video_button", "Messaging", null, null);
  private final x j = new x("Messages", "Send_Custom_Location", "Messaging", null, null);
  private final x k = new x("Messages", "Load_Earlier_message", "Messaging", null, null);
  private final x l = new x("Messages", "Swipe_to_quick_messages", "Navigation", null, null);
  private final x m = new x("Messages", "Tap_on_conversation", "Navigation", null, null);
  private final x n = new x("Messages", "Send_Doodle", "Messaging", null, null);
  
  private m(String paramString)
  {
    super(paramString, null);
    a("Messages");
  }
  
  public final x a(n paramn)
  {
    return new x(b(), "Tap_on_" + paramn.a(), "Messaging", null, null);
  }
  
  public final x a(boolean paramBoolean)
  {
    String str1 = b();
    StringBuilder localStringBuilder = new StringBuilder().append("Attached_Location_");
    if (paramBoolean) {}
    for (String str2 = "ON";; str2 = "OFF") {
      return new x(str1, str2, "Messaging", null, null);
    }
  }
  
  public final x b(n paramn)
  {
    return new x(b(), "Cancel_Sending_" + paramn.a(), "Messaging", null, null);
  }
  
  public void b(String paramString)
  {
    a(paramString);
    this.b.a(paramString);
    this.c.a(paramString);
    this.d.a(paramString);
    this.e.a(paramString);
    this.f.a(paramString);
    this.g.a(paramString);
  }
  
  public final x c()
  {
    return new x(b(), "Send_Text", "Messaging", null, null);
  }
  
  public final x d()
  {
    return new x(b(), "Video_button", "Messaging", null, null);
  }
  
  public final x e()
  {
    return new x(b(), "Send_Custom_Location", "Messaging", null, null);
  }
  
  public final x f()
  {
    return new x(b(), "Swipe_to_quick_messages", "Navigation", null, null);
  }
  
  public final x g()
  {
    return new x(b(), "Tap_on_conversation", "Navigation", null, null);
  }
  
  public final x h()
  {
    return new x("Messages", "Send_Doodle", "Messaging", null, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.a.m
 * JD-Core Version:    0.7.0.1
 */