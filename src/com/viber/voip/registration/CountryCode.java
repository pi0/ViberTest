package com.viber.voip.registration;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class CountryCode
  implements Parcelable, Comparable<CountryCode>
{
  public static final Parcelable.Creator<CountryCode> CREATOR = new ap();
  private final String a;
  private final String b;
  private final String c;
  private final String d;
  
  private CountryCode(Parcel paramParcel)
  {
    this.b = paramParcel.readString();
    this.a = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
  }
  
  public CountryCode(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.b = paramString1;
    this.a = paramString2;
    this.c = paramString3;
    this.d = paramString4;
  }
  
  public int a(CountryCode paramCountryCode)
  {
    return this.c.compareTo(paramCountryCode.c());
  }
  
  public String a()
  {
    if ((this.b != null) && (this.b.length() > 2)) {
      return this.b.substring(0, 2);
    }
    return this.b;
  }
  
  public String b()
  {
    return this.a;
  }
  
  public String c()
  {
    return this.c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    CountryCode localCountryCode;
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        localCountryCode = (CountryCode)paramObject;
        if (this.b == null)
        {
          if (localCountryCode.b != null) {
            return false;
          }
        }
        else if (!this.b.equals(localCountryCode.b)) {
          return false;
        }
        if (this.a != null) {
          break;
        }
      } while (localCountryCode.a == null);
      return false;
    } while (this.a.equals(localCountryCode.a));
    return false;
  }
  
  public int hashCode()
  {
    int i;
    int j;
    int k;
    if (this.b == null)
    {
      i = 0;
      j = 31 * (i + 31);
      String str = this.a;
      k = 0;
      if (str != null) {
        break label45;
      }
    }
    for (;;)
    {
      return j + k;
      i = this.b.hashCode();
      break;
      label45:
      k = this.a.hashCode();
    }
  }
  
  public String toString()
  {
    return "CountryCode{" + "code='" + this.b + '\'' + ", iddCode='" + this.a + '\'' + ", localCode='" + this.d + '\'' + ", name='" + this.c + '\'' + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.CountryCode
 * JD-Core Version:    0.7.0.1
 */