package com.viber.voip.messages.conversation;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class q
  implements Parcelable.Creator<ConversationLoaderPublicGroupEntity>
{
  public ConversationLoaderPublicGroupEntity a(Parcel paramParcel)
  {
    return new ConversationLoaderPublicGroupEntity(paramParcel);
  }
  
  public ConversationLoaderPublicGroupEntity[] a(int paramInt)
  {
    return new ConversationLoaderPublicGroupEntity[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.q
 * JD-Core Version:    0.7.0.1
 */