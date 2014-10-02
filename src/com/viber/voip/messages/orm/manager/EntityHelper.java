package com.viber.voip.messages.orm.manager;

import android.content.ContentValues;
import android.database.Cursor;
import com.viber.voip.messages.orm.entity.Entity;
import java.util.List;
import java.util.Set;

public abstract class EntityHelper
{
  private ViberEntityManager.EntityMapping entityMapping;
  private boolean hasChanges;
  private boolean hasUiChanges;
  private int offset;
  
  public EntityHelper(ViberEntityManager.EntityMapping paramEntityMapping)
  {
    this.entityMapping = paramEntityMapping;
  }
  
  private void rememderChanges(String paramString)
  {
    this.hasChanges = true;
    if (this.entityMapping.uiRelatedProjectionsList.contains(paramString)) {
      this.hasUiChanges = true;
    }
  }
  
  abstract Entity create(Cursor paramCursor);
  
  public boolean getAndResetChanges()
  {
    boolean bool = this.hasChanges;
    this.hasChanges = false;
    return bool;
  }
  
  public boolean getAndResetUiChanges()
  {
    boolean bool = this.hasUiChanges;
    this.hasUiChanges = false;
    return bool;
  }
  
  protected int getField(ContentValues paramContentValues, String paramString, int paramInt)
  {
    int i = paramContentValues.getAsInteger(paramString).intValue();
    if (i != paramInt)
    {
      rememderChanges(paramString);
      paramInt = i;
    }
    return paramInt;
  }
  
  protected long getField(ContentValues paramContentValues, String paramString, long paramLong)
  {
    long l = paramContentValues.getAsLong(paramString).longValue();
    if (l != paramLong)
    {
      rememderChanges(paramString);
      paramLong = l;
    }
    return paramLong;
  }
  
  protected String getField(ContentValues paramContentValues, String paramString1, String paramString2)
  {
    if (paramString2 == null) {
      paramString2 = "";
    }
    String str = paramContentValues.getAsString(paramString1);
    if (!paramString2.equals(str))
    {
      rememderChanges(paramString1);
      paramString2 = str;
    }
    return paramString2;
  }
  
  protected boolean getField(ContentValues paramContentValues, String paramString, boolean paramBoolean)
  {
    boolean bool = paramContentValues.getAsBoolean(paramString).booleanValue();
    if (bool != paramBoolean)
    {
      rememderChanges(paramString);
      paramBoolean = bool;
    }
    return paramBoolean;
  }
  
  public int getOffset()
  {
    return this.offset;
  }
  
  public int getPosition(String paramString, Cursor paramCursor)
  {
    if ((this.offset == 0) && (paramCursor != null)) {
      return paramCursor.getColumnIndex(paramString);
    }
    return this.entityMapping.projectionsList.indexOf(paramString) + this.offset;
  }
  
  public void setOffset(int paramInt)
  {
    this.offset = paramInt;
  }
  
  abstract boolean update(ContentValues paramContentValues);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.manager.EntityHelper
 * JD-Core Version:    0.7.0.1
 */