package com.viber.voip.api.billing;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;

class IMarketBillingService$Stub$Proxy
  implements IMarketBillingService
{
  private IBinder mRemote;
  
  IMarketBillingService$Stub$Proxy(IBinder paramIBinder)
  {
    this.mRemote = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return this.mRemote;
  }
  
  public String getInterfaceDescriptor()
  {
    return "com.viber.voip.api.billing.IMarketBillingService";
  }
  
  public Bundle sendBillingRequest(Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.viber.voip.api.billing.IMarketBillingService");
        if (paramBundle != null)
        {
          localParcel1.writeInt(1);
          paramBundle.writeToParcel(localParcel1, 0);
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          if (localParcel2.readInt() != 0)
          {
            localBundle = (Bundle)Bundle.CREATOR.createFromParcel(localParcel2);
            return localBundle;
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        Bundle localBundle = null;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.billing.IMarketBillingService.Stub.Proxy
 * JD-Core Version:    0.7.0.1
 */