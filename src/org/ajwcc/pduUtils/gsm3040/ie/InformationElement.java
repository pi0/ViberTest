package org.ajwcc.pduUtils.gsm3040.ie;

import org.ajwcc.pduUtils.gsm3040.PduUtils;

public class InformationElement
{
  private byte[] data;
  private byte identifier;
  
  InformationElement() {}
  
  InformationElement(byte paramByte, byte[] paramArrayOfByte)
  {
    initialize(paramByte, paramArrayOfByte);
  }
  
  public byte[] getData()
  {
    return this.data;
  }
  
  public int getIdentifier()
  {
    return 0xFF & this.identifier;
  }
  
  public int getLength()
  {
    return this.data.length;
  }
  
  void initialize(byte paramByte, byte[] paramArrayOfByte)
  {
    this.identifier = paramByte;
    this.data = paramArrayOfByte;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(getClass().getSimpleName() + "[");
    localStringBuffer.append(PduUtils.byteToPdu(this.identifier));
    localStringBuffer.append(", ");
    localStringBuffer.append(PduUtils.byteToPdu(this.data.length));
    localStringBuffer.append(", ");
    localStringBuffer.append(PduUtils.bytesToPdu(this.data));
    localStringBuffer.append("]");
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.ajwcc.pduUtils.gsm3040.ie.InformationElement
 * JD-Core Version:    0.7.0.1
 */