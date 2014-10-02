package com.viber.jni;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class OnlineContactInfo$1
  implements Parcelable.Creator<OnlineContactInfo>
{
  public OnlineContactInfo createFromParcel(Parcel paramParcel)
  {
    return new OnlineContactInfo(paramParcel);
  }
  
  public OnlineContactInfo[] newArray(int paramInt)
  {
    return new OnlineContactInfo[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.OnlineContactInfo.1
 * JD-Core Version:    0.7.0.1
 */