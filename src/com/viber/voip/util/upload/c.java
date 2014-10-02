package com.viber.voip.util.upload;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

public class c
  extends InputStream
{
  private File a;
  private RandomAccessFile b;
  private long c;
  private byte[] d;
  
  public c(String paramString, long paramLong)
  {
    this.b = new RandomAccessFile(paramString, "r");
    this.a = new File(paramString);
    this.c = paramLong;
  }
  
  public int available()
  {
    long l = this.c - this.b.getFilePointer();
    if (l > 2147483647L) {
      return 2147483647;
    }
    return (int)l;
  }
  
  public void close()
  {
    super.close();
    this.b.close();
  }
  
  public void mark(int paramInt)
  {
    throw new RuntimeException("Not supported");
  }
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
  {
    if (this.d == null) {
      this.d = new byte[1];
    }
    if (read(this.d) == -1) {
      return -1;
    }
    return this.d[0];
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    for (;;)
    {
      int k;
      int i;
      long l3;
      try
      {
        long l1 = this.b.getFilePointer();
        long l2 = this.c;
        if (l2 - l1 <= 0L)
        {
          k = -1;
          return k;
        }
        i = 0;
        if (i >= 50) {
          break label103;
        }
        l3 = this.b.length() - l1;
        if (!this.a.exists()) {
          throw new IOException("Download finished");
        }
      }
      finally {}
      if (l3 > 0L)
      {
        if (paramInt2 > l3) {
          paramInt2 = (int)l3;
        }
        label103:
        int j = this.b.read(paramArrayOfByte, paramInt1, paramInt2);
        k = j;
        continue;
      }
      try
      {
        Thread.sleep(100L);
        label128:
        i++;
      }
      catch (InterruptedException localInterruptedException)
      {
        break label128;
      }
    }
  }
  
  public void reset()
  {
    throw new RuntimeException("Not supported");
  }
  
  public long skip(long paramLong)
  {
    throw new RuntimeException("Not supported");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.c
 * JD-Core Version:    0.7.0.1
 */