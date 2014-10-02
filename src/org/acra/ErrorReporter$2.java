package org.acra;

import java.io.File;
import java.io.FilenameFilter;

class ErrorReporter$2
  implements FilenameFilter
{
  ErrorReporter$2(ErrorReporter paramErrorReporter) {}
  
  public boolean accept(File paramFile, String paramString)
  {
    return paramString.endsWith(".stacktrace");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.acra.ErrorReporter.2
 * JD-Core Version:    0.7.0.1
 */