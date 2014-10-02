package com.viber.voip.util.upload;

import java.io.File;
import java.util.Comparator;

final class u
  implements Comparator<File>
{
  public int a(File paramFile1, File paramFile2)
  {
    return (int)(paramFile2.lastModified() - paramFile1.lastModified());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.upload.u
 * JD-Core Version:    0.7.0.1
 */