package com.viber.voip.messages.extras.doodle;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class DoodleDrawingPanel$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new d();
  private Bundle a;
  
  private DoodleDrawingPanel$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.readBundle();
  }
  
  DoodleDrawingPanel$SavedState(Parcelable paramParcelable, Bundle paramBundle)
  {
    super(paramParcelable);
    this.a = paramBundle;
  }
  
  public Bundle a()
  {
    return this.a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeBundle(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.doodle.DoodleDrawingPanel.SavedState
 * JD-Core Version:    0.7.0.1
 */