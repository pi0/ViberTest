package com.android.music.player.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator<MusicAlbumInfo>
{
  public MusicAlbumInfo a(Parcel paramParcel)
  {
    MusicAlbumInfo localMusicAlbumInfo = new MusicAlbumInfo();
    localMusicAlbumInfo.d = paramParcel.readString();
    localMusicAlbumInfo.a = paramParcel.readString();
    localMusicAlbumInfo.c = paramParcel.readString();
    localMusicAlbumInfo.b = paramParcel.readInt();
    return localMusicAlbumInfo;
  }
  
  public MusicAlbumInfo[] a(int paramInt)
  {
    return new MusicAlbumInfo[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.android.music.player.data.a
 * JD-Core Version:    0.7.0.1
 */