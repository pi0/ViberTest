package com.viber.voip.sms.a;

import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import org.ajwcc.pduUtils.gsm3040.PduFactory;
import org.ajwcc.pduUtils.gsm3040.PduGenerator;
import org.ajwcc.pduUtils.gsm3040.PduUtils;
import org.ajwcc.pduUtils.gsm3040.SmsDeliveryPdu;

public class a
{
  private String a;
  private String b;
  
  public a(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }
  
  public Object[] a()
  {
    SmsDeliveryPdu localSmsDeliveryPdu = PduFactory.newSmsDeliveryPdu(4);
    localSmsDeliveryPdu.setSmscInfoLength(0);
    localSmsDeliveryPdu.setAddressType(17);
    localSmsDeliveryPdu.setAddress(this.a);
    localSmsDeliveryPdu.setDecodedText(this.b);
    localSmsDeliveryPdu.setProtocolIdentifier(0);
    localSmsDeliveryPdu.setTimestamp(new GregorianCalendar());
    localSmsDeliveryPdu.setDataCodingScheme(8);
    List localList = new PduGenerator().generatePduList(localSmsDeliveryPdu, 4);
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(PduUtils.pduToBytes((String)localIterator.next()));
    }
    return localArrayList.toArray();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sms.a.a
 * JD-Core Version:    0.7.0.1
 */