package com.viber.voip.calls.entities.impl;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class d
  implements Parcelable.Creator<CallEntityImpl>
{
  public CallEntityImpl a(Parcel paramParcel)
  {
    return new CallEntityImpl(paramParcel, null);
  }
  
  public CallEntityImpl[] a(int paramInt)
  {
    return new CallEntityImpl[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.entities.impl.d
 * JD-Core Version:    0.7.0.1
 */