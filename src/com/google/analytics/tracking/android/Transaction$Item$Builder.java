package com.google.analytics.tracking.android;

import android.text.TextUtils;

public final class Transaction$Item$Builder
{
  private String mCategory = null;
  private final String mName;
  private final long mPriceInMicros;
  private final long mQuantity;
  private final String mSKU;
  
  public Transaction$Item$Builder(String paramString1, String paramString2, long paramLong1, long paramLong2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("SKU must not be empty or null");
    }
    if (TextUtils.isEmpty(paramString2)) {
      throw new IllegalArgumentException("name must not be empty or null");
    }
    this.mSKU = paramString1;
    this.mName = paramString2;
    this.mPriceInMicros = paramLong1;
    this.mQuantity = paramLong2;
  }
  
  public Transaction.Item build()
  {
    return new Transaction.Item(this, null);
  }
  
  public Builder setProductCategory(String paramString)
  {
    this.mCategory = paramString;
    return this;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.google.analytics.tracking.android.Transaction.Item.Builder
 * JD-Core Version:    0.7.0.1
 */