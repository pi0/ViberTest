package com.viber.voip.contacts.c.f.b;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentResolver;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.viber.provider.contacts.f;
import com.viber.provider.contacts.g;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.b.a.l;
import com.viber.voip.contacts.b.b.a.o;
import com.viber.voip.contacts.b.h;
import com.viber.voip.contacts.c.e.b;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.manager.AsyncEntityManager;
import com.viber.voip.util.al;
import com.viber.voip.util.hd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

public class u
{
  private static final String a = u.class.getSimpleName();
  private static u b;
  private Queue<ag> c = new LinkedList();
  private boolean d;
  private ViberApplication e;
  private b f;
  private ContentResolver g;
  private AsyncEntityManager h;
  
  private u(ViberApplication paramViberApplication)
  {
    this.e = paramViberApplication;
    this.g = paramViberApplication.getContentResolver();
    this.h = new AsyncEntityManager(com.viber.voip.contacts.b.b.d.a, false);
    this.f = b.a(paramViberApplication);
  }
  
  public static u a(ViberApplication paramViberApplication)
  {
    if (b == null) {
      b = new u(paramViberApplication);
    }
    return b;
  }
  
  private void a(ContentProviderOperation paramContentProviderOperation1, ContentProviderOperation paramContentProviderOperation2, Set<h> paramSet, boolean paramBoolean1, boolean paramBoolean2, ab paramab)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramContentProviderOperation1 != null) {
      localArrayList.add(paramContentProviderOperation1);
    }
    if (paramContentProviderOperation2 != null) {
      localArrayList.add(paramContentProviderOperation2);
    }
    if (paramBoolean2) {
      localArrayList.add(ContentProviderOperation.newDelete(g.a).withSelection("clear=1", null).build());
    }
    localArrayList.add(ContentProviderOperation.newUpdate(com.viber.provider.contacts.d.a).withValue("viber", Boolean.valueOf(false)).withValue("recently_joined_date", Integer.valueOf(0)).withSelection(a(false), null).build());
    if (paramBoolean1) {
      localArrayList.add(ContentProviderOperation.newUpdate(com.viber.provider.contacts.d.a).withValue("viber", Boolean.valueOf(true)).withValue("joined_date", Long.valueOf(System.currentTimeMillis())).withSelection(a(true), null).build());
    }
    for (;;)
    {
      this.f.a(1588, "com.viber.provider.vibercontacts", null, localArrayList, new y(this, paramSet, paramab));
      return;
      localArrayList.add(ContentProviderOperation.newUpdate(com.viber.provider.contacts.d.a).withValue("viber", Boolean.valueOf(true)).withSelection(a(true), null).build());
    }
  }
  
  public int a(ArrayList<ContentProviderOperation> paramArrayList)
  {
    try
    {
      int i = this.g.applyBatch("com.viber.provider.vibercontacts", paramArrayList).length;
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
      return 0;
    }
    catch (OperationApplicationException localOperationApplicationException)
    {
      for (;;)
      {
        localOperationApplicationException.printStackTrace();
      }
    }
  }
  
  public String a(boolean paramBoolean)
  {
    StringBuilder localStringBuilder1 = new StringBuilder().append("viber=");
    int i;
    StringBuilder localStringBuilder2;
    if (paramBoolean)
    {
      i = 0;
      localStringBuilder2 = localStringBuilder1.append(i).append(" AND ").append("_id");
      if (!paramBoolean) {
        break label125;
      }
    }
    label125:
    for (String str = " IN ";; str = " NOT IN ")
    {
      return str + "(SELECT " + "contact_id" + " FROM " + "phonebookdata" + " WHERE " + "data2" + " IN (SELECT " + "canonized_number" + " FROM  " + "vibernumbers" + " WHERE " + "clear" + "=0))";
      i = 1;
      break;
    }
  }
  
  public List<com.viber.voip.contacts.b.b.a.a> a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      ContentResolver localContentResolver = this.g;
      Uri localUri = com.viber.voip.contacts.b.b.a.a.D.getContentUri();
      String[] arrayOfString1 = com.viber.voip.contacts.b.b.a.a.D.getProjections();
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = paramString;
      arrayOfString2[1] = String.valueOf(0);
      Cursor localCursor2 = localContentResolver.query(localUri, arrayOfString1, "_id IN (SELECT contact_id FROM  phonebookdata WHERE data2=? AND mime_type=?)", arrayOfString2, null);
      Cursor localCursor1 = localCursor2;
      if (localCursor1 != null) {}
      boolean bool;
      al.a(localCursor1);
    }
    finally
    {
      try
      {
        if (localCursor1.moveToFirst()) {
          do
          {
            localArrayList.add((com.viber.voip.contacts.b.b.a.a)com.viber.voip.contacts.b.b.a.a.D.createInstance(localCursor1));
            bool = localCursor1.moveToNext();
          } while (bool);
        }
        al.a(localCursor1);
        return localArrayList;
      }
      finally
      {
        break label127;
      }
      localObject1 = finally;
      localCursor1 = null;
    }
    label127:
    throw localObject1;
  }
  
  /* Error */
  public Map<String, o> a(Set<String> paramSet)
  {
    // Byte code:
    //   0: new 273	java/util/HashMap
    //   3: dup
    //   4: invokespecial 274	java/util/HashMap:<init>	()V
    //   7: astore_2
    //   8: aload_0
    //   9: getfield 50	com/viber/voip/contacts/c/f/b/u:g	Landroid/content/ContentResolver;
    //   12: getstatic 277	com/viber/voip/contacts/b/b/a/o:a	Lcom/viber/voip/messages/orm/creator/CreatorHelper;
    //   15: invokevirtual 237	com/viber/voip/messages/orm/creator/CreatorHelper:getContentUri	()Landroid/net/Uri;
    //   18: getstatic 277	com/viber/voip/contacts/b/b/a/o:a	Lcom/viber/voip/messages/orm/creator/CreatorHelper;
    //   21: invokevirtual 241	com/viber/voip/messages/orm/creator/CreatorHelper:getProjections	()[Ljava/lang/String;
    //   24: new 180	java/lang/StringBuilder
    //   27: dup
    //   28: invokespecial 181	java/lang/StringBuilder:<init>	()V
    //   31: ldc_w 279
    //   34: invokevirtual 187	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: aload_1
    //   38: invokestatic 284	com/viber/voip/i/a:a	(Ljava/util/Collection;)Ljava/lang/String;
    //   41: invokevirtual 187	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: ldc_w 286
    //   47: invokevirtual 187	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: invokevirtual 223	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   53: aconst_null
    //   54: aconst_null
    //   55: invokevirtual 252	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   58: astore 5
    //   60: aload 5
    //   62: astore 4
    //   64: aload 4
    //   66: ifnull +54 -> 120
    //   69: aload 4
    //   71: invokeinterface 258 1 0
    //   76: ifeq +44 -> 120
    //   79: getstatic 277	com/viber/voip/contacts/b/b/a/o:a	Lcom/viber/voip/messages/orm/creator/CreatorHelper;
    //   82: aload 4
    //   84: invokevirtual 262	com/viber/voip/messages/orm/creator/CreatorHelper:createInstance	(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    //   87: checkcast 276	com/viber/voip/contacts/b/b/a/o
    //   90: astore 6
    //   92: aload_2
    //   93: aload 6
    //   95: invokevirtual 288	com/viber/voip/contacts/b/b/a/o:a	()Ljava/lang/String;
    //   98: aload 6
    //   100: invokeinterface 294 3 0
    //   105: pop
    //   106: aload 4
    //   108: invokeinterface 265 1 0
    //   113: istore 8
    //   115: iload 8
    //   117: ifne -38 -> 79
    //   120: aload 4
    //   122: invokestatic 270	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   125: aload_2
    //   126: areturn
    //   127: astore_3
    //   128: aconst_null
    //   129: astore 4
    //   131: aload 4
    //   133: invokestatic 270	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   136: aload_3
    //   137: athrow
    //   138: astore_3
    //   139: goto -8 -> 131
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	142	0	this	u
    //   0	142	1	paramSet	Set<String>
    //   7	119	2	localHashMap	HashMap
    //   127	10	3	localObject1	Object
    //   138	1	3	localObject2	Object
    //   62	70	4	localCursor1	Cursor
    //   58	3	5	localCursor2	Cursor
    //   90	9	6	localo	o
    //   113	3	8	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   8	60	127	finally
    //   69	79	138	finally
    //   79	115	138	finally
  }
  
  public Set<String> a()
  {
    HashSet localHashSet = new HashSet();
    try
    {
      Cursor localCursor2 = this.g.query(o.a.getContentUri(), new String[] { "canonized_number" }, "clear=1", null, null);
      Cursor localCursor1 = localCursor2;
      if (localCursor1 != null) {}
      boolean bool;
      al.a(localCursor1);
    }
    finally
    {
      try
      {
        if (localCursor1.moveToFirst()) {
          do
          {
            localHashSet.add(localCursor1.getString(0));
            bool = localCursor1.moveToNext();
          } while (bool);
        }
        al.a(localCursor1);
        return localHashSet;
      }
      finally
      {
        break label88;
      }
      localObject1 = finally;
      localCursor1 = null;
    }
    label88:
    throw localObject1;
  }
  
  public void a(ab paramab)
  {
    this.f.a(0, null, com.viber.provider.contacts.d.a, new String[] { "COUNT(*)" }, "recently_joined_date<>0", null, null, new z(this, paramab), false, false);
  }
  
  public void a(Set<String> paramSet, boolean paramBoolean1, boolean paramBoolean2, ab paramab)
  {
    synchronized (this.c)
    {
      if (this.d)
      {
        this.c.add(new ag(this, paramSet, paramBoolean1, paramBoolean2, paramab));
        return;
      }
      this.d = true;
      a(null, null, null, paramBoolean1, paramBoolean2, new x(this, paramab));
    }
  }
  
  public void a(boolean paramBoolean, String paramString, ad paramad)
  {
    if ((!paramBoolean) && (paramString != null)) {}
    for (String str = " AND phonebookcontact.contact_hash IN (" + paramString + ")";; str = "")
    {
      this.h.fillCursor(this.f, new w(this, paramad), 1584, "phonebookdata.mime_type=0 AND phonebookcontact.has_number=1 " + str, new String[0]);
      return;
    }
  }
  
  public void a(boolean paramBoolean, String paramString, af paramaf)
  {
    b localb = this.f;
    Uri localUri = com.viber.provider.contacts.d.a;
    String[] arrayOfString = { "DISTINCT contact_hash" };
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString != null) {}
    for (String str = paramString + " AND ";; str = "")
    {
      localb.a(1584, null, localUri, arrayOfString, str + "has_number" + "=1", null, null, new v(this, paramBoolean, paramaf), false, false);
      return;
    }
  }
  
  public int b(ViberApplication paramViberApplication)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      Cursor localCursor2 = this.g.query(f.a, new String[] { "_id", "data2" }, "mime_type=0", null, null);
      localCursor3 = localCursor2;
      if (localCursor3 != null) {}
      long l2;
      String str3;
      String str4;
      boolean bool2;
      long l1;
      String str1;
      String str2;
      boolean bool1;
      al.a(localCursor1);
    }
    finally
    {
      for (;;)
      {
        try
        {
          if (localCursor3.moveToFirst())
          {
            l2 = localCursor3.getLong(0);
            str3 = localCursor3.getString(1);
            str4 = hd.a(paramViberApplication, str3);
            if ((!TextUtils.isEmpty(str4)) && (!str4.equals(str3))) {
              localArrayList.add(ContentProviderOperation.newUpdate(f.a).withSelection("_id=" + l2, null).withValue("data2", str4).build());
            }
            bool2 = localCursor3.moveToNext();
            if (bool2) {
              continue;
            }
          }
          al.a(localCursor3);
        }
        finally
        {
          Cursor localCursor3;
          Cursor localCursor1 = localCursor3;
          continue;
        }
        try
        {
          localCursor3 = this.g.query(g.a, new String[] { "_id", "canonized_number" }, null, null, null);
          if ((localCursor3 != null) && (localCursor3.moveToFirst()))
          {
            l1 = localCursor3.getLong(0);
            str1 = localCursor3.getString(1);
            str2 = hd.a(paramViberApplication, str1);
            if ((!TextUtils.isEmpty(str2)) && (!str2.equals(str1))) {
              localArrayList.add(ContentProviderOperation.newUpdate(g.a).withSelection("_id=" + l1, null).withValue("canonized_number", str2).build());
            }
            bool1 = localCursor3.moveToNext();
            if (bool1) {
              continue;
            }
          }
          al.a(localCursor3);
          a(localArrayList);
          return localArrayList.size();
        }
        finally
        {
          al.a(localCursor3);
        }
      }
      localObject1 = finally;
      localCursor1 = null;
    }
    throw localObject1;
  }
  
  public Map<String, ae> b(Set<String> paramSet)
  {
    HashMap localHashMap = new HashMap();
    try
    {
      localCursor2 = this.g.query(f.b, new String[] { "phonebookdata._id", "phonebookdata.data2", "phonebookcontact.display_name" }, "data2 IN (" + com.viber.voip.i.a.a(paramSet) + ")", null, null);
      if (localCursor2 != null) {}
      ae localae;
      boolean bool;
      al.a(localCursor1);
    }
    finally
    {
      try
      {
        if (localCursor2.moveToFirst()) {
          do
          {
            localae = new ae(localCursor2.getLong(0), localCursor2.getString(1), localCursor2.getString(2), null);
            localHashMap.put(localae.b, localae);
            bool = localCursor2.moveToNext();
          } while (bool);
        }
        al.a(localCursor2);
        return localHashMap;
      }
      finally
      {
        for (;;)
        {
          Cursor localCursor2;
          Cursor localCursor1 = localCursor2;
        }
      }
      localObject1 = finally;
      localCursor1 = null;
    }
    throw localObject1;
  }
  
  public Set<String> b()
  {
    HashSet localHashSet = new HashSet();
    try
    {
      Cursor localCursor2 = this.g.query(l.k.getContentUri(), new String[] { "data2" }, "clear=1 AND mime_type=0", null, null);
      Cursor localCursor1 = localCursor2;
      if (localCursor1 != null) {}
      boolean bool;
      al.a(localCursor1);
    }
    finally
    {
      try
      {
        if (localCursor1.moveToFirst()) {
          do
          {
            localHashSet.add(localCursor1.getString(0));
            bool = localCursor1.moveToNext();
          } while (bool);
        }
        al.a(localCursor1);
        return localHashSet;
      }
      finally
      {
        break label89;
      }
      localObject1 = finally;
      localCursor1 = null;
    }
    label89:
    throw localObject1;
  }
  
  public void b(ab paramab)
  {
    this.f.a(0, null, com.viber.provider.contacts.d.a, new String[] { "COUNT(*)" }, "has_number=1", null, null, new aa(this, paramab), false, false);
  }
  
  public boolean b(String paramString)
  {
    return this.g.delete(o.a.getContentUri(), "canonized_number=?", new String[] { paramString }) > 0;
  }
  
  /* Error */
  public List<com.viber.voip.contacts.b.b.a.a> c()
  {
    // Byte code:
    //   0: new 78	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 79	java/util/ArrayList:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: getfield 50	com/viber/voip/contacts/c/f/b/u:g	Landroid/content/ContentResolver;
    //   12: getstatic 231	com/viber/voip/contacts/b/b/a/a:D	Lcom/viber/voip/messages/orm/creator/CreatorHelper;
    //   15: invokevirtual 237	com/viber/voip/messages/orm/creator/CreatorHelper:getContentUri	()Landroid/net/Uri;
    //   18: getstatic 231	com/viber/voip/contacts/b/b/a/a:D	Lcom/viber/voip/messages/orm/creator/CreatorHelper;
    //   21: invokevirtual 241	com/viber/voip/messages/orm/creator/CreatorHelper:getProjections	()[Ljava/lang/String;
    //   24: ldc_w 434
    //   27: aconst_null
    //   28: ldc_w 436
    //   31: invokevirtual 252	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   34: astore 4
    //   36: aload 4
    //   38: astore_3
    //   39: aload_3
    //   40: ifnull +42 -> 82
    //   43: aload_3
    //   44: invokeinterface 258 1 0
    //   49: ifeq +33 -> 82
    //   52: aload_1
    //   53: getstatic 231	com/viber/voip/contacts/b/b/a/a:D	Lcom/viber/voip/messages/orm/creator/CreatorHelper;
    //   56: aload_3
    //   57: invokevirtual 262	com/viber/voip/messages/orm/creator/CreatorHelper:createInstance	(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    //   60: checkcast 228	com/viber/voip/contacts/b/b/a/a
    //   63: invokeinterface 85 2 0
    //   68: pop
    //   69: aload_3
    //   70: invokeinterface 265 1 0
    //   75: istore 6
    //   77: iload 6
    //   79: ifne -27 -> 52
    //   82: aload_3
    //   83: invokestatic 270	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   86: aload_1
    //   87: areturn
    //   88: astore_2
    //   89: aconst_null
    //   90: astore_3
    //   91: aload_3
    //   92: invokestatic 270	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   95: aload_2
    //   96: athrow
    //   97: astore_2
    //   98: goto -7 -> 91
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	101	0	this	u
    //   7	80	1	localArrayList	ArrayList
    //   88	8	2	localObject1	Object
    //   97	1	2	localObject2	Object
    //   38	54	3	localCursor1	Cursor
    //   34	3	4	localCursor2	Cursor
    //   75	3	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   8	36	88	finally
    //   43	52	97	finally
    //   52	77	97	finally
  }
  
  /* Error */
  public Map<String, ac> c(Set<String> paramSet)
  {
    // Byte code:
    //   0: new 273	java/util/HashMap
    //   3: dup
    //   4: invokespecial 274	java/util/HashMap:<init>	()V
    //   7: astore_2
    //   8: aload_0
    //   9: getfield 50	com/viber/voip/contacts/c/f/b/u:g	Landroid/content/ContentResolver;
    //   12: getstatic 438	com/viber/provider/contacts/d:g	Landroid/net/Uri;
    //   15: iconst_4
    //   16: anewarray 243	java/lang/String
    //   19: dup
    //   20: iconst_0
    //   21: ldc_w 440
    //   24: aastore
    //   25: dup
    //   26: iconst_1
    //   27: ldc_w 442
    //   30: aastore
    //   31: dup
    //   32: iconst_2
    //   33: ldc_w 444
    //   36: aastore
    //   37: dup
    //   38: iconst_3
    //   39: ldc_w 403
    //   42: aastore
    //   43: new 180	java/lang/StringBuilder
    //   46: dup
    //   47: invokespecial 181	java/lang/StringBuilder:<init>	()V
    //   50: ldc_w 446
    //   53: invokevirtual 187	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: aload_1
    //   57: invokestatic 284	com/viber/voip/i/a:a	(Ljava/util/Collection;)Ljava/lang/String;
    //   60: invokevirtual 187	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: ldc_w 286
    //   66: invokevirtual 187	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: invokevirtual 223	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   72: aconst_null
    //   73: aconst_null
    //   74: invokevirtual 252	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   77: astore 5
    //   79: aload 5
    //   81: ifnull +83 -> 164
    //   84: aload 5
    //   86: invokeinterface 258 1 0
    //   91: ifeq +73 -> 164
    //   94: new 448	com/viber/voip/contacts/c/f/b/ac
    //   97: dup
    //   98: aload 5
    //   100: iconst_0
    //   101: invokeinterface 369 2 0
    //   106: aload 5
    //   108: iconst_1
    //   109: invokeinterface 452 2 0
    //   114: aload 5
    //   116: iconst_2
    //   117: invokeinterface 369 2 0
    //   122: aload 5
    //   124: iconst_3
    //   125: invokeinterface 301 2 0
    //   130: aconst_null
    //   131: invokespecial 455	com/viber/voip/contacts/c/f/b/ac:<init>	(JIJLjava/lang/String;Lcom/viber/voip/contacts/c/f/b/v;)V
    //   134: astore 6
    //   136: aload_2
    //   137: aload 6
    //   139: getfield 457	com/viber/voip/contacts/c/f/b/ac:d	Ljava/lang/String;
    //   142: aload 6
    //   144: invokeinterface 294 3 0
    //   149: pop
    //   150: aload 5
    //   152: invokeinterface 265 1 0
    //   157: istore 8
    //   159: iload 8
    //   161: ifne -67 -> 94
    //   164: aload 5
    //   166: invokestatic 270	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   169: aload_2
    //   170: areturn
    //   171: astore_3
    //   172: aconst_null
    //   173: astore 4
    //   175: aload 4
    //   177: invokestatic 270	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   180: aload_3
    //   181: athrow
    //   182: astore_3
    //   183: aload 5
    //   185: astore 4
    //   187: goto -12 -> 175
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	190	0	this	u
    //   0	190	1	paramSet	Set<String>
    //   7	163	2	localHashMap	HashMap
    //   171	10	3	localObject1	Object
    //   182	1	3	localObject2	Object
    //   173	13	4	localCursor1	Cursor
    //   77	107	5	localCursor2	Cursor
    //   134	9	6	localac	ac
    //   157	3	8	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   8	79	171	finally
    //   84	94	182	finally
    //   94	159	182	finally
  }
  
  /* Error */
  public boolean c(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 50	com/viber/voip/contacts/c/f/b/u:g	Landroid/content/ContentResolver;
    //   6: getstatic 277	com/viber/voip/contacts/b/b/a/o:a	Lcom/viber/voip/messages/orm/creator/CreatorHelper;
    //   9: invokevirtual 237	com/viber/voip/messages/orm/creator/CreatorHelper:getContentUri	()Landroid/net/Uri;
    //   12: getstatic 277	com/viber/voip/contacts/b/b/a/o:a	Lcom/viber/voip/messages/orm/creator/CreatorHelper;
    //   15: invokevirtual 241	com/viber/voip/messages/orm/creator/CreatorHelper:getProjections	()[Ljava/lang/String;
    //   18: ldc_w 427
    //   21: iconst_1
    //   22: anewarray 243	java/lang/String
    //   25: dup
    //   26: iconst_0
    //   27: aload_1
    //   28: aastore
    //   29: aconst_null
    //   30: invokevirtual 252	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   33: astore 4
    //   35: aload 4
    //   37: ifnull +83 -> 120
    //   40: aload 4
    //   42: invokeinterface 258 1 0
    //   47: ifeq +73 -> 120
    //   50: getstatic 277	com/viber/voip/contacts/b/b/a/o:a	Lcom/viber/voip/messages/orm/creator/CreatorHelper;
    //   53: aload 4
    //   55: invokevirtual 262	com/viber/voip/messages/orm/creator/CreatorHelper:createInstance	(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    //   58: checkcast 276	com/viber/voip/contacts/b/b/a/o
    //   61: astore 5
    //   63: aload 4
    //   65: invokestatic 270	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   68: aload 5
    //   70: ifnonnull +34 -> 104
    //   73: new 276	com/viber/voip/contacts/b/b/a/o
    //   76: dup
    //   77: invokespecial 458	com/viber/voip/contacts/b/b/a/o:<init>	()V
    //   80: astore 6
    //   82: aload 6
    //   84: aload_1
    //   85: invokevirtual 461	com/viber/voip/contacts/b/b/a/o:a	(Ljava/lang/String;)V
    //   88: aload_0
    //   89: getfield 50	com/viber/voip/contacts/c/f/b/u:g	Landroid/content/ContentResolver;
    //   92: getstatic 90	com/viber/provider/contacts/g:a	Landroid/net/Uri;
    //   95: aload 6
    //   97: invokevirtual 465	com/viber/voip/contacts/b/b/a/o:getContentValues	()Landroid/content/ContentValues;
    //   100: invokevirtual 469	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   103: pop
    //   104: iconst_1
    //   105: ireturn
    //   106: astore_3
    //   107: aload_2
    //   108: invokestatic 270	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   111: aload_3
    //   112: athrow
    //   113: astore_3
    //   114: aload 4
    //   116: astore_2
    //   117: goto -10 -> 107
    //   120: aconst_null
    //   121: astore 5
    //   123: goto -60 -> 63
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	u
    //   0	126	1	paramString	String
    //   1	116	2	localObject1	Object
    //   106	6	3	localObject2	Object
    //   113	1	3	localObject3	Object
    //   33	82	4	localCursor	Cursor
    //   61	61	5	localo1	o
    //   80	16	6	localo2	o
    // Exception table:
    //   from	to	target	type
    //   2	35	106	finally
    //   40	63	113	finally
  }
  
  public void d()
  {
    this.g.update(com.viber.provider.contacts.d.i, null, "phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE clear=1)", null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.u
 * JD-Core Version:    0.7.0.1
 */