package com.viber.voip.api.helper;

public abstract interface IHelperService
{
  public abstract void addTransactionItem(String paramString1, String paramString2, String paramString3, long paramLong, String paramString4);
  
  public abstract void createTransaction(String paramString1, long paramLong1, String paramString2, long paramLong2, long paramLong3, String paramString3);
  
  public abstract void initTracker(String paramString);
  
  public abstract void log(int paramInt, String paramString1, String paramString2);
  
  public abstract void sendEvent(String paramString1, String paramString2, String paramString3, String paramString4, Long paramLong);
  
  public abstract void sendSocial(String paramString1, String paramString2, String paramString3, String paramString4);
  
  public abstract void sendTransaction(String paramString1, String paramString2);
  
  public abstract void sendView(String paramString1, String paramString2);
  
  public abstract void setCustomDimension(String paramString1, int paramInt, String paramString2);
  
  public abstract void setCustomMetric(String paramString1, int paramInt, String paramString2);
  
  public abstract void setSampleRate(String paramString, double paramDouble);
  
  public abstract void setStartSession(String paramString, boolean paramBoolean);
  
  public abstract void trackEvent(String paramString1, String paramString2, String paramString3, String paramString4, Long paramLong);
  
  public abstract void trackTiming(String paramString1, String paramString2, long paramLong, String paramString3, String paramString4);
  
  public abstract void trackView(String paramString1, String paramString2);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.helper.IHelperService
 * JD-Core Version:    0.7.0.1
 */