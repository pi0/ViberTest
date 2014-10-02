package com.viber.voip.a;

public class g
  extends c
{
  public final x a = new x("Calls", "Initiate_call_Contacts_badge", "Calls", null, null);
  public final x b = new x("Calls", "Initiate_call_Synced_account", "Calls", null, null);
  public final x c = new x("Calls", "Initiate_call_Redail", "Calls", null, null);
  
  private g()
  {
    super("Calls", null);
  }
  
  private g(String paramString)
  {
    super(paramString, null);
  }
  
  private String j(boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder().append("Initiate_");
    if (paramBoolean) {}
    for (String str = "VO_";; str = "") {
      return str + "call_";
    }
  }
  
  public x a(Long paramLong)
  {
    return new x("Calls", "Answer", "", paramLong, null);
  }
  
  public x a(String paramString, Long paramLong)
  {
    return new x("Calls", "With_message", paramString, paramLong, null);
  }
  
  public x a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "Mute_On";; str = "Mute_OFF") {
      return new x("Calls", str, "", null, null);
    }
  }
  
  public x b(Long paramLong)
  {
    return new x("Calls", "Ignore", "", paramLong, null);
  }
  
  public x b(String paramString)
  {
    return new x("Calls", "Incoming_call", paramString, null, null);
  }
  
  public x b(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "Speaker_On";; str = "Speaker_OFF") {
      return new x("Calls", str, "", null, null);
    }
  }
  
  public c c()
  {
    return new c("Calling", null);
  }
  
  public x c(Long paramLong)
  {
    return new x("Calls", "Call_Transfer_Cancel", "", paramLong, null);
  }
  
  public x c(boolean paramBoolean)
  {
    return new x("Calls", j(paramBoolean) + "Recent_icon", "Calls", null, null);
  }
  
  public c d()
  {
    return new c("Ringing", null);
  }
  
  public x d(Long paramLong)
  {
    return new x("Calls", "Call_Transfer_success", "", paramLong, null);
  }
  
  public x d(boolean paramBoolean)
  {
    return new x("Calls", j(paramBoolean) + "Keypad", "Calls", null, null);
  }
  
  public c e()
  {
    return new c("Ongoing", null);
  }
  
  public x e(Long paramLong)
  {
    return new x("Calls", "End_Call", "", paramLong, null);
  }
  
  public x e(boolean paramBoolean)
  {
    return new x("Calls", j(paramBoolean) + "Contact-info", "Calls", null, null);
  }
  
  public c f()
  {
    return new c("Hold", null);
  }
  
  public x f(Long paramLong)
  {
    return new x("Calls", "Call_ended", "", paramLong, null);
  }
  
  public x f(boolean paramBoolean)
  {
    return new x("Calls", j(paramBoolean) + "1on1", "Calls", null, null);
  }
  
  public c g()
  {
    return new c("Being held", null);
  }
  
  public x g(boolean paramBoolean)
  {
    return new x("Calls", j(paramBoolean) + "Group", "Calls", null, null);
  }
  
  public c h()
  {
    return new c("Disconnected", null);
  }
  
  public x h(boolean paramBoolean)
  {
    return new x("Calls", j(paramBoolean) + "End_call_screen", "Calls", null, null);
  }
  
  public c i()
  {
    return new c("Failed", null);
  }
  
  public x i(boolean paramBoolean)
  {
    return new x("Calls", j(paramBoolean) + "Synced_account", "Calls", null, null);
  }
  
  public c j()
  {
    return new c("Ended", null);
  }
  
  public c k()
  {
    return new c("Busy", null);
  }
  
  public x l()
  {
    return new x("Calls", "Keypad_open", "", null, null);
  }
  
  public x m()
  {
    return new x("Calls", "Minimize_Call", "", null, null);
  }
  
  public x n()
  {
    return new x("Calls", "Maximize_Call", "", null, null);
  }
  
  public x o()
  {
    return new x("Calls", "Call_Transfer", "", null, null);
  }
  
  public x p()
  {
    return new x("Calls", "Call_Transfer_Timeout", "", null, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.a.g
 * JD-Core Version:    0.7.0.1
 */