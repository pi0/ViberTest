package com.viber.voip.market;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class x
  implements Parcelable.Creator<MarketApi.UserPublicGroupInfo>
{
  public MarketApi.UserPublicGroupInfo a(Parcel paramParcel)
  {
    return new MarketApi.UserPublicGroupInfo(paramParcel, null);
  }
  
  public MarketApi.UserPublicGroupInfo[] a(int paramInt)
  {
    return new MarketApi.UserPublicGroupInfo[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.x
 * JD-Core Version:    0.7.0.1
 */