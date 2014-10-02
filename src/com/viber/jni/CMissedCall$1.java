package com.viber.jni;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class CMissedCall$1
  implements Parcelable.Creator<CMissedCall>
{
  public CMissedCall createFromParcel(Parcel paramParcel)
  {
    return new CMissedCall(paramParcel);
  }
  
  public CMissedCall[] newArray(int paramInt)
  {
    return new CMissedCall[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.CMissedCall.1
 * JD-Core Version:    0.7.0.1
 */