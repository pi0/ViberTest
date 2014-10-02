package com.viber.voip.messages.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class b
  implements Parcelable.Creator
{
  public GroupController.GroupMember a(Parcel paramParcel)
  {
    return new GroupController.GroupMember(paramParcel);
  }
  
  public GroupController.GroupMember[] a(int paramInt)
  {
    return new GroupController.GroupMember[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.b
 * JD-Core Version:    0.7.0.1
 */