package com.viber.voip.api.billing;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class IInAppBillingService$Stub
  extends Binder
  implements IInAppBillingService
{
  private static final String DESCRIPTOR = "com.viber.voip.api.billing.IInAppBillingService";
  static final int TRANSACTION_consumePurchase = 5;
  static final int TRANSACTION_getBuyIntent = 3;
  static final int TRANSACTION_getPurchases = 4;
  static final int TRANSACTION_getSkuDetails = 2;
  static final int TRANSACTION_isBillingSupported = 1;
  
  public IInAppBillingService$Stub()
  {
    attachInterface(this, "com.viber.voip.api.billing.IInAppBillingService");
  }
  
  public static IInAppBillingService asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.viber.voip.api.billing.IInAppBillingService");
    if ((localIInterface != null) && ((localIInterface instanceof IInAppBillingService))) {
      return (IInAppBillingService)localIInterface;
    }
    return new IInAppBillingService.Stub.Proxy(paramIBinder);
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
      paramParcel2.writeString("com.viber.voip.api.billing.IInAppBillingService");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.viber.voip.api.billing.IInAppBillingService");
      int k = isBillingSupported(paramParcel1.readInt(), paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeInt(k);
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.viber.voip.api.billing.IInAppBillingService");
      int j = paramParcel1.readInt();
      String str1 = paramParcel1.readString();
      String str2 = paramParcel1.readString();
      Bundle localBundle3;
      if (paramParcel1.readInt() != 0)
      {
        localBundle3 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        Bundle localBundle4 = getSkuDetails(j, str1, str2, localBundle3);
        paramParcel2.writeNoException();
        if (localBundle4 == null) {
          break label202;
        }
        paramParcel2.writeInt(1);
        localBundle4.writeToParcel(paramParcel2, 1);
      }
      for (;;)
      {
        return true;
        localBundle3 = null;
        break;
        paramParcel2.writeInt(0);
      }
    case 3: 
      paramParcel1.enforceInterface("com.viber.voip.api.billing.IInAppBillingService");
      Bundle localBundle2 = getBuyIntent(paramParcel1.readInt(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      if (localBundle2 != null)
      {
        paramParcel2.writeInt(1);
        localBundle2.writeToParcel(paramParcel2, 1);
      }
      for (;;)
      {
        return true;
        paramParcel2.writeInt(0);
      }
    case 4: 
      label202:
      paramParcel1.enforceInterface("com.viber.voip.api.billing.IInAppBillingService");
      Bundle localBundle1 = getPurchases(paramParcel1.readInt(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      if (localBundle1 != null)
      {
        paramParcel2.writeInt(1);
        localBundle1.writeToParcel(paramParcel2, 1);
      }
      for (;;)
      {
        return true;
        paramParcel2.writeInt(0);
      }
    }
    paramParcel1.enforceInterface("com.viber.voip.api.billing.IInAppBillingService");
    int i = consumePurchase(paramParcel1.readInt(), paramParcel1.readString(), paramParcel1.readString());
    paramParcel2.writeNoException();
    paramParcel2.writeInt(i);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.billing.IInAppBillingService.Stub
 * JD-Core Version:    0.7.0.1
 */