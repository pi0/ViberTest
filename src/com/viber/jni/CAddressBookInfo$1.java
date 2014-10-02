package com.viber.jni;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class CAddressBookInfo$1
  implements Parcelable.Creator<CAddressBookInfo>
{
  public CAddressBookInfo createFromParcel(Parcel paramParcel)
  {
    return new CAddressBookInfo(paramParcel);
  }
  
  public CAddressBookInfo[] newArray(int paramInt)
  {
    return new CAddressBookInfo[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.CAddressBookInfo.1
 * JD-Core Version:    0.7.0.1
 */