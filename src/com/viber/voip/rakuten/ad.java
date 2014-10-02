package com.viber.voip.rakuten;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ad
  implements Parcelable.Creator<RakutenUrlSchemeData>
{
  public RakutenUrlSchemeData a(Parcel paramParcel)
  {
    return new RakutenUrlSchemeData(paramParcel);
  }
  
  public RakutenUrlSchemeData[] a(int paramInt)
  {
    return new RakutenUrlSchemeData[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.rakuten.ad
 * JD-Core Version:    0.7.0.1
 */