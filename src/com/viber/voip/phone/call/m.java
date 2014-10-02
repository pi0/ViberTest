package com.viber.voip.phone.call;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class m
  implements Parcelable.Creator<CallerInfo>
{
  public CallerInfo a(Parcel paramParcel)
  {
    return new CallerInfo(paramParcel);
  }
  
  public CallerInfo[] a(int paramInt)
  {
    return new CallerInfo[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.call.m
 * JD-Core Version:    0.7.0.1
 */