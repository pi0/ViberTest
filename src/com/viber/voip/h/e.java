package com.viber.voip.h;

import android.support.v4.util.SparseArrayCompat;

class e
  extends SparseArrayCompat<String>
{
  private e(b paramb) {}
  
  public int a(String paramString)
  {
    for (int i = 0; i < size(); i++) {
      if (paramString.equals(valueAt(i))) {
        return i;
      }
    }
    return super.indexOfValue(paramString);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.h.e
 * JD-Core Version:    0.7.0.1
 */