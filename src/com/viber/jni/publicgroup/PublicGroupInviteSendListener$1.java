package com.viber.jni.publicgroup;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;
import java.util.Map;

class PublicGroupInviteSendListener$1
  implements ControllerListener.ControllerListenerAction<PublicGroupControllerDelegate.InviteSend>
{
  PublicGroupInviteSendListener$1(PublicGroupInviteSendListener paramPublicGroupInviteSendListener, int paramInt1, long paramLong, int paramInt2, Map paramMap) {}
  
  public void execute(PublicGroupControllerDelegate.InviteSend paramInviteSend)
  {
    paramInviteSend.onSendPublicGroupInviteReply(this.val$seq, this.val$token, this.val$status, this.val$failures);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.publicgroup.PublicGroupInviteSendListener.1
 * JD-Core Version:    0.7.0.1
 */