package com.viber.voip.messages.ui.media;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class SendMediaDataContainer
  implements Parcelable
{
  public static final Parcelable.Creator<SendMediaDataContainer> CREATOR = new ah();
  public Uri a;
  public Uri b;
  public Uri c;
  public String d;
  public String e;
  public long f;
  public int g;
  public int h;
  public int i = 0;
  
  public SendMediaDataContainer() {}
  
  SendMediaDataContainer(Parcel paramParcel)
  {
    ClassLoader localClassLoader = getClass().getClassLoader();
    this.a = ((Uri)paramParcel.readParcelable(localClassLoader));
    this.b = ((Uri)paramParcel.readParcelable(localClassLoader));
    this.c = ((Uri)paramParcel.readParcelable(localClassLoader));
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readLong();
    this.g = paramParcel.readInt();
    this.h = paramParcel.readInt();
    this.i = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "SendMediaDataContainer{fileUri=" + this.a + ", croppedImage=" + this.b + ", thumbnailUri=" + this.c + ", type='" + this.d + '\'' + ", description='" + this.e + '\'' + ", duration=" + this.f + ", thumbnailWidth=" + this.g + ", thumbnailHeight=" + this.h + ", mediaFlag=" + this.i + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.a, 0);
    paramParcel.writeParcelable(this.b, 0);
    paramParcel.writeParcelable(this.c, 0);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeLong(this.f);
    paramParcel.writeInt(this.g);
    paramParcel.writeInt(this.h);
    paramParcel.writeInt(this.i);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.SendMediaDataContainer
 * JD-Core Version:    0.7.0.1
 */