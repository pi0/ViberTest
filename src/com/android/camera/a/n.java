package com.android.camera.a;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

class n<K, V>
  extends WeakReference<V>
{
  K a;
  
  public n(K paramK, V paramV, ReferenceQueue<V> paramReferenceQueue)
  {
    super(paramV, paramReferenceQueue);
    this.a = paramK;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.android.camera.a.n
 * JD-Core Version:    0.7.0.1
 */