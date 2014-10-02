package com.viber.voip.messages.conversation;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class p
  implements Parcelable.Creator<ConversationLoaderEntity>
{
  public ConversationLoaderEntity a(Parcel paramParcel)
  {
    return new ConversationLoaderEntity(paramParcel);
  }
  
  public ConversationLoaderEntity[] a(int paramInt)
  {
    return new ConversationLoaderEntity[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.p
 * JD-Core Version:    0.7.0.1
 */