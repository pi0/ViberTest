package com.viber.voip.api.billing;

import org.json.JSONObject;

public class Purchase
{
  ProductCategory mCategory;
  boolean mConsumed;
  String mDeveloperPayload;
  boolean mFromDB;
  String mItemType;
  String mOrderId;
  String mOriginalJson;
  String mPackageName;
  boolean mPending;
  String mProductId;
  int mPurchaseState;
  long mPurchaseTime;
  String mSignature;
  String mToken;
  boolean mVerified;
  
  Purchase(String paramString1, String paramString2)
  {
    this.mOriginalJson = paramString1;
    JSONObject localJSONObject = new JSONObject(this.mOriginalJson);
    this.mOrderId = localJSONObject.optString("orderId");
    this.mPackageName = localJSONObject.optString("packageName");
    this.mProductId = localJSONObject.optString("productId");
    this.mPurchaseTime = localJSONObject.optLong("purchaseTime");
    this.mPurchaseState = localJSONObject.optInt("purchaseState");
    this.mDeveloperPayload = localJSONObject.optString("developerPayload");
    this.mToken = localJSONObject.optString("token", localJSONObject.optString("purchaseToken"));
    this.mSignature = paramString2;
    this.mItemType = ProductCategoryDetector.getItemTypeOfProductId(this.mProductId);
    this.mCategory = ProductCategoryDetector.getCategoryOfProductId(this.mProductId);
    this.mPending = true;
  }
  
  public Purchase(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong, int paramInt, String paramString5, String paramString6, String paramString7, String paramString8, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this.mItemType = paramString1;
    this.mCategory = ProductCategoryDetector.getCategoryOfProductId(paramString4);
    this.mOrderId = paramString2;
    this.mPackageName = paramString3;
    this.mProductId = paramString4;
    this.mPurchaseTime = paramLong;
    this.mPurchaseState = paramInt;
    this.mDeveloperPayload = paramString5;
    this.mToken = paramString6;
    this.mOriginalJson = paramString7;
    this.mSignature = paramString8;
    this.mVerified = paramBoolean1;
    this.mConsumed = paramBoolean2;
    this.mPending = paramBoolean3;
  }
  
  public String getDeveloperPayload()
  {
    return this.mDeveloperPayload;
  }
  
  public String getItemType()
  {
    return this.mItemType;
  }
  
  public String getOrderId()
  {
    return this.mOrderId;
  }
  
  public String getOriginalJson()
  {
    return this.mOriginalJson;
  }
  
  public String getPackageName()
  {
    return this.mPackageName;
  }
  
  public ProductCategory getProductCategory()
  {
    return this.mCategory;
  }
  
  public String getProductId()
  {
    return this.mProductId;
  }
  
  public int getPurchaseState()
  {
    return this.mPurchaseState;
  }
  
  public long getPurchaseTime()
  {
    return this.mPurchaseTime;
  }
  
  public String getSignature()
  {
    return this.mSignature;
  }
  
  public String getToken()
  {
    return this.mToken;
  }
  
  public boolean isConsumed()
  {
    return this.mConsumed;
  }
  
  boolean isFromDB()
  {
    return this.mFromDB;
  }
  
  public boolean isPending()
  {
    return this.mPending;
  }
  
  public boolean isVerified()
  {
    return this.mVerified;
  }
  
  public void setConsumed(boolean paramBoolean)
  {
    this.mConsumed = paramBoolean;
  }
  
  void setFromDB(boolean paramBoolean)
  {
    this.mFromDB = true;
  }
  
  public void setPending(boolean paramBoolean)
  {
    this.mPending = paramBoolean;
  }
  
  public void setVerified(boolean paramBoolean)
  {
    this.mVerified = paramBoolean;
  }
  
  public String toString()
  {
    return "Purchase(type:" + this.mItemType + ", category:" + this.mCategory + ", verified:" + this.mVerified + ", consumed:" + this.mConsumed + " pending:" + this.mPending + "):" + this.mOriginalJson;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.billing.Purchase
 * JD-Core Version:    0.7.0.1
 */