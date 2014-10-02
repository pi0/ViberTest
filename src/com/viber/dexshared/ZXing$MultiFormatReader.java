package com.viber.dexshared;

import java.util.Map;

public abstract interface ZXing$MultiFormatReader
{
  public abstract ZXing.Result decodeWithState(ZXing.BinaryBitmap paramBinaryBitmap);
  
  public abstract void reset();
  
  public abstract void setHints(Map<ZXing.DecodeHintType, ?> paramMap);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.dexshared.ZXing.MultiFormatReader
 * JD-Core Version:    0.7.0.1
 */