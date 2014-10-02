package com.android.camera;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class r
  implements Parcelable.Creator<ImageManager.ImageListParam>
{
  public ImageManager.ImageListParam a(Parcel paramParcel)
  {
    return new ImageManager.ImageListParam(paramParcel, null);
  }
  
  public ImageManager.ImageListParam[] a(int paramInt)
  {
    return new ImageManager.ImageListParam[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.camera.r
 * JD-Core Version:    0.7.0.1
 */