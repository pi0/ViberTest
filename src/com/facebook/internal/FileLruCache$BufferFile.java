package com.facebook.internal;

import java.io.File;
import java.io.FilenameFilter;
import java.util.concurrent.atomic.AtomicLong;

class FileLruCache$BufferFile
{
  private static final String FILE_NAME_PREFIX = "buffer";
  private static final FilenameFilter filterExcludeBufferFiles = new FileLruCache.BufferFile.1();
  private static final FilenameFilter filterExcludeNonBufferFiles = new FileLruCache.BufferFile.2();
  
  static void deleteAll(File paramFile)
  {
    File[] arrayOfFile = paramFile.listFiles(excludeNonBufferFiles());
    int i = arrayOfFile.length;
    for (int j = 0; j < i; j++) {
      arrayOfFile[j].delete();
    }
  }
  
  static FilenameFilter excludeBufferFiles()
  {
    return filterExcludeBufferFiles;
  }
  
  static FilenameFilter excludeNonBufferFiles()
  {
    return filterExcludeNonBufferFiles;
  }
  
  static File newFile(File paramFile)
  {
    return new File(paramFile, "buffer" + Long.valueOf(FileLruCache.access$200().incrementAndGet()).toString());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.internal.FileLruCache.BufferFile
 * JD-Core Version:    0.7.0.1
 */