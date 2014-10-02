package com.viber.voip;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.provider.ContactsContract.Contacts;
import com.viber.voip.contacts.b.b;

public class BaseAddFriendActivity$ContactDetails
  implements Parcelable
{
  public static final Parcelable.Creator<ContactDetails> CREATOR = new u();
  private final long a;
  private final long b;
  private final String c;
  private final String d;
  private final Uri e;
  private final Uri f;
  private final boolean g;
  
  BaseAddFriendActivity$ContactDetails(Parcel paramParcel)
  {
    this.a = paramParcel.readLong();
    this.b = paramParcel.readLong();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    if (paramParcel.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.g = bool;
      ClassLoader localClassLoader = getClass().getClassLoader();
      this.f = ((Uri)paramParcel.readParcelable(localClassLoader));
      this.e = ((Uri)paramParcel.readParcelable(localClassLoader));
      return;
    }
  }
  
  BaseAddFriendActivity$ContactDetails(b paramb)
  {
    this.a = paramb.c();
    this.b = paramb.getId();
    this.c = paramb.a();
    this.d = paramb.g();
    this.e = ContactsContract.Contacts.getLookupUri(this.a, this.d);
    this.f = paramb.b();
    if ((this.f != null) && (this.f.equals(paramb.k()))) {}
    for (boolean bool = true;; bool = false)
    {
      this.g = bool;
      return;
    }
  }
  
  BaseAddFriendActivity$ContactDetails(String paramString, Uri paramUri)
  {
    this.c = paramString;
    this.f = paramUri;
    this.g = true;
    this.d = null;
    this.e = null;
    this.a = 0L;
    this.b = 0L;
  }
  
  public boolean a()
  {
    return this.a > 0L;
  }
  
  public long b()
  {
    return this.a;
  }
  
  public long c()
  {
    return this.b;
  }
  
  public String d()
  {
    return this.c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return this.d;
  }
  
  public Uri f()
  {
    return this.f;
  }
  
  public boolean g()
  {
    return this.g;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ContactDetails [displayName=").append(this.c).append(", lookupUri=").append(this.e).append(", photoUri=").append(this.f).append(", isViberPhoto=").append(this.g).append("]");
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.a);
    paramParcel.writeLong(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    if (this.g) {}
    for (int i = 1;; i = 0)
    {
      paramParcel.writeInt(i);
      paramParcel.writeParcelable(this.f, paramInt);
      paramParcel.writeParcelable(this.e, paramInt);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.BaseAddFriendActivity.ContactDetails
 * JD-Core Version:    0.7.0.1
 */