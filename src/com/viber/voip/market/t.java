package com.viber.voip.market;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class t
  implements Parcelable.Creator
{
  public MarketApi.ProductInfo a(Parcel paramParcel)
  {
    return new MarketApi.ProductInfo(paramParcel);
  }
  
  public MarketApi.ProductInfo[] a(int paramInt)
  {
    return new MarketApi.ProductInfo[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.t
 * JD-Core Version:    0.7.0.1
 */