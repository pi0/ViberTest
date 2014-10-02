package com.viber.voip.stickers;

import com.viber.voip.util.bi;
import java.io.File;

class aq
  extends bi
{
  aq(ao paramao) {}
  
  protected boolean a(File paramFile)
  {
    if (paramFile.getAbsolutePath().endsWith(".nomedia")) {}
    while ((paramFile.getName().equals("icon.png")) || (paramFile.getName().equals("color_icon.png")) || (System.currentTimeMillis() - paramFile.lastModified() <= 86400000L)) {
      return false;
    }
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.aq
 * JD-Core Version:    0.7.0.1
 */