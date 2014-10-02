package com.viber.jni.publicgroup;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PublicGroupInviteReceiveListener$1
  implements ControllerListener.ControllerListenerAction<PublicGroupControllerDelegate.InviteReceive>
{
  PublicGroupInviteReceiveListener$1(PublicGroupInviteReceiveListener paramPublicGroupInviteReceiveListener, long paramLong1, String paramString1, long paramLong2, int paramInt1, String paramString2, long paramLong3, String paramString3, String paramString4, int paramInt2, int paramInt3) {}
  
  public void execute(PublicGroupControllerDelegate.InviteReceive paramInviteReceive)
  {
    paramInviteReceive.onPublicGroupInvite(this.val$messageToken, this.val$fromNumber, this.val$timeSent, this.val$messageSeq, this.val$groupUri, this.val$groupId, this.val$imageId, this.val$groupName, this.val$numWatchers, this.val$revision);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.publicgroup.PublicGroupInviteReceiveListener.1
 * JD-Core Version:    0.7.0.1
 */