package com.viber.voip.messages.orm.manager;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.service.ServiceDeleteCallback;
import com.viber.voip.messages.orm.service.ServiceSaveCallback;
import com.viber.voip.messages.orm.service.ServiceUpdateCallback;
import com.viber.voip.util.fe;
import com.viber.voip.util.fl;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class AsyncEntityManager
  extends EntityManager
  implements fl
{
  public static final int DEFAULT_REQUEST_TOKEN = 1536;
  public static final boolean USE_CHANGE_NOTIFICATIONS = true;
  protected static fe queryHandler = fe.b(ViberApplication.getInstance());
  protected Set<AsyncEntityManager.FillCursorCompleteCallback> accessors = Collections.synchronizedSet(new HashSet());
  protected Set<Uri> lookupUris = new HashSet(3);
  protected boolean mHightPriority = true;
  protected int mId;
  protected boolean mRedirectToUi;
  protected String mSelection;
  protected String[] mSelectionArgs;
  protected String mSortOrder;
  protected boolean mUpdateCursorOnDataChange;
  private ContentObserver messagesThreadSelfObserver = new AsyncEntityManager.7(this, dc.a(dk.d));
  protected boolean validCursor;
  
  public AsyncEntityManager(Creator paramCreator)
  {
    super(paramCreator);
    this.mId = 1536;
    this.mUpdateCursorOnDataChange = false;
  }
  
  public AsyncEntityManager(Creator paramCreator, AsyncEntityManager.FillCursorCompleteCallback paramFillCursorCompleteCallback)
  {
    super(paramCreator);
    this.mId = 1536;
    this.mUpdateCursorOnDataChange = false;
    registerCallback(paramFillCursorCompleteCallback);
  }
  
  public AsyncEntityManager(Creator paramCreator, AsyncEntityManager.FillCursorCompleteCallback paramFillCursorCompleteCallback, int paramInt)
  {
    super(paramCreator);
    this.mId = paramInt;
    this.mUpdateCursorOnDataChange = false;
    registerCallback(paramFillCursorCompleteCallback);
  }
  
  public AsyncEntityManager(Creator paramCreator, AsyncEntityManager.FillCursorCompleteCallback paramFillCursorCompleteCallback, int paramInt, boolean paramBoolean)
  {
    super(paramCreator);
    this.mId = paramInt;
    this.mUpdateCursorOnDataChange = paramBoolean;
    registerCallback(paramFillCursorCompleteCallback);
  }
  
  public AsyncEntityManager(Creator paramCreator, AsyncEntityManager.FillCursorCompleteCallback paramFillCursorCompleteCallback, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramCreator);
    this.mId = paramInt;
    this.mUpdateCursorOnDataChange = paramBoolean1;
    this.mHightPriority = paramBoolean2;
    registerCallback(paramFillCursorCompleteCallback);
  }
  
  public AsyncEntityManager(Creator paramCreator, AsyncEntityManager.FillCursorCompleteCallback paramFillCursorCompleteCallback, boolean paramBoolean)
  {
    super(paramCreator);
    this.mId = 1536;
    this.mUpdateCursorOnDataChange = false;
    this.mRedirectToUi = paramBoolean;
    registerCallback(paramFillCursorCompleteCallback);
  }
  
  public AsyncEntityManager(Creator paramCreator, boolean paramBoolean)
  {
    super(paramCreator);
    this.mId = 1536;
    this.mUpdateCursorOnDataChange = false;
    this.mHightPriority = paramBoolean;
  }
  
  public AsyncEntityManager(Creator paramCreator, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramCreator);
    this.mId = 1536;
    this.mUpdateCursorOnDataChange = false;
    this.mHightPriority = paramBoolean1;
    this.mRedirectToUi = paramBoolean2;
  }
  
  public static void delete(Entity paramEntity, Creator paramCreator, ServiceDeleteCallback paramServiceDeleteCallback)
  {
    if (paramEntity.getId() != -1L)
    {
      String str = String.valueOf(paramEntity.getId());
      queryHandler.a(1536, paramCreator, paramCreator.getContentUri(), "_id=?", new String[] { str }, new AsyncEntityManager.6(paramServiceDeleteCallback));
    }
  }
  
  public static void delete(ServiceDeleteCallback paramServiceDeleteCallback, Creator paramCreator, String paramString, String... paramVarArgs)
  {
    queryHandler.a(1536, paramCreator, paramCreator.getContentUri(), paramString, paramVarArgs, new AsyncEntityManager.5(paramServiceDeleteCallback));
  }
  
  public static void save(Entity paramEntity, Creator paramCreator, ServiceSaveCallback paramServiceSaveCallback)
  {
    queryHandler.a(1536, paramCreator, paramCreator.getContentUri(), paramCreator.getContentValues(paramEntity), new AsyncEntityManager.2(paramEntity, paramServiceSaveCallback), false, false);
  }
  
  public static void update(Entity paramEntity, Creator paramCreator, ContentValues paramContentValues, ServiceUpdateCallback paramServiceUpdateCallback)
  {
    if (paramEntity.getId() != -1L)
    {
      String str = String.valueOf(paramEntity.getId());
      queryHandler.a(1536, paramCreator, paramCreator.getContentUri(), paramContentValues, "_id=?", new String[] { str }, new AsyncEntityManager.3(paramServiceUpdateCallback, paramEntity), false, true);
    }
  }
  
  public static void update(Entity paramEntity, Creator paramCreator, ServiceUpdateCallback paramServiceUpdateCallback)
  {
    if (paramEntity.getId() != -1L) {
      update(paramEntity, paramCreator, paramCreator.getContentValues(paramEntity), paramServiceUpdateCallback);
    }
  }
  
  public static void update(Entity paramEntity, Creator paramCreator, ServiceUpdateCallback paramServiceUpdateCallback, String paramString, String... paramVarArgs)
  {
    if (paramEntity.getId() != -1L) {
      queryHandler.a(1536, paramCreator, paramCreator.getContentUri(), paramCreator.getContentValues(paramEntity), paramString, paramVarArgs, new AsyncEntityManager.4(paramServiceUpdateCallback, paramEntity), false, true);
    }
  }
  
  protected void broadcastDataChanged(int paramInt)
  {
    for (;;)
    {
      synchronized (this.accessors)
      {
        Set localSet2 = Collections.synchronizedSet(this.accessors);
        this.validCursor = true;
        Iterator localIterator = localSet2.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        AsyncEntityManager.FillCursorCompleteCallback localFillCursorCompleteCallback = (AsyncEntityManager.FillCursorCompleteCallback)localIterator.next();
        if (paramInt == 1536)
        {
          i = this.mId;
          localFillCursorCompleteCallback.onDataReady(this, i);
        }
      }
      int i = paramInt;
    }
  }
  
  public boolean containsCallback(AsyncEntityManager.FillCursorCompleteCallback paramFillCursorCompleteCallback)
  {
    synchronized (this.accessors)
    {
      boolean bool = this.accessors.contains(paramFillCursorCompleteCallback);
      return bool;
    }
  }
  
  public void countCursor(int paramInt, Uri paramUri, String paramString, String... paramVarArgs)
  {
    synchronized (this.accessors)
    {
      this.validCursor = false;
      this.mSelection = paramString;
      this.mSelectionArgs = paramVarArgs;
      this.mCountRequest = true;
      queryHandler.a(paramInt, this, paramUri, PROJECTIONS_COUNT, paramString, paramVarArgs, null, this, this.mRedirectToUi, false, this.mHightPriority);
      return;
    }
  }
  
  public void countCursor(int paramInt, String paramString, String... paramVarArgs)
  {
    synchronized (this.accessors)
    {
      this.validCursor = false;
      this.mSelection = paramString;
      this.mSelectionArgs = paramVarArgs;
      this.mCountRequest = true;
      queryHandler.a(paramInt, this, this.mCreator.getContentUri(), PROJECTIONS_COUNT, paramString, paramVarArgs, null, this, this.mRedirectToUi, false, this.mHightPriority);
      return;
    }
  }
  
  public void delete(Entity paramEntity, ServiceDeleteCallback paramServiceDeleteCallback)
  {
    delete(paramEntity, this.mCreator, paramServiceDeleteCallback);
  }
  
  public void delete(ServiceDeleteCallback paramServiceDeleteCallback, String paramString, String... paramVarArgs)
  {
    delete(paramServiceDeleteCallback, this.mCreator, paramString, paramVarArgs);
  }
  
  public void fillCursor(int paramInt, String paramString1, String paramString2, String... paramVarArgs)
  {
    synchronized (this.accessors)
    {
      this.validCursor = false;
      this.mSelection = paramString2;
      this.mSelectionArgs = paramVarArgs;
      this.mSortOrder = paramString1;
      this.mCountRequest = false;
      queryHandler.a(paramInt, this, this.mCreator.getContentUri(), this.mCreator.getProjections(), paramString2, paramVarArgs, paramString1, this, this.mRedirectToUi, false, this.mHightPriority);
      return;
    }
  }
  
  public void fillCursor(fe paramfe, AsyncEntityManager.FillCursorCompleteCallback paramFillCursorCompleteCallback, int paramInt, String paramString, String... paramVarArgs)
  {
    fillCursor(paramfe, paramFillCursorCompleteCallback, null, paramInt, paramString, paramVarArgs);
  }
  
  public void fillCursor(fe paramfe, AsyncEntityManager.FillCursorCompleteCallback paramFillCursorCompleteCallback, String paramString1, int paramInt, String paramString2, String... paramVarArgs)
  {
    synchronized (this.accessors)
    {
      this.validCursor = false;
      this.mSelection = paramString2;
      this.mSelectionArgs = paramVarArgs;
      this.mCountRequest = true;
      paramfe.a(paramInt, this, this.mCreator.getContentUri(), this.mCreator.getProjections(), paramString2, paramVarArgs, paramString1, new AsyncEntityManager.1(this, paramFillCursorCompleteCallback), this.mRedirectToUi, false, this.mHightPriority);
      return;
    }
  }
  
  public void fillCursor(String paramString1, String paramString2, String... paramVarArgs)
  {
    synchronized (this.accessors)
    {
      this.validCursor = false;
      this.mSelection = paramString2;
      this.mSelectionArgs = paramVarArgs;
      this.mSortOrder = paramString1;
      this.mCountRequest = false;
      queryHandler.a(1536, this, this.mCreator.getContentUri(), this.mCreator.getProjections(), paramString2, paramVarArgs, paramString1, this, this.mRedirectToUi, false, this.mHightPriority);
      return;
    }
  }
  
  public void fillCursorSync(String paramString1, String paramString2, String... paramVarArgs)
  {
    this.mSelection = paramString2;
    this.mSelectionArgs = paramVarArgs;
    this.mSortOrder = paramString1;
    this.mCountRequest = false;
    super.fillCursor(paramString1, paramString2, paramVarArgs);
  }
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    try
    {
      processMessagesReplyInternal(paramCursor);
      return;
    }
    finally
    {
      broadcastDataChanged(paramInt);
    }
  }
  
  public void processMessagesReplyInternal(Cursor paramCursor)
  {
    super.processMessagesReplyInternal(paramCursor);
    if (this.mUpdateCursorOnDataChange)
    {
      Uri localUri = this.mCreator.getContentUri();
      if (this.lookupUris.add(localUri)) {
        this.mContext.getContentResolver().registerContentObserver(localUri, true, this.messagesThreadSelfObserver);
      }
    }
  }
  
  public void registerCallback(AsyncEntityManager.FillCursorCompleteCallback paramFillCursorCompleteCallback)
  {
    if (paramFillCursorCompleteCallback == null) {}
    for (;;)
    {
      return;
      synchronized (this.accessors)
      {
        this.accessors.add(paramFillCursorCompleteCallback);
        if (!this.validCursor) {
          continue;
        }
        paramFillCursorCompleteCallback.onDataReady(this, this.mId);
        return;
      }
    }
  }
  
  public void save(Entity paramEntity, ServiceSaveCallback paramServiceSaveCallback)
  {
    save(paramEntity, this.mCreator, paramServiceSaveCallback);
  }
  
  public void unregisterCallback(AsyncEntityManager.FillCursorCompleteCallback paramFillCursorCompleteCallback)
  {
    synchronized (this.accessors)
    {
      this.accessors.remove(paramFillCursorCompleteCallback);
      if (this.lookupUris.size() > 0)
      {
        ViberApplication.getInstance().getContentResolver().unregisterContentObserver(this.messagesThreadSelfObserver);
        this.lookupUris.clear();
      }
      return;
    }
  }
  
  public void update(Entity paramEntity, ServiceUpdateCallback paramServiceUpdateCallback)
  {
    update(paramEntity, this.mCreator, paramServiceUpdateCallback);
  }
  
  public void update(Entity paramEntity, ServiceUpdateCallback paramServiceUpdateCallback, String paramString, String... paramVarArgs)
  {
    update(paramEntity, this.mCreator, paramServiceUpdateCallback, paramString, paramVarArgs);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.manager.AsyncEntityManager
 * JD-Core Version:    0.7.0.1
 */