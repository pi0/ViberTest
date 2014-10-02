package com.viber.voip.gallery;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator<GalleryItem>
{
  public GalleryItem a(Parcel paramParcel)
  {
    return new GalleryItem(paramParcel);
  }
  
  public GalleryItem[] a(int paramInt)
  {
    return new GalleryItem[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.a
 * JD-Core Version:    0.7.0.1
 */