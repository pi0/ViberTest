package com.viber.voip.rakuten;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class RakutenUrlSchemeData
  implements Parcelable
{
  public static final Parcelable.Creator<RakutenUrlSchemeData> CREATOR = new ad();
  public String a;
  public String b;
  
  public RakutenUrlSchemeData(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
  }
  
  public RakutenUrlSchemeData(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.rakuten.RakutenUrlSchemeData
 * JD-Core Version:    0.7.0.1
 */