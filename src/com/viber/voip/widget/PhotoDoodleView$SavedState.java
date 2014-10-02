package com.viber.voip.widget;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class PhotoDoodleView$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new u();
  Bitmap a;
  Bitmap b;
  boolean c;
  boolean d;
  t e;
  float f;
  
  PhotoDoodleView$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    ClassLoader localClassLoader = getClass().getClassLoader();
    this.a = ((Bitmap)paramParcel.readParcelable(localClassLoader));
    this.b = ((Bitmap)paramParcel.readParcelable(localClassLoader));
    boolean bool2;
    if (paramParcel.readInt() != 0)
    {
      bool2 = bool1;
      this.c = bool2;
      if (paramParcel.readInt() == 0) {
        break label104;
      }
    }
    for (;;)
    {
      this.d = bool1;
      this.f = paramParcel.readFloat();
      int i = paramParcel.readInt();
      if (i > -1) {
        this.e = t.values()[i];
      }
      return;
      bool2 = false;
      break;
      label104:
      bool1 = false;
    }
  }
  
  PhotoDoodleView$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(this.a, paramInt);
    paramParcel.writeParcelable(this.b, paramInt);
    int j;
    if (this.c)
    {
      j = i;
      paramParcel.writeInt(j);
      if (!this.d) {
        break label91;
      }
      label49:
      paramParcel.writeInt(i);
      paramParcel.writeFloat(this.f);
      if (this.e == null) {
        break label96;
      }
    }
    label91:
    label96:
    for (int k = this.e.ordinal();; k = -1)
    {
      paramParcel.writeInt(k);
      return;
      j = 0;
      break;
      i = 0;
      break label49;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.PhotoDoodleView.SavedState
 * JD-Core Version:    0.7.0.1
 */