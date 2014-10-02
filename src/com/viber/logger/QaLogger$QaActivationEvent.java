package com.viber.logger;

public class QaLogger$QaActivationEvent
  extends QaLogger.QaEvent
{
  private String a;
  private String b;
  private String c;
  
  public QaLogger$QaActivationEvent(String paramString1, String paramString2, String paramString3)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
  }
  
  public String toString()
  {
    return "[UDID] " + this.a + ";" + this.b + "\n" + "[CODE] " + this.c;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.logger.QaLogger.QaActivationEvent
 * JD-Core Version:    0.7.0.1
 */