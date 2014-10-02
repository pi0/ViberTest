package com.viber.voip.pixie;

public enum PixieControllerImpl$PixieSettings
{
  static
  {
    PIXIE_MODE_ALWAYS_ON = new PixieSettings("PIXIE_MODE_ALWAYS_ON", 1);
    PIXIE_MODE_OFF = new PixieSettings("PIXIE_MODE_OFF", 2);
    PixieSettings[] arrayOfPixieSettings = new PixieSettings[3];
    arrayOfPixieSettings[0] = PIXIE_MODE_AUTO;
    arrayOfPixieSettings[1] = PIXIE_MODE_ALWAYS_ON;
    arrayOfPixieSettings[2] = PIXIE_MODE_OFF;
    $VALUES = arrayOfPixieSettings;
  }
  
  private PixieControllerImpl$PixieSettings() {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.pixie.PixieControllerImpl.PixieSettings
 * JD-Core Version:    0.7.0.1
 */