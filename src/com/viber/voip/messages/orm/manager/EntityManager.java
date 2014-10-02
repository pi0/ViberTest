package com.viber.voip.messages.orm.manager;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.entity.Entity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class EntityManager
  implements Iterable<Entity>
{
  public static final String[] PROJECTIONS_COUNT = { "COUNT(*)" };
  private Map<EntityManager.ValueFinder, List<Integer>> foundPositions = new HashMap();
  protected Context mContext = ViberApplication.getInstance().getApplicationContext();
  protected boolean mCountRequest;
  protected Creator mCreator;
  private Cursor mDataCursor;
  protected int[] mPositions;
  private int position;
  
  public EntityManager(Creator paramCreator)
  {
    this.mCreator = paramCreator;
  }
  
  public EntityManager(Creator paramCreator, Cursor paramCursor)
  {
    this.mCreator = paramCreator;
    setDataCursor(paramCursor);
  }
  
  private void checkPositions(Cursor paramCursor)
  {
    for (;;)
    {
      long l2;
      try
      {
        int[] arrayOfInt = new int[paramCursor.getCount()];
        int i = this.mCreator.getAggregateField();
        boolean bool = paramCursor.moveToFirst();
        j = 0;
        if (bool)
        {
          l1 = -1L;
          k = 0;
          l2 = paramCursor.getLong(i);
          if (l2 == l1) {
            break label126;
          }
          j = k + 1;
          arrayOfInt[k] = paramCursor.getPosition();
          if (paramCursor.moveToNext()) {}
        }
        else
        {
          this.mPositions = new int[j];
          System.arraycopy(arrayOfInt, 0, this.mPositions, 0, j);
          return;
        }
      }
      finally {}
      int k = j;
      long l1 = l2;
      continue;
      label126:
      int j = k;
    }
  }
  
  public static int delete(Creator paramCreator, String paramString, String... paramVarArgs)
  {
    return getContentResolver().delete(paramCreator.getContentUri(), paramString, paramVarArgs);
  }
  
  public static int delete(Entity paramEntity, Creator paramCreator)
  {
    boolean bool = paramEntity.getId() < -1L;
    int i = 0;
    if (bool)
    {
      String str = String.valueOf(paramEntity.getId());
      i = getContentResolver().delete(paramCreator.getContentUri(), "_id=?", new String[] { str });
    }
    return i;
  }
  
  private static ContentResolver getContentResolver()
  {
    return ViberApplication.getInstance().getContentResolver();
  }
  
  protected static void log(String paramString) {}
  
  public static boolean save(Entity paramEntity, Creator paramCreator)
  {
    Uri localUri = getContentResolver().insert(paramCreator.getContentUri(), paramCreator.getContentValues(paramEntity));
    if (localUri != null) {}
    for (boolean bool = true;; bool = false)
    {
      if (bool) {
        paramEntity.setId(Long.parseLong(localUri.getLastPathSegment()));
      }
      return bool;
    }
  }
  
  public static int update(Entity paramEntity, Creator paramCreator)
  {
    boolean bool = paramEntity.getId() < -1L;
    int i = 0;
    if (bool)
    {
      String str = String.valueOf(paramEntity.getId());
      ContentValues localContentValues = paramCreator.getContentValues(paramEntity);
      i = getContentResolver().update(paramCreator.getContentUri(), localContentValues, "_id=?", new String[] { str });
    }
    return i;
  }
  
  public static int update(Entity paramEntity, Creator paramCreator, String paramString, String... paramVarArgs)
  {
    ContentValues localContentValues = paramCreator.getContentValues(paramEntity);
    return getContentResolver().update(paramCreator.getContentUri(), localContentValues, paramString, paramVarArgs);
  }
  
  public void addFinder(EntityManager.ValueFinder paramValueFinder)
  {
    this.foundPositions.put(paramValueFinder, new ArrayList());
  }
  
  public void checkFinder(Cursor paramCursor, int paramInt)
  {
    Iterator localIterator = this.foundPositions.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((EntityManager.ValueFinder)localEntry.getKey()).compare(paramCursor)) {
        ((List)localEntry.getValue()).add(Integer.valueOf(paramInt));
      }
    }
  }
  
  /* Error */
  public boolean closeCursor()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 223	com/viber/voip/messages/orm/manager/EntityManager:isCursorOpen	()Z
    //   6: ifeq +16 -> 22
    //   9: aload_0
    //   10: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   13: invokestatic 228	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   16: iconst_1
    //   17: istore_2
    //   18: aload_0
    //   19: monitorexit
    //   20: iload_2
    //   21: ireturn
    //   22: iconst_0
    //   23: istore_2
    //   24: goto -6 -> 18
    //   27: astore_1
    //   28: aload_0
    //   29: monitorexit
    //   30: aload_1
    //   31: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	32	0	this	EntityManager
    //   27	4	1	localObject	Object
    //   17	7	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	16	27	finally
  }
  
  public int delete(Entity paramEntity)
  {
    return delete(paramEntity, this.mCreator);
  }
  
  public int delete(String paramString, String... paramVarArgs)
  {
    return delete(this.mCreator, paramString, paramVarArgs);
  }
  
  public void fillCursor(String paramString1, String paramString2, Uri paramUri, String... paramVarArgs)
  {
    Cursor localCursor = this.mContext.getContentResolver().query(this.mCreator.getContentUri(), this.mCreator.getProjections(), paramString2, paramVarArgs, paramString1);
    if (localCursor != null) {
      localCursor.moveToFirst();
    }
    processMessagesReplyInternal(localCursor);
  }
  
  public void fillCursor(String paramString1, String paramString2, String... paramVarArgs)
  {
    Cursor localCursor = this.mContext.getContentResolver().query(this.mCreator.getContentUri(), this.mCreator.getProjections(), paramString2, paramVarArgs, paramString1);
    if (localCursor != null) {
      localCursor.moveToFirst();
    }
    processMessagesReplyInternal(localCursor);
  }
  
  public int fullUpdate(ContentValues paramContentValues, String paramString, String... paramVarArgs)
  {
    return this.mContext.getContentResolver().update(this.mCreator.getContentUri(), paramContentValues, paramString, paramVarArgs);
  }
  
  public Context getContext()
  {
    return this.mContext;
  }
  
  /* Error */
  public int getCount()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 223	com/viber/voip/messages/orm/manager/EntityManager:isCursorOpen	()Z
    //   6: istore_2
    //   7: iconst_0
    //   8: istore_3
    //   9: iload_2
    //   10: ifeq +55 -> 65
    //   13: aload_0
    //   14: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   17: invokeinterface 71 1 0
    //   22: istore 4
    //   24: iconst_0
    //   25: istore_3
    //   26: iload 4
    //   28: ifle +37 -> 65
    //   31: aload_0
    //   32: getfield 256	com/viber/voip/messages/orm/manager/EntityManager:mCountRequest	Z
    //   35: ifeq +34 -> 69
    //   38: aload_0
    //   39: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   42: invokeinterface 80 1 0
    //   47: ifeq +22 -> 69
    //   50: aload_0
    //   51: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   54: iconst_0
    //   55: invokeinterface 260 2 0
    //   60: istore 6
    //   62: iload 6
    //   64: istore_3
    //   65: aload_0
    //   66: monitorexit
    //   67: iload_3
    //   68: ireturn
    //   69: aload_0
    //   70: getfield 94	com/viber/voip/messages/orm/manager/EntityManager:mPositions	[I
    //   73: ifnull +12 -> 85
    //   76: aload_0
    //   77: getfield 94	com/viber/voip/messages/orm/manager/EntityManager:mPositions	[I
    //   80: arraylength
    //   81: istore_3
    //   82: goto -17 -> 65
    //   85: aload_0
    //   86: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   89: invokeinterface 71 1 0
    //   94: istore 5
    //   96: iload 5
    //   98: istore_3
    //   99: goto -34 -> 65
    //   102: astore_1
    //   103: aload_0
    //   104: monitorexit
    //   105: aload_1
    //   106: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	this	EntityManager
    //   102	4	1	localObject	Object
    //   6	4	2	bool	boolean
    //   8	91	3	i	int
    //   22	5	4	j	int
    //   94	3	5	k	int
    //   60	3	6	m	int
    // Exception table:
    //   from	to	target	type
    //   2	7	102	finally
    //   13	24	102	finally
    //   31	62	102	finally
    //   69	82	102	finally
    //   85	96	102	finally
  }
  
  public Cursor getDataCursor()
  {
    try
    {
      Cursor localCursor = this.mDataCursor;
      return localCursor;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public Entity getEntity(int paramInt)
  {
    return getEntity(paramInt, this.mCreator);
  }
  
  /* Error */
  public Entity getEntity(int paramInt, Creator paramCreator)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_1
    //   4: invokevirtual 273	com/viber/voip/messages/orm/manager/EntityManager:isPositionAvailable	(I)Z
    //   7: ifeq +57 -> 64
    //   10: aload_0
    //   11: getfield 94	com/viber/voip/messages/orm/manager/EntityManager:mPositions	[I
    //   14: ifnull +10 -> 24
    //   17: aload_0
    //   18: getfield 94	com/viber/voip/messages/orm/manager/EntityManager:mPositions	[I
    //   21: iload_1
    //   22: iaload
    //   23: istore_1
    //   24: aload_0
    //   25: iload_1
    //   26: putfield 275	com/viber/voip/messages/orm/manager/EntityManager:position	I
    //   29: aload_0
    //   30: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   33: aload_0
    //   34: getfield 275	com/viber/voip/messages/orm/manager/EntityManager:position	I
    //   37: invokeinterface 278 2 0
    //   42: pop
    //   43: aload_2
    //   44: aload_0
    //   45: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   48: invokevirtual 282	com/viber/voip/messages/orm/creator/Creator:createInstance	(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    //   51: astore 7
    //   53: aload 7
    //   55: astore 4
    //   57: aload_0
    //   58: monitorexit
    //   59: aload 4
    //   61: areturn
    //   62: astore 5
    //   64: aconst_null
    //   65: astore 4
    //   67: goto -10 -> 57
    //   70: astore_3
    //   71: aload_0
    //   72: monitorexit
    //   73: aload_3
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	EntityManager
    //   0	75	1	paramInt	int
    //   0	75	2	paramCreator	Creator
    //   70	4	3	localObject	Object
    //   55	11	4	localEntity1	Entity
    //   62	1	5	localException	java.lang.Exception
    //   51	3	7	localEntity2	Entity
    // Exception table:
    //   from	to	target	type
    //   29	53	62	java/lang/Exception
    //   2	24	70	finally
    //   24	29	70	finally
    //   29	53	70	finally
  }
  
  public int getInt(int paramInt1, int paramInt2)
  {
    if (this.mPositions != null) {
      paramInt1 = this.mPositions[paramInt1];
    }
    if (isPositionAvailable(paramInt1))
    {
      this.mDataCursor.moveToPosition(paramInt1);
      return this.mDataCursor.getInt(paramInt2);
    }
    return -1;
  }
  
  /* Error */
  public long getLong(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 223	com/viber/voip/messages/orm/manager/EntityManager:isCursorOpen	()Z
    //   6: ifeq +22 -> 28
    //   9: aload_0
    //   10: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   13: iload_1
    //   14: invokeinterface 86 2 0
    //   19: lstore 5
    //   21: lload 5
    //   23: lstore_3
    //   24: aload_0
    //   25: monitorexit
    //   26: lload_3
    //   27: lreturn
    //   28: ldc2_w 81
    //   31: lstore_3
    //   32: goto -8 -> 24
    //   35: astore_2
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_2
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	this	EntityManager
    //   0	40	1	paramInt	int
    //   35	4	2	localObject	Object
    //   23	9	3	l1	long
    //   19	3	5	l2	long
    // Exception table:
    //   from	to	target	type
    //   2	21	35	finally
  }
  
  public long getLong(int paramInt1, int paramInt2)
  {
    if (this.mPositions != null) {
      paramInt1 = this.mPositions[paramInt1];
    }
    if (isPositionAvailable(paramInt1))
    {
      this.mDataCursor.moveToPosition(paramInt1);
      return this.mDataCursor.getLong(paramInt2);
    }
    return -1L;
  }
  
  public long getLong(int paramInt, String paramString)
  {
    if (isPositionAvailable(paramInt))
    {
      int i = this.mDataCursor.getColumnIndex(paramString);
      if (i != -1)
      {
        this.mDataCursor.moveToPosition(paramInt);
        return this.mDataCursor.getLong(i);
      }
    }
    return -1L;
  }
  
  /* Error */
  public int getPosition()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 223	com/viber/voip/messages/orm/manager/EntityManager:isCursorOpen	()Z
    //   6: ifeq +31 -> 37
    //   9: aload_0
    //   10: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   13: invokeinterface 92 1 0
    //   18: ifeq +19 -> 37
    //   21: aload_0
    //   22: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   25: invokeinterface 89 1 0
    //   30: istore_3
    //   31: iload_3
    //   32: istore_2
    //   33: aload_0
    //   34: monitorexit
    //   35: iload_2
    //   36: ireturn
    //   37: iconst_m1
    //   38: istore_2
    //   39: goto -6 -> 33
    //   42: astore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	this	EntityManager
    //   42	4	1	localObject	Object
    //   32	7	2	i	int
    //   30	2	3	j	int
    // Exception table:
    //   from	to	target	type
    //   2	31	42	finally
  }
  
  public int getPositionsSize()
  {
    return this.mPositions.length;
  }
  
  public String getString(int paramInt1, int paramInt2)
  {
    if (this.mPositions != null) {
      paramInt1 = this.mPositions[paramInt1];
    }
    if (isPositionAvailable(paramInt1))
    {
      this.mDataCursor.moveToPosition(paramInt1);
      return this.mDataCursor.getString(paramInt2);
    }
    return null;
  }
  
  /* Error */
  public boolean isCursorOpen()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   6: ifnull +23 -> 29
    //   9: aload_0
    //   10: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   13: invokeinterface 298 1 0
    //   18: istore_3
    //   19: iload_3
    //   20: ifne +9 -> 29
    //   23: iconst_1
    //   24: istore_2
    //   25: aload_0
    //   26: monitorexit
    //   27: iload_2
    //   28: ireturn
    //   29: iconst_0
    //   30: istore_2
    //   31: goto -6 -> 25
    //   34: astore_1
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	EntityManager
    //   34	4	1	localObject	Object
    //   24	7	2	bool1	boolean
    //   18	2	3	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   2	19	34	finally
  }
  
  /* Error */
  protected boolean isPositionAvailable(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 223	com/viber/voip/messages/orm/manager/EntityManager:isCursorOpen	()Z
    //   6: ifeq +26 -> 32
    //   9: aload_0
    //   10: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   13: invokeinterface 71 1 0
    //   18: istore 4
    //   20: iload_1
    //   21: iload 4
    //   23: if_icmpge +9 -> 32
    //   26: iconst_1
    //   27: istore_3
    //   28: aload_0
    //   29: monitorexit
    //   30: iload_3
    //   31: ireturn
    //   32: iconst_0
    //   33: istore_3
    //   34: goto -6 -> 28
    //   37: astore_2
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_2
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	EntityManager
    //   0	42	1	paramInt	int
    //   37	4	2	localObject	Object
    //   27	7	3	bool	boolean
    //   18	6	4	i	int
    // Exception table:
    //   from	to	target	type
    //   2	20	37	finally
  }
  
  public Iterator<Entity> iterator()
  {
    return new EntityManager.EntityIterator(this, null);
  }
  
  /* Error */
  public boolean moveToFirst()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   6: invokestatic 306	com/viber/voip/util/al:b	(Landroid/database/Cursor;)Z
    //   9: ifne +23 -> 32
    //   12: aload_0
    //   13: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   16: invokeinterface 80 1 0
    //   21: istore_3
    //   22: iload_3
    //   23: ifeq +9 -> 32
    //   26: iconst_1
    //   27: istore_2
    //   28: aload_0
    //   29: monitorexit
    //   30: iload_2
    //   31: ireturn
    //   32: iconst_0
    //   33: istore_2
    //   34: goto -6 -> 28
    //   37: astore_1
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	EntityManager
    //   37	4	1	localObject	Object
    //   27	7	2	bool1	boolean
    //   21	2	3	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   2	22	37	finally
  }
  
  /* Error */
  public boolean moveToNext()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   6: ifnull +23 -> 29
    //   9: aload_0
    //   10: getfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   13: invokeinterface 92 1 0
    //   18: istore_3
    //   19: iload_3
    //   20: ifeq +9 -> 29
    //   23: iconst_1
    //   24: istore_2
    //   25: aload_0
    //   26: monitorexit
    //   27: iload_2
    //   28: ireturn
    //   29: iconst_0
    //   30: istore_2
    //   31: goto -6 -> 25
    //   34: astore_1
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	EntityManager
    //   34	4	1	localObject	Object
    //   24	7	2	bool1	boolean
    //   18	2	3	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   2	19	34	finally
  }
  
  /* Error */
  protected void processMessagesReplyInternal(Cursor paramCursor)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 306	com/viber/voip/util/al:b	(Landroid/database/Cursor;)Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokevirtual 308	com/viber/voip/messages/orm/manager/EntityManager:closeCursor	()Z
    //   18: pop
    //   19: aload_0
    //   20: aload_1
    //   21: invokevirtual 60	com/viber/voip/messages/orm/manager/EntityManager:setDataCursor	(Landroid/database/Cursor;)V
    //   24: goto -13 -> 11
    //   27: astore_2
    //   28: aload_0
    //   29: monitorexit
    //   30: aload_2
    //   31: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	32	0	this	EntityManager
    //   0	32	1	paramCursor	Cursor
    //   27	4	2	localObject	Object
    //   6	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	27	finally
    //   14	24	27	finally
  }
  
  public boolean save(Entity paramEntity)
  {
    return save(paramEntity, this.mCreator);
  }
  
  /* Error */
  protected void setDataCursor(Cursor paramCursor)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnull +37 -> 40
    //   6: aload_1
    //   7: invokeinterface 80 1 0
    //   12: pop
    //   13: aload_0
    //   14: getfield 55	com/viber/voip/messages/orm/manager/EntityManager:mCreator	Lcom/viber/voip/messages/orm/creator/Creator;
    //   17: ifnull +23 -> 40
    //   20: aload_0
    //   21: getfield 55	com/viber/voip/messages/orm/manager/EntityManager:mCreator	Lcom/viber/voip/messages/orm/creator/Creator;
    //   24: invokevirtual 76	com/viber/voip/messages/orm/creator/Creator:getAggregateField	()I
    //   27: istore 4
    //   29: iload 4
    //   31: iconst_m1
    //   32: if_icmpeq +8 -> 40
    //   35: aload_0
    //   36: aload_1
    //   37: invokespecial 315	com/viber/voip/messages/orm/manager/EntityManager:checkPositions	(Landroid/database/Cursor;)V
    //   40: aload_0
    //   41: aload_1
    //   42: putfield 64	com/viber/voip/messages/orm/manager/EntityManager:mDataCursor	Landroid/database/Cursor;
    //   45: aload_0
    //   46: monitorexit
    //   47: return
    //   48: astore 5
    //   50: new 317	java/lang/StringBuilder
    //   53: dup
    //   54: invokespecial 318	java/lang/StringBuilder:<init>	()V
    //   57: ldc_w 320
    //   60: invokevirtual 324	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: aload 5
    //   65: invokevirtual 327	java/lang/IllegalStateException:getMessage	()Ljava/lang/String;
    //   68: invokevirtual 324	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 330	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokestatic 332	com/viber/voip/messages/orm/manager/EntityManager:log	(Ljava/lang/String;)V
    //   77: goto -37 -> 40
    //   80: astore_2
    //   81: aload_0
    //   82: monitorexit
    //   83: aload_2
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	EntityManager
    //   0	85	1	paramCursor	Cursor
    //   80	4	2	localObject	Object
    //   27	6	4	i	int
    //   48	16	5	localIllegalStateException	java.lang.IllegalStateException
    // Exception table:
    //   from	to	target	type
    //   35	40	48	java/lang/IllegalStateException
    //   6	29	80	finally
    //   35	40	80	finally
    //   40	45	80	finally
    //   50	77	80	finally
  }
  
  public int update(Entity paramEntity)
  {
    return update(paramEntity, this.mCreator);
  }
  
  public int update(Entity paramEntity, String paramString, String... paramVarArgs)
  {
    return update(paramEntity, this.mCreator, paramString, paramVarArgs);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.manager.EntityManager
 * JD-Core Version:    0.7.0.1
 */