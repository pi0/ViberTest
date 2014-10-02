package org.ajwcc.pduUtils.gsm3040;

import org.ajwcc.pduUtils.wappush.WapSiPdu;

public class PduFactory
{
  public static Pdu createPdu(int paramInt)
  {
    int i = getFirstOctetField(paramInt, 252);
    Object localObject;
    switch (i)
    {
    default: 
      throw new RuntimeException("Invalid TP-MTI value: " + i);
    case 0: 
      localObject = new SmsDeliveryPdu();
    }
    for (;;)
    {
      ((Pdu)localObject).setFirstOctet(paramInt);
      return localObject;
      localObject = new SmsStatusReportPdu();
      continue;
      localObject = new SmsSubmitPdu();
    }
  }
  
  private static int getFirstOctetField(int paramInt1, int paramInt2)
  {
    return paramInt1 & (paramInt2 ^ 0xFFFFFFFF);
  }
  
  public static SmsDeliveryPdu newSmsDeliveryPdu(int paramInt)
  {
    return (SmsDeliveryPdu)createPdu(paramInt | 0x0);
  }
  
  public static SmsSubmitPdu newSmsDeliveryPdu()
  {
    return (SmsSubmitPdu)createPdu(4);
  }
  
  public static SmsSubmitPdu newSmsSubmitPdu()
  {
    return newSmsSubmitPdu(16);
  }
  
  public static SmsSubmitPdu newSmsSubmitPdu(int paramInt)
  {
    return (SmsSubmitPdu)createPdu(paramInt | 0x1);
  }
  
  public static WapSiPdu newWapSiPdu()
  {
    return newWapSiPdu(16);
  }
  
  public static WapSiPdu newWapSiPdu(int paramInt)
  {
    int i = paramInt | 0x1;
    int j = getFirstOctetField(i, 252);
    switch (j)
    {
    default: 
      throw new RuntimeException("Invalid TP-MTI value: " + j);
    }
    WapSiPdu localWapSiPdu = new WapSiPdu();
    localWapSiPdu.setFirstOctet(i);
    return localWapSiPdu;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.ajwcc.pduUtils.gsm3040.PduFactory
 * JD-Core Version:    0.7.0.1
 */