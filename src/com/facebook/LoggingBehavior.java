package com.facebook;

public enum LoggingBehavior
{
  static
  {
    INCLUDE_ACCESS_TOKENS = new LoggingBehavior("INCLUDE_ACCESS_TOKENS", 1);
    INCLUDE_RAW_RESPONSES = new LoggingBehavior("INCLUDE_RAW_RESPONSES", 2);
    CACHE = new LoggingBehavior("CACHE", 3);
    LoggingBehavior[] arrayOfLoggingBehavior = new LoggingBehavior[4];
    arrayOfLoggingBehavior[0] = REQUESTS;
    arrayOfLoggingBehavior[1] = INCLUDE_ACCESS_TOKENS;
    arrayOfLoggingBehavior[2] = INCLUDE_RAW_RESPONSES;
    arrayOfLoggingBehavior[3] = CACHE;
    $VALUES = arrayOfLoggingBehavior;
  }
  
  private LoggingBehavior() {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.LoggingBehavior
 * JD-Core Version:    0.7.0.1
 */