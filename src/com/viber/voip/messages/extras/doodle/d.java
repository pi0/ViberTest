package com.viber.voip.messages.extras.doodle;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class d
  implements Parcelable.Creator<DoodleDrawingPanel.SavedState>
{
  public DoodleDrawingPanel.SavedState a(Parcel paramParcel)
  {
    return new DoodleDrawingPanel.SavedState(paramParcel, null);
  }
  
  public DoodleDrawingPanel.SavedState[] a(int paramInt)
  {
    return new DoodleDrawingPanel.SavedState[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.doodle.d
 * JD-Core Version:    0.7.0.1
 */