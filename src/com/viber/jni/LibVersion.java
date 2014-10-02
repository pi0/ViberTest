package com.viber.jni;

public class LibVersion
{
  private static String ViberCoreVersion;
  private static String ViberDebugVersion;
  private static String VoiceLibVersion;
  
  public static String getNativeVersionString()
  {
    return "VoiceLib:" + VoiceLibVersion + ";  ViberCore:" + ViberCoreVersion;
  }
  
  public static String getViberCoreVersion()
  {
    return ViberCoreVersion;
  }
  
  public static String getViberDebugVersion()
  {
    return ViberDebugVersion;
  }
  
  public static String getVoiceLibVersion()
  {
    return VoiceLibVersion;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.LibVersion
 * JD-Core Version:    0.7.0.1
 */