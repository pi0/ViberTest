package com.viber.voip.messages.ui.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ah
  implements Parcelable.Creator<SendMediaDataContainer>
{
  public SendMediaDataContainer a(Parcel paramParcel)
  {
    return new SendMediaDataContainer(paramParcel);
  }
  
  public SendMediaDataContainer[] a(int paramInt)
  {
    return new SendMediaDataContainer[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.ah
 * JD-Core Version:    0.7.0.1
 */