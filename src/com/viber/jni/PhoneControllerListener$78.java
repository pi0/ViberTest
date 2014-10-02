package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$78
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$78(PhoneControllerListener paramPhoneControllerListener, long paramLong1, int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3, long paramLong2, long paramLong3, int paramInt4, String paramString3, GroupAddedMember[] paramArrayOfGroupAddedMember, int paramInt5, String paramString4, String paramString5, String paramString6, String[] paramArrayOfString, LocationInfo paramLocationInfo, String paramString7, int paramInt6) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onPublicGroupChanged(this.val$groupId, this.val$revision, this.val$clientName, this.val$phoneNumber, this.val$msgType, this.val$flags, this.val$timeChanged, this.val$msgToken, this.val$messageID, this.val$groupName, this.val$addedMembers, this.val$changedAttributesFlags, this.val$iconID, this.val$backgroundID, this.val$tagLine, this.val$tags, this.val$location, this.val$country, this.val$numWatchers);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.78
 * JD-Core Version:    0.7.0.1
 */