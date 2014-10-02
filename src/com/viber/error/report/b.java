package com.viber.error.report;

import java.io.File;
import java.io.FilenameFilter;

final class b
  implements FilenameFilter
{
  public boolean accept(File paramFile, String paramString)
  {
    return paramString.endsWith(".stacktrace");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.error.report.b
 * JD-Core Version:    0.7.0.1
 */