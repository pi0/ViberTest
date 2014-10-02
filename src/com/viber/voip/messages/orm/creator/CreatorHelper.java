package com.viber.voip.messages.orm.creator;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.entity.FieldMapping;
import com.viber.voip.messages.orm.manager.ViberEntityManager;

public abstract class CreatorHelper
  extends Creator
{
  private final Class<?> type;
  
  public CreatorHelper(Class<?> paramClass)
  {
    this.type = paramClass;
  }
  
  public static String[] addProjections(String[] paramArrayOfString1, String... paramVarArgs)
  {
    int i = 0;
    int j = paramArrayOfString1.length;
    if (paramVarArgs != null) {}
    String[] arrayOfString;
    for (int k = paramVarArgs.length;; k = 0)
    {
      arrayOfString = new String[k + j];
      for (int m = 0; m < paramArrayOfString1.length; m++) {
        arrayOfString[m] = paramArrayOfString1[m];
      }
    }
    int n = paramArrayOfString1.length;
    while ((i < paramVarArgs.length) && (n < arrayOfString.length))
    {
      arrayOfString[n] = paramVarArgs[i];
      n++;
      i++;
    }
    return arrayOfString;
  }
  
  public static Entity findLimitedSync(Creator paramCreator, int paramInt, String paramString1, String paramString2, String... paramVarArgs)
  {
    Object localObject1 = null;
    try
    {
      if ((!TextUtils.isEmpty(paramString1)) || (paramInt <= 0)) {
        break label41;
      }
      throw new IllegalArgumentException("Can't make query with LIMIT and without ORDER");
    }
    finally {}
    if (localObject1 != null) {
      localObject1.close();
    }
    throw localObject2;
    label41:
    if (paramInt > 0) {}
    for (String str = paramString1 + " LIMIT " + paramInt;; str = paramString1)
    {
      Cursor localCursor = ViberApplication.getInstance().getContentResolver().query(paramCreator.getContentUri(), paramCreator.getProjections(), paramString2, paramVarArgs, str);
      if (localCursor != null) {}
      try
      {
        if (localCursor.moveToFirst())
        {
          Entity localEntity = paramCreator.createInstance(localCursor);
          if (localCursor != null) {
            localCursor.close();
          }
          return localEntity;
        }
        if (localCursor != null) {
          localCursor.close();
        }
        return null;
      }
      finally
      {
        localObject1 = localCursor;
      }
      break;
    }
  }
  
  public static Entity findSync(Creator paramCreator, String paramString, String... paramVarArgs)
  {
    return findLimitedSync(paramCreator, 0, null, paramString, paramVarArgs);
  }
  
  public ContentValues getContentValues(Entity paramEntity)
  {
    return paramEntity.getContentValues();
  }
  
  public FieldMapping getFieldMapping()
  {
    return null;
  }
  
  public int getProjectionColumn(String paramString)
  {
    return ViberEntityManager.getProjectionColumn(this.type, paramString);
  }
  
  public int getProjectionColumn(String paramString, int paramInt)
  {
    return paramInt + ViberEntityManager.getProjectionColumn(this.type, paramString);
  }
  
  public String[] getProjections()
  {
    return ViberEntityManager.getProjections(this.type);
  }
  
  public String getTable()
  {
    return ViberEntityManager.getTableName(this.type);
  }
  
  protected void log(String paramString, Exception paramException) {}
  
  protected void log(String paramString1, String paramString2, Exception paramException) {}
  
  public boolean updateInstance(Entity paramEntity, ContentValues paramContentValues)
  {
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.creator.CreatorHelper
 * JD-Core Version:    0.7.0.1
 */