package com.viber.logger;

public class QaLogger$QaNotificationEvent
  extends QaLogger.QaEventWithStringParam
{
  public QaLogger$QaNotificationEvent(String paramString1, String paramString2)
  {
    super("");
    this.a = ("title={" + paramString1 + "}, text={" + paramString2 + "}");
    this.b = "[Notification] ";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.logger.QaLogger.QaNotificationEvent
 * JD-Core Version:    0.7.0.1
 */