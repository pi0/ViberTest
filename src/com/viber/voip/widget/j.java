package com.viber.voip.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class j
  implements Parcelable.Creator<MessageBar.Message>
{
  public MessageBar.Message a(Parcel paramParcel)
  {
    return new MessageBar.Message(paramParcel);
  }
  
  public MessageBar.Message[] a(int paramInt)
  {
    return new MessageBar.Message[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.j
 * JD-Core Version:    0.7.0.1
 */