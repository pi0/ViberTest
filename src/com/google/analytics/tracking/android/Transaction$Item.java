package com.google.analytics.tracking.android;

public final class Transaction$Item
{
  private final String mCategory;
  private final String mName;
  private final long mPriceInMicros;
  private final long mQuantity;
  private final String mSKU;
  
  private Transaction$Item(Transaction.Item.Builder paramBuilder)
  {
    this.mSKU = Transaction.Item.Builder.access$600(paramBuilder);
    this.mPriceInMicros = Transaction.Item.Builder.access$700(paramBuilder);
    this.mQuantity = Transaction.Item.Builder.access$800(paramBuilder);
    this.mName = Transaction.Item.Builder.access$900(paramBuilder);
    this.mCategory = Transaction.Item.Builder.access$1000(paramBuilder);
  }
  
  public String getCategory()
  {
    return this.mCategory;
  }
  
  public String getName()
  {
    return this.mName;
  }
  
  public long getPriceInMicros()
  {
    return this.mPriceInMicros;
  }
  
  public long getQuantity()
  {
    return this.mQuantity;
  }
  
  public String getSKU()
  {
    return this.mSKU;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.google.analytics.tracking.android.Transaction.Item
 * JD-Core Version:    0.7.0.1
 */