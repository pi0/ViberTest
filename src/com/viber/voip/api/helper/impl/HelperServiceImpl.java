package com.viber.voip.api.helper.impl;

import com.viber.voip.ViberApplication;
import com.viber.voip.api.helper.IHelperService;

public class HelperServiceImpl
  implements IHelperService
{
  public static final String TAG = HelperServiceImpl.class.getSimpleName();
  
  public void addTransactionItem(String paramString1, String paramString2, String paramString3, long paramLong, String paramString4) {}
  
  public void createTransaction(String paramString1, long paramLong1, String paramString2, long paramLong2, long paramLong3, String paramString3) {}
  
  public void initTracker(String paramString) {}
  
  public void log(int paramInt, String paramString1, String paramString2)
  {
    ViberApplication.log(paramInt, paramString1, paramString2);
  }
  
  public void sendEvent(String paramString1, String paramString2, String paramString3, String paramString4, Long paramLong) {}
  
  public void sendSocial(String paramString1, String paramString2, String paramString3, String paramString4) {}
  
  public void sendTransaction(String paramString1, String paramString2) {}
  
  public void sendView(String paramString1, String paramString2) {}
  
  public void setCustomDimension(String paramString1, int paramInt, String paramString2) {}
  
  public void setCustomMetric(String paramString1, int paramInt, String paramString2) {}
  
  public void setSampleRate(String paramString, double paramDouble) {}
  
  public void setStartSession(String paramString, boolean paramBoolean) {}
  
  public void trackEvent(String paramString1, String paramString2, String paramString3, String paramString4, Long paramLong) {}
  
  public void trackTiming(String paramString1, String paramString2, long paramLong, String paramString3, String paramString4) {}
  
  public void trackView(String paramString1, String paramString2) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.helper.impl.HelperServiceImpl
 * JD-Core Version:    0.7.0.1
 */