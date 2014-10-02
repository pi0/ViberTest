package com.viber.dexshared;

import android.graphics.Point;
import android.hardware.Camera.Parameters;

public abstract interface ZXing$CameraConfigurationUtils
{
  public abstract String collectStats(Camera.Parameters paramParameters);
  
  public abstract String collectStats(CharSequence paramCharSequence);
  
  public abstract Point findBestPreviewSizeValue(Camera.Parameters paramParameters, Point paramPoint);
  
  public abstract void setBarcodeSceneMode(Camera.Parameters paramParameters);
  
  public abstract void setBestExposure(Camera.Parameters paramParameters, boolean paramBoolean);
  
  public abstract void setBestPreviewFPS(Camera.Parameters paramParameters);
  
  public abstract void setBestPreviewFPS(Camera.Parameters paramParameters, int paramInt1, int paramInt2);
  
  public abstract void setFocus(Camera.Parameters paramParameters, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3);
  
  public abstract void setFocusArea(Camera.Parameters paramParameters);
  
  public abstract void setInvertColor(Camera.Parameters paramParameters);
  
  public abstract void setMetering(Camera.Parameters paramParameters);
  
  public abstract void setTorch(Camera.Parameters paramParameters, boolean paramBoolean);
  
  public abstract void setVideoStabilization(Camera.Parameters paramParameters);
  
  public abstract void setZoom(Camera.Parameters paramParameters, double paramDouble);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.dexshared.ZXing.CameraConfigurationUtils
 * JD-Core Version:    0.7.0.1
 */