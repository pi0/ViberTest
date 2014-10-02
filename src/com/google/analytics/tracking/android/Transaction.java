package com.google.analytics.tracking.android;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class Transaction
{
  private final String mAffiliation;
  private final String mCurrencyCode;
  private final Map<String, Transaction.Item> mItems;
  private final long mShippingCostInMicros;
  private final long mTotalCostInMicros;
  private final long mTotalTaxInMicros;
  private final String mTransactionId;
  
  private Transaction(Transaction.Builder paramBuilder)
  {
    this.mTransactionId = Transaction.Builder.access$000(paramBuilder);
    this.mTotalCostInMicros = Transaction.Builder.access$100(paramBuilder);
    this.mAffiliation = Transaction.Builder.access$200(paramBuilder);
    this.mTotalTaxInMicros = Transaction.Builder.access$300(paramBuilder);
    this.mShippingCostInMicros = Transaction.Builder.access$400(paramBuilder);
    this.mCurrencyCode = Transaction.Builder.access$500(paramBuilder);
    this.mItems = new HashMap();
  }
  
  public void addItem(Transaction.Item paramItem)
  {
    this.mItems.put(paramItem.getSKU(), paramItem);
  }
  
  public String getAffiliation()
  {
    return this.mAffiliation;
  }
  
  public String getCurrencyCode()
  {
    return this.mCurrencyCode;
  }
  
  public List<Transaction.Item> getItems()
  {
    return new ArrayList(this.mItems.values());
  }
  
  public long getShippingCostInMicros()
  {
    return this.mShippingCostInMicros;
  }
  
  public long getTotalCostInMicros()
  {
    return this.mTotalCostInMicros;
  }
  
  public long getTotalTaxInMicros()
  {
    return this.mTotalTaxInMicros;
  }
  
  public String getTransactionId()
  {
    return this.mTransactionId;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.google.analytics.tracking.android.Transaction
 * JD-Core Version:    0.7.0.1
 */