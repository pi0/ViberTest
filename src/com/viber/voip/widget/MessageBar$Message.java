package com.viber.voip.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

class MessageBar$Message
  implements Parcelable
{
  public static final Parcelable.Creator<Message> CREATOR = new j();
  final String a;
  final String b;
  final int c;
  final int d;
  final boolean e;
  final boolean f;
  final Parcelable g;
  
  public MessageBar$Message(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readInt();
    this.d = paramParcel.readInt();
    int j;
    if (paramParcel.readInt() == i)
    {
      j = i;
      this.f = j;
      if (paramParcel.readInt() != i) {
        break label81;
      }
    }
    for (;;)
    {
      this.e = i;
      this.g = paramParcel.readParcelable(null);
      return;
      j = 0;
      break;
      label81:
      i = 0;
    }
  }
  
  public MessageBar$Message(String paramString1, String paramString2, int paramInt1, int paramInt2, Parcelable paramParcelable, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramInt1;
    this.d = paramInt2;
    this.g = paramParcelable;
    this.f = paramBoolean1;
    this.e = paramBoolean2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeInt(this.c);
    paramParcel.writeInt(this.d);
    int j;
    if (this.f)
    {
      j = i;
      paramParcel.writeInt(j);
      if (!this.e) {
        break label78;
      }
    }
    for (;;)
    {
      paramParcel.writeInt(i);
      paramParcel.writeParcelable(this.g, 0);
      return;
      j = 0;
      break;
      label78:
      i = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.MessageBar.Message
 * JD-Core Version:    0.7.0.1
 */