package com.viber.voip.api.billing;

public enum ProductCategory
{
  static
  {
    STICKER_PACKAGE = new ProductCategory("STICKER_PACKAGE", 1);
    ProductCategory[] arrayOfProductCategory = new ProductCategory[2];
    arrayOfProductCategory[0] = VIBER_OUT_CREDIT;
    arrayOfProductCategory[1] = STICKER_PACKAGE;
    $VALUES = arrayOfProductCategory;
  }
  
  private ProductCategory() {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.billing.ProductCategory
 * JD-Core Version:    0.7.0.1
 */