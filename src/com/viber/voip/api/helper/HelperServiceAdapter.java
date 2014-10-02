package com.viber.voip.api.helper;

public class HelperServiceAdapter
  implements IHelperService
{
  private static IHelperService mHelperServiceImpl;
  private static HelperServiceAdapter mInstance;
  
  private HelperServiceAdapter()
  {
    mInstance = this;
  }
  
  private HelperServiceAdapter(IHelperService paramIHelperService)
  {
    this();
    mHelperServiceImpl = paramIHelperService;
  }
  
  public static void create(IHelperService paramIHelperService)
  {
    if (mInstance == null) {
      new HelperServiceAdapter(paramIHelperService);
    }
  }
  
  public static IHelperService getInstance()
  {
    return mInstance;
  }
  
  public void addTransactionItem(String paramString1, String paramString2, String paramString3, long paramLong, String paramString4)
  {
    if (mHelperServiceImpl != null) {
      mHelperServiceImpl.addTransactionItem(paramString1, paramString2, paramString3, paramLong, paramString4);
    }
  }
  
  public void createTransaction(String paramString1, long paramLong1, String paramString2, long paramLong2, long paramLong3, String paramString3)
  {
    if (mHelperServiceImpl != null) {
      mHelperServiceImpl.createTransaction(paramString1, paramLong1, paramString2, paramLong2, paramLong3, paramString3);
    }
  }
  
  public void initTracker(String paramString)
  {
    if (mHelperServiceImpl != null) {
      mHelperServiceImpl.initTracker(paramString);
    }
  }
  
  public void log(int paramInt, String paramString1, String paramString2)
  {
    if (mHelperServiceImpl != null) {
      mHelperServiceImpl.log(paramInt, paramString1, paramString2);
    }
  }
  
  public void sendEvent(String paramString1, String paramString2, String paramString3, String paramString4, Long paramLong)
  {
    if (mHelperServiceImpl != null) {
      mHelperServiceImpl.sendEvent(paramString1, paramString2, paramString3, paramString4, paramLong);
    }
  }
  
  public void sendSocial(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (mHelperServiceImpl != null) {
      mHelperServiceImpl.sendSocial(paramString1, paramString2, paramString3, paramString4);
    }
  }
  
  public void sendTransaction(String paramString1, String paramString2)
  {
    if (mHelperServiceImpl != null) {
      mHelperServiceImpl.sendTransaction(paramString1, paramString2);
    }
  }
  
  public void sendView(String paramString1, String paramString2)
  {
    if (mHelperServiceImpl != null) {
      mHelperServiceImpl.sendView(paramString1, paramString2);
    }
  }
  
  public void setCustomDimension(String paramString1, int paramInt, String paramString2)
  {
    if (mHelperServiceImpl != null) {
      mHelperServiceImpl.setCustomDimension(paramString1, paramInt, paramString2);
    }
  }
  
  public void setCustomMetric(String paramString1, int paramInt, String paramString2)
  {
    if (mHelperServiceImpl != null) {
      mHelperServiceImpl.setCustomMetric(paramString1, paramInt, paramString2);
    }
  }
  
  public void setSampleRate(String paramString, double paramDouble)
  {
    if (mHelperServiceImpl != null) {
      mHelperServiceImpl.setSampleRate(paramString, paramDouble);
    }
  }
  
  public void setStartSession(String paramString, boolean paramBoolean)
  {
    if (mHelperServiceImpl != null) {
      mHelperServiceImpl.setStartSession(paramString, paramBoolean);
    }
  }
  
  public void trackEvent(String paramString1, String paramString2, String paramString3, String paramString4, Long paramLong)
  {
    if (mHelperServiceImpl != null) {
      mHelperServiceImpl.trackEvent(paramString1, paramString2, paramString3, paramString4, paramLong);
    }
  }
  
  public void trackTiming(String paramString1, String paramString2, long paramLong, String paramString3, String paramString4)
  {
    if (mHelperServiceImpl != null) {
      mHelperServiceImpl.trackTiming(paramString1, paramString2, paramLong, paramString3, paramString4);
    }
  }
  
  public void trackView(String paramString1, String paramString2)
  {
    if (mHelperServiceImpl != null) {
      mHelperServiceImpl.trackView(paramString1, paramString2);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.helper.HelperServiceAdapter
 * JD-Core Version:    0.7.0.1
 */