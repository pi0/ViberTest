package com.viber.voip.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ai
  implements Parcelable.Creator<VerticalTextView.SavedState>
{
  public VerticalTextView.SavedState a(Parcel paramParcel)
  {
    return new VerticalTextView.SavedState(paramParcel);
  }
  
  public VerticalTextView.SavedState[] a(int paramInt)
  {
    return new VerticalTextView.SavedState[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.ai
 * JD-Core Version:    0.7.0.1
 */