package org.acra.util;

abstract class Base64$Coder
{
  public int op;
  public byte[] output;
  
  public abstract int maxOutputSize(int paramInt);
  
  public abstract boolean process(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.acra.util.Base64.Coder
 * JD-Core Version:    0.7.0.1
 */