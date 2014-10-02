package com.android.camera.a;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

class m
  extends LinkedHashMap<K, V>
{
  m(l paraml, int paramInt1, float paramFloat, boolean paramBoolean, int paramInt2)
  {
    super(paramInt1, paramFloat, paramBoolean);
  }
  
  protected boolean removeEldestEntry(Map.Entry<K, V> paramEntry)
  {
    return size() > this.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.camera.a.m
 * JD-Core Version:    0.7.0.1
 */