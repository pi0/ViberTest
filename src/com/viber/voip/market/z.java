package com.viber.voip.market;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class z
  implements Parcelable.Creator<MarketPublicGroupInfo>
{
  public MarketPublicGroupInfo a(Parcel paramParcel)
  {
    return new MarketPublicGroupInfo(paramParcel);
  }
  
  public MarketPublicGroupInfo[] a(int paramInt)
  {
    return new MarketPublicGroupInfo[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.z
 * JD-Core Version:    0.7.0.1
 */