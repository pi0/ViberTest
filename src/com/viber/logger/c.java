package com.viber.logger;

import java.io.File;
import java.io.FilenameFilter;

final class c
  implements FilenameFilter
{
  public boolean accept(File paramFile, String paramString)
  {
    return !paramString.endsWith(".clg");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.logger.c
 * JD-Core Version:    0.7.0.1
 */