package com.viber.voip.messages.ui;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class dm
  implements Parcelable.Creator<MessagesFragmentModeManager.MessagesFragmentModeManagerData>
{
  public MessagesFragmentModeManager.MessagesFragmentModeManagerData a(Parcel paramParcel)
  {
    return new MessagesFragmentModeManager.MessagesFragmentModeManagerData(paramParcel);
  }
  
  public MessagesFragmentModeManager.MessagesFragmentModeManagerData[] a(int paramInt)
  {
    return new MessagesFragmentModeManager.MessagesFragmentModeManagerData[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.dm
 * JD-Core Version:    0.7.0.1
 */