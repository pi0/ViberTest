package com.viber.voip.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class u
{
  static
  {
    if (!u.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private u()
  {
    if (!a) {
      throw new AssertionError();
    }
  }
  
  public static <S, D> List<D> a(Collection<S> paramCollection, v<S, D> paramv)
  {
    if (paramCollection == null) {
      throw new IllegalArgumentException("Source parameter is required");
    }
    if (paramv == null) {
      throw new IllegalArgumentException("Transformer parameter is required");
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(paramv.transform(localIterator.next()));
    }
    return localArrayList;
  }
  
  public static <T> boolean a(Collection<T> paramCollection, T paramT)
  {
    if ((paramCollection != null) && (!paramCollection.isEmpty())) {
      return paramCollection.contains(paramT);
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.u
 * JD-Core Version:    0.7.0.1
 */