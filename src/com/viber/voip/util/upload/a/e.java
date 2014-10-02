package com.viber.voip.util.upload.a;

import java.io.File;
import java.io.FileInputStream;

class e
  extends FileInputStream
{
  e(c paramc, File paramFile, long paramLong)
  {
    super(paramFile);
  }
  
  public int available()
  {
    return (int)this.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.upload.a.e
 * JD-Core Version:    0.7.0.1
 */