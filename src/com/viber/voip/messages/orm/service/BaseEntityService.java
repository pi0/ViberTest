package com.viber.voip.messages.orm.service;

import android.content.ContentValues;
import com.viber.voip.messages.orm.entity.CachedEntity;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.manager.AsyncEntityManager;

public abstract class BaseEntityService<T extends Entity>
  implements EntityService<T>
{
  public static void delete(Entity paramEntity)
  {
    AsyncEntityManager.delete(paramEntity, paramEntity.getCreator(), null);
    onDelete(paramEntity);
  }
  
  public static void delete(Entity paramEntity, ServiceDeleteCallback paramServiceDeleteCallback)
  {
    onDelete(paramEntity);
    AsyncEntityManager.delete(paramEntity, paramEntity.getCreator(), paramServiceDeleteCallback);
  }
  
  public static void onDelete(Entity paramEntity)
  {
    if ((paramEntity instanceof CachedEntity)) {
      onDelete((CachedEntity)paramEntity);
    }
  }
  
  public static void onSave(Entity paramEntity)
  {
    if ((paramEntity instanceof CachedEntity)) {
      onSave((CachedEntity)paramEntity);
    }
  }
  
  public static void onSetId(Entity paramEntity)
  {
    if ((paramEntity instanceof CachedEntity)) {
      onSetId((CachedEntity)paramEntity);
    }
  }
  
  public static void onUpdate(Entity paramEntity)
  {
    if ((paramEntity instanceof CachedEntity)) {
      onUpdate((CachedEntity)paramEntity);
    }
  }
  
  public static void save(Entity paramEntity)
  {
    AsyncEntityManager.save(paramEntity, paramEntity.getCreator());
    onSave(paramEntity);
  }
  
  public static void save(Entity paramEntity, ServiceSaveCallback paramServiceSaveCallback)
  {
    AsyncEntityManager.save(paramEntity, paramEntity.getCreator(), new BaseEntityService.1(paramServiceSaveCallback));
  }
  
  public static void saveWithoutAddToCache(Entity paramEntity)
  {
    AsyncEntityManager.save(paramEntity, paramEntity.getCreator());
  }
  
  public static void update(Entity paramEntity)
  {
    AsyncEntityManager.update(paramEntity, paramEntity.getCreator(), null);
    onUpdate(paramEntity);
  }
  
  public static void update(Entity paramEntity, ContentValues paramContentValues, ServiceUpdateCallback paramServiceUpdateCallback)
  {
    AsyncEntityManager.update(paramEntity, paramEntity.getCreator(), paramContentValues, paramServiceUpdateCallback);
    onUpdate(paramEntity);
  }
  
  public static void update(Entity paramEntity, ServiceUpdateCallback paramServiceUpdateCallback)
  {
    onUpdate(paramEntity);
    AsyncEntityManager.update(paramEntity, paramEntity.getCreator(), paramServiceUpdateCallback);
  }
  
  public static void updateWithoutAddToCache(Entity paramEntity)
  {
    AsyncEntityManager.update(paramEntity, paramEntity.getCreator(), null);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.service.BaseEntityService
 * JD-Core Version:    0.7.0.1
 */