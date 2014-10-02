package com.viber.voip.phone.call;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.viber.voip.contacts.b.b;

public class CallerInfo
  implements Parcelable
{
  public static final Parcelable.Creator<CallerInfo> CREATOR = new m();
  private final String a;
  private final String b;
  private final b c;
  private final Uri d;
  
  public CallerInfo(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.d = Uri.parse(paramParcel.readString());
    this.c = null;
  }
  
  public CallerInfo(String paramString1, String paramString2, b paramb, Uri paramUri)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("The name argument is invalid");
    }
    if (paramString2 == null) {
      throw new IllegalArgumentException("The phoneNumber argument is invalid");
    }
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramb;
    this.d = paramUri;
  }
  
  public String a()
  {
    return this.a;
  }
  
  public String b()
  {
    return this.b;
  }
  
  public b c()
  {
    return this.c;
  }
  
  public Uri d()
  {
    return this.d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "CallerInfo [name=" + this.a + ", phoneNumber=" + this.b + ", contactRingtoneUri=" + this.d + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.d.toString());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.call.CallerInfo
 * JD-Core Version:    0.7.0.1
 */