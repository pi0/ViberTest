package com.viber.voip.messages.conversation.publicgroup;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class at
  implements Parcelable.Creator<PublicGroupDataLoaderEntity>
{
  public PublicGroupDataLoaderEntity a(Parcel paramParcel)
  {
    return new PublicGroupDataLoaderEntity(paramParcel);
  }
  
  public PublicGroupDataLoaderEntity[] a(int paramInt)
  {
    return new PublicGroupDataLoaderEntity[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.at
 * JD-Core Version:    0.7.0.1
 */