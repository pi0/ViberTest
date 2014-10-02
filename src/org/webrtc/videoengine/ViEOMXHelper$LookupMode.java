package org.webrtc.videoengine;

 enum ViEOMXHelper$LookupMode
{
  static
  {
    ENCODER = new LookupMode("ENCODER", 1);
    DECODER = new LookupMode("DECODER", 2);
    LookupMode[] arrayOfLookupMode = new LookupMode[3];
    arrayOfLookupMode[0] = ENCODER_AND_DECODER;
    arrayOfLookupMode[1] = ENCODER;
    arrayOfLookupMode[2] = DECODER;
    $VALUES = arrayOfLookupMode;
  }
  
  private ViEOMXHelper$LookupMode() {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.videoengine.ViEOMXHelper.LookupMode
 * JD-Core Version:    0.7.0.1
 */