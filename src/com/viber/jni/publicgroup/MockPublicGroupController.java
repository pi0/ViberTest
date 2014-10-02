package com.viber.jni.publicgroup;

public class MockPublicGroupController
  implements PublicGroupController
{
  private PublicGroupControllerDelegate.InviteReceive mInviteReceiveListener;
  private PublicGroupControllerDelegate.InviteSend mInviteSendListener;
  
  public MockPublicGroupController(PublicGroupControllerDelegate.InviteSend paramInviteSend, PublicGroupControllerDelegate.InviteReceive paramInviteReceive)
  {
    this.mInviteSendListener = paramInviteSend;
    this.mInviteReceiveListener = paramInviteReceive;
  }
  
  public boolean handleSendPublicGroupInvite(int paramInt, String[] paramArrayOfString, long paramLong)
  {
    for (int i = 0; i < paramArrayOfString.length; i++) {
      this.mInviteReceiveListener.onPublicGroupInvite(System.currentTimeMillis(), paramArrayOfString[i], System.currentTimeMillis(), paramInt, "", paramLong, "8d24ff38e4f970f2f753f63fb098c9035affe8a2dd89372f68ffa107a7a763cb", "Ð Ð¾ÑÐ»ÑŒ Ð² ÐºÑƒÑÑ‚Ð°Ñ…", i * 10000, 1);
    }
    this.mInviteSendListener.onSendPublicGroupInviteReply(paramInt, System.currentTimeMillis(), 0, null);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.publicgroup.MockPublicGroupController
 * JD-Core Version:    0.7.0.1
 */