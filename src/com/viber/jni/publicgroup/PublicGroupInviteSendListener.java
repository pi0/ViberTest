package com.viber.jni.publicgroup;

import com.viber.jni.controller.ControllerListener;
import java.util.Map;

public class PublicGroupInviteSendListener
  extends ControllerListener<PublicGroupControllerDelegate.InviteSend>
  implements PublicGroupControllerDelegate.InviteSend
{
  public void onSendPublicGroupInviteReply(int paramInt1, long paramLong, int paramInt2, Map<String, Integer> paramMap)
  {
    notifyListeners(new PublicGroupInviteSendListener.1(this, paramInt1, paramLong, paramInt2, paramMap));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.publicgroup.PublicGroupInviteSendListener
 * JD-Core Version:    0.7.0.1
 */