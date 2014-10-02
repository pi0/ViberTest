package com.viber.jni.publicgroup;

import com.viber.jni.controller.ControllerListener;

public class PublicGroupInviteReceiveListener
  extends ControllerListener<PublicGroupControllerDelegate.InviteReceive>
  implements PublicGroupControllerDelegate.InviteReceive
{
  public boolean onPublicGroupInvite(long paramLong1, String paramString1, long paramLong2, int paramInt1, String paramString2, long paramLong3, String paramString3, String paramString4, int paramInt2, int paramInt3)
  {
    notifyListeners(new PublicGroupInviteReceiveListener.1(this, paramLong1, paramString1, paramLong2, paramInt1, paramString2, paramLong3, paramString3, paramString4, paramInt2, paramInt3));
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.publicgroup.PublicGroupInviteReceiveListener
 * JD-Core Version:    0.7.0.1
 */