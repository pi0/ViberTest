package com.viber.voip.messages.conversation.publicgroup;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.viber.voip.messages.conversation.ui.ConversationData;

final class ac
  implements Parcelable.Creator<ConversationData>
{
  public ConversationData a(Parcel paramParcel)
  {
    return new PublicGroupConversationData(paramParcel);
  }
  
  public ConversationData[] a(int paramInt)
  {
    return new PublicGroupConversationData[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.ac
 * JD-Core Version:    0.7.0.1
 */