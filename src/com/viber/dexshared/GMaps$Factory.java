package com.viber.dexshared;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;

public abstract interface GMaps$Factory
{
  public abstract GMaps.BitmapDescriptorFactory getBitmapDescriptorFactory();
  
  public abstract GMaps.CameraUpdateFactory getCameraUpdateFactory();
  
  public abstract void initialize(Context paramContext);
  
  public abstract GMaps.CameraPosition newCameraPosition(GMaps.LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3);
  
  public abstract GMaps.CameraPosition.Builder newCameraPositionBuilder();
  
  public abstract Intent newChooseAccountIntent(Account paramAccount, ArrayList<Account> paramArrayList, String[] paramArrayOfString1, boolean paramBoolean, String paramString1, String paramString2, String[] paramArrayOfString2, Bundle paramBundle);
  
  public abstract GMaps.CircleOptions newCircleOptions();
  
  public abstract GMaps.GroundOverlayOptions newGroundOverlayOptions();
  
  public abstract GMaps.LatLng newLatLng(double paramDouble1, double paramDouble2);
  
  public abstract GMaps.MarkerOptions newMarkerOptions();
  
  public abstract GMaps.SupportMapFragmentHelper newSupportMapFragmentHelper();
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.dexshared.GMaps.Factory
 * JD-Core Version:    0.7.0.1
 */