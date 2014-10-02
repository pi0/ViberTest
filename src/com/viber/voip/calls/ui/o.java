package com.viber.voip.calls.ui;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class o
  implements Parcelable.Creator<PhoneFragmentModeManager.PhoneFragmentModeManagerData>
{
  public PhoneFragmentModeManager.PhoneFragmentModeManagerData a(Parcel paramParcel)
  {
    return new PhoneFragmentModeManager.PhoneFragmentModeManagerData(paramParcel, null);
  }
  
  public PhoneFragmentModeManager.PhoneFragmentModeManagerData[] a(int paramInt)
  {
    return new PhoneFragmentModeManager.PhoneFragmentModeManagerData[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.ui.o
 * JD-Core Version:    0.7.0.1
 */