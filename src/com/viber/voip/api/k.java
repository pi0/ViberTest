package com.viber.voip.api;

import android.net.Uri;
import com.viber.jni.ClientMessages.CGetGroupInfoReplyMsgStatus;
import com.viber.jni.LocationInfo;
import com.viber.jni.PublicGroupUserInfo;
import com.viber.jni.publicgroup.PublicGroupInfoReceiverListener;
import com.viber.voip.messages.conversation.publicgroup.PublicGroupConversationData;

class k
  extends PublicGroupInfoReceiverListener
{
  k(j paramj, PublicGroupInfoReceiverListener paramPublicGroupInfoReceiverListener) {}
  
  public void onPublicGroupInfo(int paramInt1, long paramLong, int paramInt2, String paramString1, int paramInt3, String paramString2, String paramString3, String paramString4, LocationInfo paramLocationInfo, String paramString5, String paramString6, String[] paramArrayOfString, PublicGroupUserInfo[] paramArrayOfPublicGroupUserInfo, int paramInt4, int paramInt5, int paramInt6, boolean paramBoolean, int paramInt7)
  {
    if (paramInt7 == ClientMessages.CGetGroupInfoReplyMsgStatus.GROUP_REPLY_OK)
    {
      PublicGroupConversationData localPublicGroupConversationData = new PublicGroupConversationData(paramLong, paramString4, Uri.parse(paramString2), paramString1, paramInt3, paramInt6);
      this.b.a.a(localPublicGroupConversationData);
    }
    for (;;)
    {
      this.a.removeDelegate(this);
      return;
      this.b.a.a(null);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.k
 * JD-Core Version:    0.7.0.1
 */