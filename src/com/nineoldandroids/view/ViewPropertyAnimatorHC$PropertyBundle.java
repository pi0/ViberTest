package com.nineoldandroids.view;

import java.util.ArrayList;

class ViewPropertyAnimatorHC$PropertyBundle
{
  ArrayList<ViewPropertyAnimatorHC.NameValuesHolder> mNameValuesHolder;
  int mPropertyMask;
  
  ViewPropertyAnimatorHC$PropertyBundle(int paramInt, ArrayList<ViewPropertyAnimatorHC.NameValuesHolder> paramArrayList)
  {
    this.mPropertyMask = paramInt;
    this.mNameValuesHolder = paramArrayList;
  }
  
  boolean cancel(int paramInt)
  {
    if (((paramInt & this.mPropertyMask) != 0) && (this.mNameValuesHolder != null))
    {
      int i = this.mNameValuesHolder.size();
      for (int j = 0; j < i; j++) {
        if (((ViewPropertyAnimatorHC.NameValuesHolder)this.mNameValuesHolder.get(j)).mNameConstant == paramInt)
        {
          this.mNameValuesHolder.remove(j);
          this.mPropertyMask &= (paramInt ^ 0xFFFFFFFF);
          return true;
        }
      }
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.nineoldandroids.view.ViewPropertyAnimatorHC.PropertyBundle
 * JD-Core Version:    0.7.0.1
 */