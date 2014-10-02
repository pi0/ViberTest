package com.viber.dexshared;

public abstract interface ZXing$Factory
{
  public abstract ZXing.CameraConfigurationUtils getCameraConfigurationUtils();
  
  public abstract ZXing.BinaryBitmap newBinaryBitmap(ZXing.HybridBinarizer paramHybridBinarizer);
  
  public abstract ZXing.HybridBinarizer newHybridBinarizer(ZXing.PlanarYUVLuminanceSource paramPlanarYUVLuminanceSource);
  
  public abstract ZXing.MultiFormatReader newMultiFormatReader();
  
  public abstract ZXing.PlanarYUVLuminanceSource newPlanarYUVLuminanceSource(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, boolean paramBoolean);
  
  public abstract ZXing.QRCodeWriter newQRCodeWriter();
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.dexshared.ZXing.Factory
 * JD-Core Version:    0.7.0.1
 */