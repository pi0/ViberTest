package com.facebook.internal;

import java.io.File;

final class FileLruCache$ModifiedFile
  implements Comparable<ModifiedFile>
{
  private final File file;
  private final long modified;
  
  FileLruCache$ModifiedFile(File paramFile)
  {
    this.file = paramFile;
    this.modified = paramFile.lastModified();
  }
  
  public int compareTo(ModifiedFile paramModifiedFile)
  {
    if (getModified() < paramModifiedFile.getModified()) {
      return -1;
    }
    if (getModified() > paramModifiedFile.getModified()) {
      return 1;
    }
    return getFile().compareTo(paramModifiedFile.getFile());
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof ModifiedFile)) && (compareTo((ModifiedFile)paramObject) == 0);
  }
  
  File getFile()
  {
    return this.file;
  }
  
  long getModified()
  {
    return this.modified;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.internal.FileLruCache.ModifiedFile
 * JD-Core Version:    0.7.0.1
 */