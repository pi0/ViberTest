package com.viber.voip.messages.orm.creator;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.entity.FieldMapping;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public abstract class JoinCreator
  extends CreatorHelper
{
  private Uri contentUri;
  private Creator[] creators;
  private Map<Creator, Integer> offsets = new HashMap();
  private String[] projections;
  
  public JoinCreator(Uri paramUri, Class<?> paramClass, Creator... paramVarArgs)
  {
    super(paramClass);
    this.contentUri = paramUri;
    this.projections = createProjections(paramVarArgs);
    this.creators = paramVarArgs;
  }
  
  public JoinCreator(Class<?> paramClass, Creator... paramVarArgs)
  {
    super(paramClass);
    this.projections = createProjections(paramVarArgs);
    this.creators = paramVarArgs;
  }
  
  private int createProjections(List<String> paramList, String paramString, String[] paramArrayOfString)
  {
    int i = paramList.size();
    int j = paramArrayOfString.length;
    int k = 0;
    if (k < j)
    {
      String str = paramArrayOfString[k];
      if (TextUtils.isEmpty(paramString)) {
        paramList.add(str);
      }
      for (;;)
      {
        k++;
        break;
        paramList.add(paramString + "." + str);
      }
    }
    return i;
  }
  
  private String[] createProjections(Creator... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < paramVarArgs.length; i++)
    {
      int j = createProjections(localArrayList, paramVarArgs[i].getTable(), paramVarArgs[i].getProjections());
      this.offsets.put(paramVarArgs[i], Integer.valueOf(j));
    }
    return (String[])localArrayList.toArray(new String[0]);
  }
  
  public Entity createEntity()
  {
    return null;
  }
  
  public Entity createInstance(Cursor paramCursor, int paramInt)
  {
    throw new IllegalArgumentException("not implemented");
  }
  
  protected Entity createInstancesInternal(Cursor paramCursor, Creator paramCreator)
  {
    return paramCreator.createInstance(paramCursor, ((Integer)this.offsets.get(paramCreator)).intValue());
  }
  
  protected Entity createInstancesInternal(Cursor paramCursor, Creator paramCreator1, Creator paramCreator2)
  {
    return paramCreator2.createInstance(paramCursor, ((Integer)this.offsets.get(paramCreator1)).intValue());
  }
  
  protected Entity[] createInstancesInternal(Cursor paramCursor)
  {
    Entity[] arrayOfEntity = new Entity[this.creators.length];
    for (int i = 0; i < this.creators.length; i++) {
      arrayOfEntity[i] = this.creators[i].createInstance(paramCursor, ((Integer)this.offsets.get(this.creators[i])).intValue());
    }
    return arrayOfEntity;
  }
  
  public final Uri getContentUri()
  {
    return this.contentUri;
  }
  
  public FieldMapping getFieldMapping()
  {
    return null;
  }
  
  protected int getProjectionColumn(Creator paramCreator, String paramString)
  {
    if (TextUtils.isEmpty(paramCreator.getTable())) {}
    for (int i = 0;; i++)
    {
      if (i >= this.projections.length) {
        break label72;
      }
      if (this.projections[i].equals(paramString))
      {
        return i;
        paramString = paramCreator.getTable() + "." + paramString;
        break;
      }
    }
    label72:
    return -1;
  }
  
  public final String[] getProjections()
  {
    return this.projections;
  }
  
  protected boolean moveToNext(Cursor paramCursor, long paramLong)
  {
    return (paramCursor.moveToNext()) && (paramLong == paramCursor.getLong(getAggregateField()));
  }
  
  public boolean updateInstance(Entity paramEntity, ContentValues paramContentValues)
  {
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.creator.JoinCreator
 * JD-Core Version:    0.7.0.1
 */