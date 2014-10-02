package com.viber.jni.publicgroup;

import com.viber.jni.LocationInfo;
import com.viber.jni.PublicGroupUserInfo;
import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PublicGroupInfoReceiverListener$1
  implements ControllerListener.ControllerListenerAction<PublicGroupControllerDelegate.PublicGroupInfoReceiver>
{
  PublicGroupInfoReceiverListener$1(PublicGroupInfoReceiverListener paramPublicGroupInfoReceiverListener, int paramInt1, long paramLong, int paramInt2, String paramString1, int paramInt3, String paramString2, String paramString3, String paramString4, LocationInfo paramLocationInfo, String paramString5, String paramString6, String[] paramArrayOfString, PublicGroupUserInfo[] paramArrayOfPublicGroupUserInfo, int paramInt4, int paramInt5, int paramInt6, boolean paramBoolean, int paramInt7) {}
  
  public void execute(PublicGroupControllerDelegate.PublicGroupInfoReceiver paramPublicGroupInfoReceiver)
  {
    paramPublicGroupInfoReceiver.onPublicGroupInfo(this.val$seq, this.val$groupID, this.val$groupType, this.val$groupUri, this.val$revision, this.val$iconID, this.val$backgroundID, this.val$groupName, this.val$location, this.val$country, this.val$tagLine, this.val$tags, this.val$members, this.val$groupRole, this.val$lastMessageID, this.val$watchersCount, this.val$verified, this.val$status);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.publicgroup.PublicGroupInfoReceiverListener.1
 * JD-Core Version:    0.7.0.1
 */