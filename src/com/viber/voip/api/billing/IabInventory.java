package com.viber.voip.api.billing;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class IabInventory
{
  Map<String, ProductDetails> mProductDetailsMap = new HashMap();
  Map<String, Purchase> mPurchaseMap = new HashMap();
  
  void addProductDetails(ProductDetails paramProductDetails)
  {
    this.mProductDetailsMap.put(paramProductDetails.getProductId(), paramProductDetails);
  }
  
  void addPurchase(Purchase paramPurchase)
  {
    this.mPurchaseMap.put(paramPurchase.getProductId(), paramPurchase);
  }
  
  public void erasePurchase(String paramString)
  {
    if (this.mPurchaseMap.containsKey(paramString)) {
      this.mPurchaseMap.remove(paramString);
    }
  }
  
  public List<String> getAllOwnedProductIds()
  {
    return new ArrayList(this.mPurchaseMap.keySet());
  }
  
  public List<String> getAllOwnedProductIds(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.mPurchaseMap.values().iterator();
    while (localIterator.hasNext())
    {
      Purchase localPurchase = (Purchase)localIterator.next();
      if (localPurchase.getItemType().equals(paramString)) {
        localArrayList.add(localPurchase.getProductId());
      }
    }
    return localArrayList;
  }
  
  public List<Purchase> getAllPurchases()
  {
    return new ArrayList(this.mPurchaseMap.values());
  }
  
  public ProductDetails getProductDetails(String paramString)
  {
    return (ProductDetails)this.mProductDetailsMap.get(paramString);
  }
  
  public Purchase getPurchase(String paramString)
  {
    return (Purchase)this.mPurchaseMap.get(paramString);
  }
  
  public boolean hasProductDetails(String paramString)
  {
    return this.mProductDetailsMap.containsKey(paramString);
  }
  
  public boolean hasPurchase(String paramString)
  {
    return this.mPurchaseMap.containsKey(paramString);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.billing.IabInventory
 * JD-Core Version:    0.7.0.1
 */