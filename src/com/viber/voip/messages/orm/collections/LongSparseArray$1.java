package com.viber.voip.messages.orm.collections;

import java.util.Iterator;

class LongSparseArray$1
  implements Iterator<E>
{
  private int currentPos;
  
  LongSparseArray$1(LongSparseArray paramLongSparseArray) {}
  
  public boolean hasNext()
  {
    while (LongSparseArray.access$000(this.this$0).length > this.currentPos)
    {
      Object localObject = LongSparseArray.access$000(this.this$0)[this.currentPos];
      if ((localObject != null) && (localObject != LongSparseArray.access$100())) {
        return true;
      }
      this.currentPos = (1 + this.currentPos);
    }
    return false;
  }
  
  public E next()
  {
    Object[] arrayOfObject = LongSparseArray.access$000(this.this$0);
    int i = this.currentPos;
    this.currentPos = (i + 1);
    return arrayOfObject[i];
  }
  
  public void remove() {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.collections.LongSparseArray.1
 * JD-Core Version:    0.7.0.1
 */