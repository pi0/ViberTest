package com.facebook.internal;

import java.io.File;
import java.io.FilenameFilter;

final class FileLruCache$BufferFile$1
  implements FilenameFilter
{
  public boolean accept(File paramFile, String paramString)
  {
    return !paramString.startsWith("buffer");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.internal.FileLruCache.BufferFile.1
 * JD-Core Version:    0.7.0.1
 */