package com.viber.provider;

import com.viber.voip.messages.orm.entity.Entity;

public abstract class f<T extends Entity>
{
  private final int a;
  private a b;
  
  public f(int paramInt, a parama)
  {
    this.a = paramInt;
    this.b = parama;
  }
  
  public int a()
  {
    int i = this.b.getCount() / this.a;
    if (this.b.getCount() % this.a > 0) {}
    for (int j = 1;; j = 0) {
      return j + i;
    }
  }
  
  protected abstract T a(Object paramObject);
  
  public T[] a(int paramInt)
  {
    Entity[] arrayOfEntity = b(this.a);
    int i = paramInt * this.a;
    for (int j = 0; (j < arrayOfEntity.length) && (i < this.b.getCount()); j++)
    {
      arrayOfEntity[j] = a(this.b.a(i));
      i++;
    }
    return arrayOfEntity;
  }
  
  protected abstract T[] b(int paramInt);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.provider.f
 * JD-Core Version:    0.7.0.1
 */