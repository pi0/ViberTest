package android.support.v4.util;

import java.util.Map;

class ArrayMap$1
  extends MapCollections<K, V>
{
  ArrayMap$1(ArrayMap paramArrayMap) {}
  
  protected void colClear()
  {
    this.this$0.clear();
  }
  
  protected Object colGetEntry(int paramInt1, int paramInt2)
  {
    return this.this$0.mArray[(paramInt2 + (paramInt1 << 1))];
  }
  
  protected Map<K, V> colGetMap()
  {
    return this.this$0;
  }
  
  protected int colGetSize()
  {
    return this.this$0.mSize;
  }
  
  protected int colIndexOfKey(Object paramObject)
  {
    if (paramObject == null) {
      return this.this$0.indexOfNull();
    }
    return this.this$0.indexOf(paramObject, paramObject.hashCode());
  }
  
  protected int colIndexOfValue(Object paramObject)
  {
    return this.this$0.indexOfValue(paramObject);
  }
  
  protected void colPut(K paramK, V paramV)
  {
    this.this$0.put(paramK, paramV);
  }
  
  protected void colRemoveAt(int paramInt)
  {
    this.this$0.removeAt(paramInt);
  }
  
  protected V colSetValue(int paramInt, V paramV)
  {
    return this.this$0.setValueAt(paramInt, paramV);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     android.support.v4.util.ArrayMap.1
 * JD-Core Version:    0.7.0.1
 */