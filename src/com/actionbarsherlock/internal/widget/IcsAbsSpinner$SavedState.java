package com.actionbarsherlock.internal.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class IcsAbsSpinner$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new IcsAbsSpinner.SavedState.1();
  int position;
  long selectedId;
  
  private IcsAbsSpinner$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    this.selectedId = paramParcel.readLong();
    this.position = paramParcel.readInt();
  }
  
  IcsAbsSpinner$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public String toString()
  {
    return "AbsSpinner.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.selectedId + " position=" + this.position + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeLong(this.selectedId);
    paramParcel.writeInt(this.position);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsAbsSpinner.SavedState
 * JD-Core Version:    0.7.0.1
 */