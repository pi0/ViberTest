package com.viber.logger;

public class QaLogger$QaEventWithStringParam
  extends QaLogger.QaEvent
{
  protected String a;
  protected String b;
  
  public QaLogger$QaEventWithStringParam(String paramString)
  {
    this.a = paramString;
    this.b = "[Event] ";
  }
  
  public String toString()
  {
    return this.b + this.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.logger.QaLogger.QaEventWithStringParam
 * JD-Core Version:    0.7.0.1
 */