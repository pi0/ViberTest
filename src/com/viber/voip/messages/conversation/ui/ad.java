package com.viber.voip.messages.conversation.ui;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ad
  implements Parcelable.Creator<ConversationData>
{
  public ConversationData a(Parcel paramParcel)
  {
    return new ConversationData(paramParcel);
  }
  
  public ConversationData[] a(int paramInt)
  {
    return new ConversationData[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.ad
 * JD-Core Version:    0.7.0.1
 */