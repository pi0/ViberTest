package com.viber.voip.gallery;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class GalleryItem
  implements Parcelable
{
  public static final Parcelable.Creator<GalleryItem> CREATOR = new a();
  private Uri a;
  private Uri b;
  private String c;
  
  public GalleryItem() {}
  
  GalleryItem(Parcel paramParcel)
  {
    ClassLoader localClassLoader = getClass().getClassLoader();
    this.a = ((Uri)paramParcel.readParcelable(localClassLoader));
    this.b = ((Uri)paramParcel.readParcelable(localClassLoader));
    this.c = paramParcel.readString();
  }
  
  public static GalleryItem a(Uri paramUri)
  {
    GalleryItem localGalleryItem = new GalleryItem();
    localGalleryItem.a = paramUri;
    localGalleryItem.b = paramUri;
    return localGalleryItem;
  }
  
  public Uri a()
  {
    return this.a;
  }
  
  public void a(String paramString)
  {
    this.c = paramString;
  }
  
  public Uri b()
  {
    return this.b;
  }
  
  public void b(Uri paramUri)
  {
    this.a = paramUri;
  }
  
  public String c()
  {
    return this.c;
  }
  
  public boolean d()
  {
    return (this.a != null) && (!this.a.equals(this.b));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    GalleryItem localGalleryItem;
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (!(paramObject instanceof GalleryItem)) {
          return false;
        }
        localGalleryItem = (GalleryItem)paramObject;
        if (this.b != null) {
          break;
        }
      } while (localGalleryItem.b == null);
      return false;
    } while (this.b.equals(localGalleryItem.b));
    return false;
  }
  
  public int hashCode()
  {
    if (this.b == null) {}
    for (int i = 0;; i = this.b.hashCode()) {
      return i + 31;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("GalleryItem [imageUri=").append(this.a).append(", originalUri=").append(this.b).append(", description=").append(this.c).append("]");
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.a, 0);
    paramParcel.writeParcelable(this.b, 0);
    paramParcel.writeString(this.c);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.GalleryItem
 * JD-Core Version:    0.7.0.1
 */