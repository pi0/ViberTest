package com.android.camera;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ImageManager$ImageListParam
  implements Parcelable
{
  public static final Parcelable.Creator<ImageListParam> CREATOR = new r();
  public p a;
  public int b;
  public int c;
  public String d;
  public Uri e;
  public boolean f;
  
  public ImageManager$ImageListParam() {}
  
  private ImageManager$ImageListParam(Parcel paramParcel)
  {
    this.a = p.values()[paramParcel.readInt()];
    this.b = paramParcel.readInt();
    this.c = paramParcel.readInt();
    this.d = paramParcel.readString();
    this.e = ((Uri)paramParcel.readParcelable(null));
    if (paramParcel.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.f = bool;
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = this.a;
    arrayOfObject[1] = Integer.valueOf(this.b);
    arrayOfObject[2] = Integer.valueOf(this.c);
    arrayOfObject[3] = this.d;
    arrayOfObject[4] = Boolean.valueOf(this.f);
    arrayOfObject[5] = this.e;
    return String.format("ImageListParam{loc=%s,inc=%d,sort=%d,bucket=%s,empty=%b,single=%s}", arrayOfObject);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a.ordinal());
    paramParcel.writeInt(this.b);
    paramParcel.writeInt(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeParcelable(this.e, paramInt);
    if (this.f) {}
    for (int i = 1;; i = 0)
    {
      paramParcel.writeInt(i);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.android.camera.ImageManager.ImageListParam
 * JD-Core Version:    0.7.0.1
 */