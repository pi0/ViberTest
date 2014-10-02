package com.viber.voip.util.upload;

import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

public class i
  extends InputStream
{
  private String a;
  private RandomAccessFile b;
  private boolean c;
  private boolean d;
  private boolean e;
  private int f;
  private final byte[] g = new byte[1];
  
  void a()
  {
    try
    {
      notifyAll();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  void a(String paramString)
  {
    try
    {
      this.a = paramString;
      notifyAll();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  void a(boolean paramBoolean)
  {
    try
    {
      this.d = true;
      this.e = paramBoolean;
      notifyAll();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void close()
  {
    try
    {
      super.close();
      this.c = true;
      notifyAll();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int read()
  {
    if (read(this.g) == -1) {
      return -1;
    }
    return this.g[0];
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    for (;;)
    {
      try
      {
        if (this.c) {
          throw new IOException("File is closed");
        }
      }
      finally {}
      if (this.b != null) {
        break;
      }
      if (this.a == null) {
        break label139;
      }
      this.b = new RandomAccessFile(this.a, "r");
    }
    if (this.b.getFilePointer() >= this.b.length()) {
      if (this.d) {
        if (this.e)
        {
          this.f = (1 + this.f);
          if (this.f > 10) {
            throw new IOException("read() returned EOF 10 times, forcing exception");
          }
        }
      }
    }
    label139:
    int i;
    for (int j = -1;; j = i)
    {
      for (;;)
      {
        return j;
        throw new IOException("Download terminated abnormally");
        try
        {
          wait();
        }
        catch (InterruptedException localInterruptedException) {}
      }
      break;
      i = this.b.read(paramArrayOfByte, paramInt1, paramInt2);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.i
 * JD-Core Version:    0.7.0.1
 */