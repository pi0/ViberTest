package com.viber.svg.jni;

import android.graphics.Canvas;

public class SvgObject
{
  static
  {
    System.loadLibrary("svg");
  }
  
  public static native long svgCreate();
  
  public static native void svgDestroy(long paramLong);
  
  public static native int svgGetHeight(long paramLong);
  
  public static native int svgGetNumberOfFrames(long paramLong);
  
  public static native int svgGetWidth(long paramLong);
  
  public static native int svgParseBuffer(long paramLong, String paramString);
  
  public static native int svgRenderToArea(long paramLong, Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5);
  
  public static native int svgSetAntialiasing(long paramLong, boolean paramBoolean);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.svg.jni.SvgObject
 * JD-Core Version:    0.7.0.1
 */