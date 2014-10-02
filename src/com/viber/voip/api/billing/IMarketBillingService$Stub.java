package com.viber.voip.api.billing;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class IMarketBillingService$Stub
  extends Binder
  implements IMarketBillingService
{
  private static final String DESCRIPTOR = "com.viber.voip.api.billing.IMarketBillingService";
  static final int TRANSACTION_sendBillingRequest = 1;
  
  public IMarketBillingService$Stub()
  {
    attachInterface(this, "com.viber.voip.api.billing.IMarketBillingService");
  }
  
  public static IMarketBillingService asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.viber.voip.api.billing.IMarketBillingService");
    if ((localIInterface != null) && ((localIInterface instanceof IMarketBillingService))) {
      return (IMarketBillingService)localIInterface;
    }
    return new IMarketBillingService.Stub.Proxy(paramIBinder);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.viber.voip.api.billing.IMarketBillingService");
      return true;
    }
    paramParcel1.enforceInterface("com.viber.voip.api.billing.IMarketBillingService");
    Bundle localBundle1;
    if (paramParcel1.readInt() != 0)
    {
      localBundle1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      Bundle localBundle2 = sendBillingRequest(localBundle1);
      paramParcel2.writeNoException();
      if (localBundle2 == null) {
        break label110;
      }
      paramParcel2.writeInt(1);
      localBundle2.writeToParcel(paramParcel2, 1);
    }
    for (;;)
    {
      return true;
      localBundle1 = null;
      break;
      label110:
      paramParcel2.writeInt(0);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.billing.IMarketBillingService.Stub
 * JD-Core Version:    0.7.0.1
 */