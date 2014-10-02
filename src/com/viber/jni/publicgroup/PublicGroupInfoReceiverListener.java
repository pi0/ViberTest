package com.viber.jni.publicgroup;

import com.viber.jni.LocationInfo;
import com.viber.jni.PublicGroupUserInfo;
import com.viber.jni.controller.ControllerListener;

public class PublicGroupInfoReceiverListener
  extends ControllerListener<PublicGroupControllerDelegate.PublicGroupInfoReceiver>
  implements PublicGroupControllerDelegate.PublicGroupInfoReceiver
{
  public void onPublicGroupInfo(int paramInt1, long paramLong, int paramInt2, String paramString1, int paramInt3, String paramString2, String paramString3, String paramString4, LocationInfo paramLocationInfo, String paramString5, String paramString6, String[] paramArrayOfString, PublicGroupUserInfo[] paramArrayOfPublicGroupUserInfo, int paramInt4, int paramInt5, int paramInt6, boolean paramBoolean, int paramInt7)
  {
    notifyListeners(new PublicGroupInfoReceiverListener.1(this, paramInt1, paramLong, paramInt2, paramString1, paramInt3, paramString2, paramString3, paramString4, paramLocationInfo, paramString5, paramString6, paramArrayOfString, paramArrayOfPublicGroupUserInfo, paramInt4, paramInt5, paramInt6, paramBoolean, paramInt7));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.publicgroup.PublicGroupInfoReceiverListener
 * JD-Core Version:    0.7.0.1
 */