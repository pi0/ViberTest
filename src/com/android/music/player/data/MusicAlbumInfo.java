package com.android.music.player.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class MusicAlbumInfo
  implements Parcelable
{
  public static final Parcelable.Creator<MusicAlbumInfo> CREATOR = new a();
  public String a;
  public int b;
  public String c;
  public String d;
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.c);
    paramParcel.writeInt(this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.music.player.data.MusicAlbumInfo
 * JD-Core Version:    0.7.0.1
 */