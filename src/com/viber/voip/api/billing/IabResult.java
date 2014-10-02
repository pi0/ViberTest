package com.viber.voip.api.billing;

public class IabResult
{
  String mMessage;
  int mResponse;
  
  public IabResult(int paramInt, String paramString)
  {
    this.mResponse = paramInt;
    if ((paramString == null) || (paramString.trim().length() == 0))
    {
      this.mMessage = IabHelper.getResponseDesc(paramInt);
      return;
    }
    this.mMessage = (paramString + " (response: " + IabHelper.getResponseDesc(paramInt) + ")");
  }
  
  public String getMessage()
  {
    return this.mMessage;
  }
  
  public int getResponse()
  {
    return this.mResponse;
  }
  
  public boolean isFailure()
  {
    return !isSuccess();
  }
  
  public boolean isSuccess()
  {
    return this.mResponse == 0;
  }
  
  public String toString()
  {
    return "IabResult: (" + this.mResponse + ") " + getMessage();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.billing.IabResult
 * JD-Core Version:    0.7.0.1
 */