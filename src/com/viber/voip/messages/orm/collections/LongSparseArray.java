package com.viber.voip.messages.orm.collections;

import android.util.Log;
import com.viber.voip.util.e;
import java.util.Iterator;

public class LongSparseArray<E>
{
  private static final Object DELETED = new Object();
  private boolean mGarbage = false;
  private long[] mKeys;
  private int mSize;
  private Object[] mValues;
  
  public LongSparseArray()
  {
    this(10);
  }
  
  public LongSparseArray(int paramInt)
  {
    int i = e.b(paramInt);
    this.mKeys = new long[i];
    this.mValues = new Object[i];
    this.mSize = 0;
  }
  
  private static int binarySearch(long[] paramArrayOfLong, int paramInt1, int paramInt2, long paramLong)
  {
    int i = paramInt1 + paramInt2;
    int j = paramInt1 - 1;
    int k = i;
    while (k - j > 1)
    {
      int m = (k + j) / 2;
      if (paramArrayOfLong[m] < paramLong) {
        j = m;
      } else {
        k = m;
      }
    }
    if (k == paramInt1 + paramInt2) {
      k = 0xFFFFFFFF ^ paramInt1 + paramInt2;
    }
    while (paramArrayOfLong[k] == paramLong) {
      return k;
    }
    return k ^ 0xFFFFFFFF;
  }
  
  private void gc()
  {
    int i = this.mSize;
    long[] arrayOfLong = this.mKeys;
    Object[] arrayOfObject = this.mValues;
    int j = 0;
    int k = 0;
    while (j < i)
    {
      Object localObject = arrayOfObject[j];
      if (localObject != DELETED)
      {
        if (j != k)
        {
          arrayOfLong[k] = arrayOfLong[j];
          arrayOfObject[k] = localObject;
        }
        k++;
      }
      j++;
    }
    this.mGarbage = false;
    this.mSize = k;
  }
  
  public void append(long paramLong, E paramE)
  {
    if ((this.mSize != 0) && (paramLong <= this.mKeys[(-1 + this.mSize)]))
    {
      put(paramLong, paramE);
      return;
    }
    if ((this.mGarbage) && (this.mSize >= this.mKeys.length)) {
      gc();
    }
    int i = this.mSize;
    if (i >= this.mKeys.length)
    {
      int j = e.b(i + 1);
      long[] arrayOfLong = new long[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(this.mKeys, 0, arrayOfLong, 0, this.mKeys.length);
      System.arraycopy(this.mValues, 0, arrayOfObject, 0, this.mValues.length);
      this.mKeys = arrayOfLong;
      this.mValues = arrayOfObject;
    }
    this.mKeys[i] = paramLong;
    this.mValues[i] = paramE;
    this.mSize = (i + 1);
  }
  
  protected void checkIntegrity()
  {
    for (int i = 1; i < this.mSize; i++) {
      if (this.mKeys[i] <= this.mKeys[(i - 1)])
      {
        for (int j = 0; j < this.mSize; j++) {
          Log.e("FAIL", j + ": " + this.mKeys[j] + " -> " + this.mValues[j]);
        }
        throw new RuntimeException();
      }
    }
  }
  
  public void clear()
  {
    int i = this.mSize;
    Object[] arrayOfObject = this.mValues;
    for (int j = 0; j < i; j++) {
      arrayOfObject[j] = null;
    }
    this.mSize = 0;
    this.mGarbage = false;
  }
  
  public boolean containsKey(long paramLong)
  {
    return indexOfKey(paramLong) >= 0;
  }
  
  public void delete(long paramLong)
  {
    int i = binarySearch(this.mKeys, 0, this.mSize, paramLong);
    if ((i >= 0) && (this.mValues[i] != DELETED))
    {
      this.mValues[i] = DELETED;
      this.mGarbage = true;
    }
  }
  
  public E get(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.mValues.length)) {
      return this.mValues[paramInt];
    }
    return null;
  }
  
  public E get(long paramLong)
  {
    return get(paramLong, null);
  }
  
  public E get(long paramLong, E paramE)
  {
    int i = binarySearch(this.mKeys, 0, this.mSize, paramLong);
    if ((i < 0) || (this.mValues[i] == DELETED)) {
      return paramE;
    }
    return this.mValues[i];
  }
  
  public long[] getKeys()
  {
    int i = this.mKeys.length;
    long[] arrayOfLong = new long[i];
    System.arraycopy(this.mKeys, 0, arrayOfLong, 0, i);
    return arrayOfLong;
  }
  
  public Iterator<E> getiIterator()
  {
    return new LongSparseArray.1(this);
  }
  
  public int indexOfKey(long paramLong)
  {
    if (this.mGarbage) {
      gc();
    }
    return binarySearch(this.mKeys, 0, this.mSize, paramLong);
  }
  
  public int indexOfValue(E paramE)
  {
    if (this.mGarbage) {
      gc();
    }
    for (int i = 0; i < this.mSize; i++) {
      if (this.mValues[i] == paramE) {
        return i;
      }
    }
    return -1;
  }
  
  public long keyAt(int paramInt)
  {
    if (this.mGarbage) {
      gc();
    }
    return this.mKeys[paramInt];
  }
  
  public void put(long paramLong, E paramE)
  {
    int i = binarySearch(this.mKeys, 0, this.mSize, paramLong);
    if (i >= 0)
    {
      this.mValues[i] = paramE;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < this.mSize) && (this.mValues[j] == DELETED))
    {
      this.mKeys[j] = paramLong;
      this.mValues[j] = paramE;
      return;
    }
    if ((this.mGarbage) && (this.mSize >= this.mKeys.length))
    {
      gc();
      j = 0xFFFFFFFF ^ binarySearch(this.mKeys, 0, this.mSize, paramLong);
    }
    if (this.mSize >= this.mKeys.length)
    {
      int k = e.b(1 + this.mSize);
      long[] arrayOfLong = new long[k];
      Object[] arrayOfObject = new Object[k];
      System.arraycopy(this.mKeys, 0, arrayOfLong, 0, this.mKeys.length);
      System.arraycopy(this.mValues, 0, arrayOfObject, 0, this.mValues.length);
      this.mKeys = arrayOfLong;
      this.mValues = arrayOfObject;
    }
    if (this.mSize - j != 0)
    {
      System.arraycopy(this.mKeys, j, this.mKeys, j + 1, this.mSize - j);
      System.arraycopy(this.mValues, j, this.mValues, j + 1, this.mSize - j);
    }
    this.mKeys[j] = paramLong;
    this.mValues[j] = paramE;
    this.mSize = (1 + this.mSize);
  }
  
  public void remove(long paramLong)
  {
    delete(paramLong);
  }
  
  public void setValueAt(int paramInt, E paramE)
  {
    if (this.mGarbage) {
      gc();
    }
    this.mValues[paramInt] = paramE;
  }
  
  public void setValues(long[] paramArrayOfLong, E paramE)
  {
    int i = paramArrayOfLong.length;
    for (int j = 0; j < i; j++) {
      put(paramArrayOfLong[j], paramE);
    }
  }
  
  public int size()
  {
    if (this.mGarbage) {
      gc();
    }
    return this.mSize;
  }
  
  public E valueAt(int paramInt)
  {
    if (this.mGarbage) {
      gc();
    }
    return this.mValues[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.collections.LongSparseArray
 * JD-Core Version:    0.7.0.1
 */