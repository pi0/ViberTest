package com.viber.voip.a;

public class au
  extends g
{
  public au()
  {
    super("Video_calls", null);
  }
  
  public x a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "Mute_On";; str = "Mute_OFF") {
      return new x("Video_calls", str, "video", null, null);
    }
  }
  
  public x c(Long paramLong)
  {
    return new x("Video_calls", "Call_Transfer_Cancel", "video", paramLong, null);
  }
  
  public x d(Long paramLong)
  {
    return new x("Video_calls", "Call_Transfer_success", "video", paramLong, null);
  }
  
  public x e(Long paramLong)
  {
    return new x("Video_calls", "End_Call", "video", paramLong, null);
  }
  
  public x f(Long paramLong)
  {
    return new x("Video_calls", "Call_ended", "video", paramLong, null);
  }
  
  public x j(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "Turn_On_Video";; str = "Turn_OFF_Video") {
      return new x("Video_calls", str, "video", null, null);
    }
  }
  
  public x m()
  {
    return new x("Video_calls", "Minimize_Call", "video", null, null);
  }
  
  public x n()
  {
    return new x("Video_calls", "Maximize_Call", "video", null, null);
  }
  
  public x o()
  {
    return new x("Video_calls", "Call_Transfer", "video", null, null);
  }
  
  public x p()
  {
    return new x("Video_calls", "Call_Transfer_Timeout", "video", null, null);
  }
  
  public x q()
  {
    return new x("Video_calls", "Send_message", "video", null, null);
  }
  
  public x r()
  {
    return new x("Video_calls", "Flip_camera", "video", null, null);
  }
  
  public x s()
  {
    return new x("Video_calls", "Send_Video", "video", null, null);
  }
  
  public x t()
  {
    return new x("Video_calls", "Receive_Video", "video", null, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.a.au
 * JD-Core Version:    0.7.0.1
 */