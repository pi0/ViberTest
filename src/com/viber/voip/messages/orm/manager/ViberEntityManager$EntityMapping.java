package com.viber.voip.messages.orm.manager;

import android.net.Uri;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ViberEntityManager$EntityMapping
{
  public final String cacheProjection;
  public final Uri contentUri;
  public final EntityHelper helper;
  public final Map<String, Class<?>> projectionTypes;
  public final String[] projections;
  public final List<String> projectionsList;
  public final String tableName;
  public final Set<String> uiRelatedProjectionsList;
  
  ViberEntityManager$EntityMapping(List<String> paramList, Set<String> paramSet, EntityHelper paramEntityHelper, String paramString1, Uri paramUri, String paramString2)
  {
    this.projections = ((String[])paramList.toArray(new String[0]));
    this.projectionTypes = null;
    this.projectionsList = paramList;
    this.uiRelatedProjectionsList = paramSet;
    this.helper = paramEntityHelper;
    this.tableName = paramString1;
    this.contentUri = paramUri;
    this.cacheProjection = paramString2;
  }
  
  ViberEntityManager$EntityMapping(String[] paramArrayOfString, String paramString1, Uri paramUri, String paramString2, Map<String, Class<?>> paramMap)
  {
    this.helper = null;
    this.projectionsList = null;
    this.uiRelatedProjectionsList = null;
    this.projections = paramArrayOfString;
    this.tableName = paramString1;
    this.contentUri = paramUri;
    this.cacheProjection = paramString2;
    this.projectionTypes = paramMap;
  }
  
  int getProjectionColumn(String paramString)
  {
    for (int i = 0; i < this.projections.length; i++) {
      if ((paramString != null) && (paramString.equals(this.projections[i]))) {
        return i;
      }
    }
    return -1;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.manager.ViberEntityManager.EntityMapping
 * JD-Core Version:    0.7.0.1
 */