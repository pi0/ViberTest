package com.viber.voip.messages.orm.entity;

import android.content.ContentValues;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public abstract class EntityUpdater<T extends Entity>
{
  protected T baseEntity;
  protected boolean cAll;
  
  public EntityUpdater(T paramT, ContentValues paramContentValues, String[] paramArrayOfString)
  {
    this.baseEntity = paramT;
    Collection localCollection1 = getKeys(paramContentValues);
    Collection localCollection2 = getKeys(paramArrayOfString);
    if (localCollection1 != null)
    {
      initUpdateTerms(localCollection1);
      return;
    }
    if (localCollection2 != null)
    {
      initUpdateTerms(localCollection2);
      return;
    }
    this.cAll = true;
  }
  
  private Collection<String> getKeys(ContentValues paramContentValues)
  {
    if (paramContentValues != null)
    {
      HashSet localHashSet = new HashSet();
      Iterator localIterator = paramContentValues.valueSet().iterator();
      while (localIterator.hasNext()) {
        localHashSet.add(((Map.Entry)localIterator.next()).getKey());
      }
      return localHashSet;
    }
    return null;
  }
  
  private Collection<String> getKeys(String[] paramArrayOfString)
  {
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0)) {
      return Arrays.asList(paramArrayOfString);
    }
    return null;
  }
  
  protected abstract void initUpdateTerms(Collection<String> paramCollection);
  
  protected boolean notEquals(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    return ((paramBoolean) || (this.cAll)) && (paramInt1 != paramInt2);
  }
  
  protected boolean notEquals(boolean paramBoolean, long paramLong1, long paramLong2)
  {
    return ((paramBoolean) || (this.cAll)) && (paramLong1 != paramLong2);
  }
  
  protected boolean notEquals(boolean paramBoolean, String paramString1, String paramString2)
  {
    if (((!paramBoolean) && (!this.cAll)) || (paramString1 == paramString2)) {}
    while ((paramString1 != null) && (paramString1.equals(paramString2))) {
      return false;
    }
    return true;
  }
  
  protected boolean notEquals(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    return ((paramBoolean1) || (this.cAll)) && (paramBoolean2 != paramBoolean3);
  }
  
  public final boolean update(Entity paramEntity)
  {
    if ((paramEntity != null) && (this.baseEntity != null)) {
      return updateEntity(paramEntity);
    }
    return false;
  }
  
  protected abstract boolean updateEntity(T paramT);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.EntityUpdater
 * JD-Core Version:    0.7.0.1
 */