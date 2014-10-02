package com.viber.voip;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class u
  implements Parcelable.Creator<BaseAddFriendActivity.ContactDetails>
{
  public BaseAddFriendActivity.ContactDetails a(Parcel paramParcel)
  {
    return new BaseAddFriendActivity.ContactDetails(paramParcel);
  }
  
  public BaseAddFriendActivity.ContactDetails[] a(int paramInt)
  {
    return new BaseAddFriendActivity.ContactDetails[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.u
 * JD-Core Version:    0.7.0.1
 */