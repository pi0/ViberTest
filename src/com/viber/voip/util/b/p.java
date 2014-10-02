package com.viber.voip.util.b;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class p
  extends FilterOutputStream
{
  private p(o paramo, OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  public void close()
  {
    try
    {
      this.out.close();
      return;
    }
    catch (IOException localIOException)
    {
      o.a(this.a, true);
    }
  }
  
  public void flush()
  {
    try
    {
      this.out.flush();
      return;
    }
    catch (IOException localIOException)
    {
      o.a(this.a, true);
    }
  }
  
  public void write(int paramInt)
  {
    try
    {
      this.out.write(paramInt);
      return;
    }
    catch (IOException localIOException)
    {
      o.a(this.a, true);
    }
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      this.out.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException localIOException)
    {
      o.a(this.a, true);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.b.p
 * JD-Core Version:    0.7.0.1
 */