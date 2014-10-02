package com.viber.voip.messages.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator<GroupController.CreatePublicGroupData>
{
  public GroupController.CreatePublicGroupData a(Parcel paramParcel)
  {
    return new GroupController.CreatePublicGroupData(paramParcel);
  }
  
  public GroupController.CreatePublicGroupData[] a(int paramInt)
  {
    return new GroupController.CreatePublicGroupData[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a
 * JD-Core Version:    0.7.0.1
 */