package com.viber.voip.contacts.c.d.b;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import com.viber.provider.contacts.f;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.b.i;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.util.al;

class b
{
  final com.viber.voip.contacts.c.d.d a;
  private long c = 0L;
  private String d;
  private boolean e;
  private boolean f;
  
  public b(a parama, com.viber.voip.contacts.c.d.d paramd, long paramLong, boolean paramBoolean)
  {
    this.c = paramLong;
    this.e = paramBoolean;
    this.a = paramd;
  }
  
  public b(a parama, com.viber.voip.contacts.c.d.d paramd, String paramString, boolean paramBoolean)
  {
    this.a = paramd;
    this.e = paramBoolean;
    this.d = paramString;
  }
  
  /* Error */
  private i a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: getstatic 37	com/viber/voip/contacts/b/b/i:a	Lcom/viber/voip/messages/orm/creator/Creator;
    //   5: astore_3
    //   6: aload_0
    //   7: getfield 19	com/viber/voip/contacts/c/d/b/b:b	Lcom/viber/voip/contacts/c/d/b/a;
    //   10: invokestatic 42	com/viber/voip/contacts/c/d/b/a:a	(Lcom/viber/voip/contacts/c/d/b/a;)Lcom/viber/voip/ViberApplication;
    //   13: invokevirtual 48	com/viber/voip/ViberApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   16: astore 4
    //   18: aload_3
    //   19: invokevirtual 54	com/viber/voip/messages/orm/creator/Creator:getContentUri	()Landroid/net/Uri;
    //   22: astore 5
    //   24: aload_3
    //   25: invokevirtual 58	com/viber/voip/messages/orm/creator/Creator:getProjections	()[Ljava/lang/String;
    //   28: astore 6
    //   30: iconst_1
    //   31: anewarray 60	java/lang/String
    //   34: astore 7
    //   36: aload 7
    //   38: iconst_0
    //   39: aload_0
    //   40: getfield 31	com/viber/voip/contacts/c/d/b/b:d	Ljava/lang/String;
    //   43: invokestatic 64	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   46: aastore
    //   47: aload 4
    //   49: aload 5
    //   51: aload 6
    //   53: ldc 66
    //   55: aload 7
    //   57: aconst_null
    //   58: invokevirtual 72	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   61: astore 8
    //   63: aload 8
    //   65: ifnull +55 -> 120
    //   68: aload 8
    //   70: invokeinterface 78 1 0
    //   75: ifeq +45 -> 120
    //   78: aload_3
    //   79: aload 8
    //   81: invokevirtual 82	com/viber/voip/messages/orm/creator/Creator:createInstance	(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    //   84: checkcast 34	com/viber/voip/contacts/b/b/i
    //   87: astore 9
    //   89: aload 9
    //   91: invokevirtual 86	com/viber/voip/contacts/b/b/i:i	()Lcom/viber/voip/contacts/b/i;
    //   94: astore 10
    //   96: aload 10
    //   98: ifnull +14 -> 112
    //   101: aload_0
    //   102: aload 10
    //   104: invokeinterface 91 1 0
    //   109: putfield 31	com/viber/voip/contacts/c/d/b/b:d	Ljava/lang/String;
    //   112: aload 8
    //   114: invokestatic 96	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   117: aload 9
    //   119: areturn
    //   120: aconst_null
    //   121: astore 9
    //   123: goto -11 -> 112
    //   126: astore_2
    //   127: aload_1
    //   128: invokestatic 96	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   131: aload_2
    //   132: athrow
    //   133: astore_2
    //   134: aload 8
    //   136: astore_1
    //   137: goto -10 -> 127
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	140	0	this	b
    //   1	136	1	localObject1	Object
    //   126	6	2	localObject2	Object
    //   133	1	2	localObject3	Object
    //   5	74	3	localCreator	com.viber.voip.messages.orm.creator.Creator
    //   16	32	4	localContentResolver	ContentResolver
    //   22	28	5	localUri	Uri
    //   28	24	6	arrayOfString1	String[]
    //   34	22	7	arrayOfString2	String[]
    //   61	74	8	localCursor	Cursor
    //   87	35	9	locali	i
    //   94	9	10	locali1	com.viber.voip.contacts.b.i
    // Exception table:
    //   from	to	target	type
    //   2	63	126	finally
    //   68	96	133	finally
    //   101	112	133	finally
  }
  
  private String a(long paramLong)
  {
    Object localObject1 = null;
    label114:
    for (;;)
    {
      try
      {
        ContentResolver localContentResolver = a.a(this.b).getContentResolver();
        Uri localUri = f.a;
        String[] arrayOfString1 = { "data2" };
        String[] arrayOfString2 = new String[1];
        arrayOfString2[0] = String.valueOf(paramLong);
        Cursor localCursor = localContentResolver.query(localUri, arrayOfString1, "mime_type=0 AND contact_id=?", arrayOfString2, null);
        if (localCursor != null) {}
        String str2;
        String str1 = null;
      }
      finally
      {
        try
        {
          if (!localCursor.moveToFirst()) {
            break label114;
          }
          str2 = localCursor.getString(0);
          str1 = str2;
          al.a(localCursor);
          return str1;
        }
        finally
        {
          localObject1 = localCursor;
        }
        localObject2 = finally;
        al.a((Cursor)localObject1);
      }
    }
  }
  
  private void a(i parami)
  {
    dc.a(dk.a).postAtFrontOfQueue(new d(this, parami));
  }
  
  private void b(boolean paramBoolean)
  {
    c(paramBoolean);
  }
  
  private void c(boolean paramBoolean)
  {
    dc.a(dk.i).postAtFrontOfQueue(new c(this, paramBoolean));
  }
  
  public void a(boolean paramBoolean)
  {
    if (this.c > 0L)
    {
      this.d = a(this.c);
      this.c = 0L;
    }
    i locali = a();
    if ((this.f) || ((locali != null) && (paramBoolean))) {
      a(a());
    }
    this.f = true;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof b)) {
      return this.a.equals(((b)paramObject).a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return 0;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.b.b
 * JD-Core Version:    0.7.0.1
 */