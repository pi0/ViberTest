package com.viber.error.report;

import java.io.File;
import java.io.FilenameFilter;

class c
  implements FilenameFilter
{
  c(ErrorReportDialog paramErrorReportDialog) {}
  
  public boolean accept(File paramFile, String paramString)
  {
    return paramString.endsWith(".stacktrace");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.error.report.c
 * JD-Core Version:    0.7.0.1
 */