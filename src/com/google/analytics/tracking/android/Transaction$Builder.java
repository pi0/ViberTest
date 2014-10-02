package com.google.analytics.tracking.android;

import android.text.TextUtils;

public final class Transaction$Builder
{
  private String mAffiliation = null;
  private String mCurrencyCode = null;
  private long mShippingCostInMicros = 0L;
  private final long mTotalCostInMicros;
  private long mTotalTaxInMicros = 0L;
  private final String mTransactionId;
  
  public Transaction$Builder(String paramString, long paramLong)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("orderId must not be empty or null");
    }
    this.mTransactionId = paramString;
    this.mTotalCostInMicros = paramLong;
  }
  
  public Transaction build()
  {
    return new Transaction(this, null);
  }
  
  public Builder setAffiliation(String paramString)
  {
    this.mAffiliation = paramString;
    return this;
  }
  
  public Builder setCurrencyCode(String paramString)
  {
    this.mCurrencyCode = paramString;
    return this;
  }
  
  public Builder setShippingCostInMicros(long paramLong)
  {
    this.mShippingCostInMicros = paramLong;
    return this;
  }
  
  public Builder setTotalTaxInMicros(long paramLong)
  {
    this.mTotalTaxInMicros = paramLong;
    return this;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.google.analytics.tracking.android.Transaction.Builder
 * JD-Core Version:    0.7.0.1
 */