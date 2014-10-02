package com.viber.voip.messages.orm.entity.impl;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class MessageCallEntityImpl$1
  implements Parcelable.Creator<MessageCallEntityImpl>
{
  public MessageCallEntityImpl createFromParcel(Parcel paramParcel)
  {
    return new MessageCallEntityImpl(paramParcel, null);
  }
  
  public MessageCallEntityImpl[] newArray(int paramInt)
  {
    return new MessageCallEntityImpl[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.impl.MessageCallEntityImpl.1
 * JD-Core Version:    0.7.0.1
 */