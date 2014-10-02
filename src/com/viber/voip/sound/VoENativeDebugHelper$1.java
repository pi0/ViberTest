package com.viber.voip.sound;

import java.io.File;
import java.io.FilenameFilter;

final class VoENativeDebugHelper$1
  implements FilenameFilter
{
  public boolean accept(File paramFile, String paramString)
  {
    return (paramString.endsWith(".i420p")) || (paramString.endsWith(".rtpdump"));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.VoENativeDebugHelper.1
 * JD-Core Version:    0.7.0.1
 */