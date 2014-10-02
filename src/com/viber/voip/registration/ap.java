package com.viber.voip.registration;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ap
  implements Parcelable.Creator<CountryCode>
{
  public CountryCode a(Parcel paramParcel)
  {
    return new CountryCode(paramParcel, null);
  }
  
  public CountryCode[] a(int paramInt)
  {
    return new CountryCode[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.ap
 * JD-Core Version:    0.7.0.1
 */