package com.viber.voip.api.billing;

public class ProductCategoryDetector
{
  public static ProductCategory getCategoryOfProductId(String paramString)
  {
    if (paramString.startsWith("sticker")) {
      return ProductCategory.STICKER_PACKAGE;
    }
    return ProductCategory.VIBER_OUT_CREDIT;
  }
  
  public static String getItemTypeOfProductId(String paramString)
  {
    return "inapp";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.billing.ProductCategoryDetector
 * JD-Core Version:    0.7.0.1
 */