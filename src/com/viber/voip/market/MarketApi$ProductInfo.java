package com.viber.voip.market;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.viber.voip.billing.bt;

public class MarketApi$ProductInfo
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new t();
  public final bt a;
  public final String b;
  public final v c;
  
  public MarketApi$ProductInfo(Parcel paramParcel)
  {
    this.a = bt.a(paramParcel.readString());
    this.b = paramParcel.readString();
    this.c = v.values()[paramParcel.readInt()];
  }
  
  public MarketApi$ProductInfo(bt parambt, v paramv, String paramString)
  {
    this.a = parambt;
    this.c = paramv;
    this.b = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a.toString());
    paramParcel.writeString(this.b);
    paramParcel.writeInt(this.c.ordinal());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.MarketApi.ProductInfo
 * JD-Core Version:    0.7.0.1
 */