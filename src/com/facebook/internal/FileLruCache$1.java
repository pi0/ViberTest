package com.facebook.internal;

import java.io.File;

class FileLruCache$1
  implements FileLruCache.StreamCloseCallback
{
  FileLruCache$1(FileLruCache paramFileLruCache, String paramString, File paramFile) {}
  
  public void onClose()
  {
    FileLruCache.access$000(this.this$0, this.val$key, this.val$buffer);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.internal.FileLruCache.1
 * JD-Core Version:    0.7.0.1
 */