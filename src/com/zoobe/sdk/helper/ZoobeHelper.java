package com.zoobe.sdk.helper;

import android.content.Context;
import android.content.Intent;

public abstract interface ZoobeHelper
{
  public abstract Intent getBackToViberIntent();
  
  public abstract Intent getReleaseAudioIntent();
  
  public abstract Intent getZoobeLaunchIntent(ZoobeParams paramZoobeParams);
  
  public abstract String getZoobeVersion();
  
  public abstract ZoobeResult handleZoobeResponse(int paramInt1, int paramInt2, Intent paramIntent);
  
  public abstract void registerReceiver(Context paramContext, ZoobeHelper.ZoobeReceiverListener paramZoobeReceiverListener);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.zoobe.sdk.helper.ZoobeHelper
 * JD-Core Version:    0.7.0.1
 */