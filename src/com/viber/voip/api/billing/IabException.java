package com.viber.voip.api.billing;

public class IabException
  extends Exception
{
  private static final long serialVersionUID = 1L;
  IabResult mResult;
  
  public IabException(int paramInt, String paramString)
  {
    this(new IabResult(paramInt, paramString));
  }
  
  public IabException(int paramInt, String paramString, Exception paramException)
  {
    this(new IabResult(paramInt, paramString), paramException);
  }
  
  public IabException(IabResult paramIabResult)
  {
    this(paramIabResult, null);
  }
  
  public IabException(IabResult paramIabResult, Exception paramException)
  {
    super(paramIabResult.getMessage(), paramException);
    this.mResult = paramIabResult;
  }
  
  public IabResult getResult()
  {
    return this.mResult;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.billing.IabException
 * JD-Core Version:    0.7.0.1
 */