package com.viber.voip.api.billing;

import org.json.JSONObject;

public class ProductDetails
{
  String mDescription;
  String mItemType;
  String mJson;
  String mPrice;
  String mProductId;
  String mTitle;
  String mType;
  
  public ProductDetails(String paramString)
  {
    this("inapp", paramString);
  }
  
  public ProductDetails(String paramString1, String paramString2)
  {
    this.mItemType = paramString1;
    this.mJson = paramString2;
    JSONObject localJSONObject = new JSONObject(this.mJson);
    this.mProductId = localJSONObject.optString("productId");
    this.mType = localJSONObject.optString("type");
    this.mPrice = localJSONObject.optString("price");
    this.mTitle = localJSONObject.optString("title");
    this.mDescription = localJSONObject.optString("description");
  }
  
  public String getDescription()
  {
    return this.mDescription;
  }
  
  public String getJson()
  {
    return this.mJson;
  }
  
  public String getPriceString()
  {
    return this.mPrice;
  }
  
  public String getProductId()
  {
    return this.mProductId;
  }
  
  public String getTitle()
  {
    return this.mTitle;
  }
  
  public String getType()
  {
    return this.mType;
  }
  
  public String toString()
  {
    return "SkuDetails:" + this.mJson;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.billing.ProductDetails
 * JD-Core Version:    0.7.0.1
 */