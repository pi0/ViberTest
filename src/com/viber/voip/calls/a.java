package com.viber.voip.calls;

import android.net.Uri;
import android.provider.CallLog.Calls;
import com.viber.voip.ViberApplication;
import com.viber.voip.calls.entities.impl.CallEntityImpl;
import com.viber.voip.messages.orm.manager.AsyncEntityManager;
import java.util.Set;

public class a
{
  private static final String a = a.class.getSimpleName();
  private static int d = 0;
  private static int e = 1;
  private static String[] f = { "COUNT(*)", "GROUP_CONCAT(call_id)" };
  private static String[] g = { "COUNT(*)" };
  private static String h = "viber_call_type=? AND duration>?";
  private AsyncEntityManager b = new AsyncEntityManager(com.viber.voip.calls.entities.impl.g.a, false);
  private AsyncEntityManager c = new AsyncEntityManager(CallEntityImpl.b, false);
  private ViberApplication i;
  private com.viber.voip.contacts.c.e.b j;
  private boolean k;
  
  public a(ViberApplication paramViberApplication)
  {
    this.i = paramViberApplication;
    this.j = com.viber.voip.contacts.c.e.b.a(this.i);
    this.k = c();
  }
  
  private void a(Set<Long> paramSet, o paramo)
  {
    this.j.a(1594, null, com.viber.provider.contacts.c.a, "call_id NOT IN (" + com.viber.voip.i.a.c(paramSet) + ")", null, new m(this, paramo), false, false);
  }
  
  /* Error */
  private boolean c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 133	android/os/Build$VERSION:SDK_INT	I
    //   5: bipush 14
    //   7: if_icmple +122 -> 129
    //   10: getstatic 138	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   13: ldc 140
    //   15: invokevirtual 144	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   18: ifeq +111 -> 129
    //   21: invokestatic 150	com/viber/voip/ViberApplication:preferences	()Lcom/viber/voip/settings/l;
    //   24: ldc 152
    //   26: iconst_0
    //   27: invokeinterface 157 3 0
    //   32: istore_3
    //   33: iload_3
    //   34: istore 4
    //   36: iload 4
    //   38: ifne +63 -> 101
    //   41: aload_0
    //   42: getfield 75	com/viber/voip/calls/a:i	Lcom/viber/voip/ViberApplication;
    //   45: invokevirtual 161	com/viber/voip/ViberApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   48: getstatic 166	android/provider/CallLog$Calls:CONTENT_URI	Landroid/net/Uri;
    //   51: iconst_1
    //   52: anewarray 38	java/lang/String
    //   55: dup
    //   56: iconst_0
    //   57: ldc 168
    //   59: aastore
    //   60: aconst_null
    //   61: aconst_null
    //   62: ldc 170
    //   64: invokevirtual 176	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   67: astore 8
    //   69: aload 8
    //   71: astore 6
    //   73: iconst_2
    //   74: istore 4
    //   76: aload 6
    //   78: ifnull +10 -> 88
    //   81: aload 6
    //   83: invokeinterface 181 1 0
    //   88: invokestatic 150	com/viber/voip/ViberApplication:preferences	()Lcom/viber/voip/settings/l;
    //   91: ldc 152
    //   93: iload 4
    //   95: invokeinterface 184 3 0
    //   100: pop
    //   101: iload 4
    //   103: iconst_2
    //   104: if_icmpne +20 -> 124
    //   107: iconst_1
    //   108: istore_2
    //   109: aload_0
    //   110: monitorexit
    //   111: iload_2
    //   112: ireturn
    //   113: astore 5
    //   115: iconst_1
    //   116: istore 4
    //   118: aconst_null
    //   119: astore 6
    //   121: goto -45 -> 76
    //   124: iconst_0
    //   125: istore_2
    //   126: goto -17 -> 109
    //   129: iconst_0
    //   130: istore_2
    //   131: goto -22 -> 109
    //   134: astore_1
    //   135: aload_0
    //   136: monitorexit
    //   137: aload_1
    //   138: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	139	0	this	a
    //   134	4	1	localObject	Object
    //   108	23	2	bool	boolean
    //   32	2	3	m	int
    //   34	83	4	n	int
    //   113	1	5	localException	java.lang.Exception
    //   71	49	6	localCursor1	android.database.Cursor
    //   67	3	8	localCursor2	android.database.Cursor
    // Exception table:
    //   from	to	target	type
    //   41	69	113	java/lang/Exception
    //   2	33	134	finally
    //   41	69	134	finally
    //   81	88	134	finally
    //   88	101	134	finally
  }
  
  public void a(int paramInt, p paramp)
  {
    com.viber.voip.contacts.c.e.b localb = this.j;
    Uri localUri = com.viber.provider.contacts.c.a;
    String[] arrayOfString1 = g;
    String str = h;
    String[] arrayOfString2 = new String[2];
    arrayOfString2[0] = String.valueOf(2);
    arrayOfString2[1] = String.valueOf(paramInt);
    localb.a(1593, null, localUri, arrayOfString1, str, arrayOfString2, null, new b(this, paramp), false, false);
  }
  
  public void a(CallEntityImpl paramCallEntityImpl, com.viber.voip.calls.entities.impl.g paramg, o paramo)
  {
    a("insertViberCallLogEntity: insert call");
    AsyncEntityManager.save(paramCallEntityImpl, paramCallEntityImpl.getCreator(), new c(this, paramo));
  }
  
  public void a(n paramn, boolean paramBoolean)
  {
    this.j.a(1595, null, com.viber.provider.contacts.c.a, null, null, new e(this, paramn, paramBoolean), false, true);
  }
  
  public void a(n paramn, Long[] paramArrayOfLong1, Long[] paramArrayOfLong2)
  {
    this.j.a(1595, null, com.viber.provider.contacts.c.a, "_id IN (" + com.viber.voip.i.a.a(paramArrayOfLong2) + ")", null, new d(this, paramn, paramArrayOfLong1), false, true);
  }
  
  public void a(o paramo, t paramt)
  {
    com.viber.voip.contacts.c.e.b localb = this.j;
    Uri localUri = CallLog.Calls.CONTENT_URI;
    String[] arrayOfString = { "_id" };
    StringBuilder localStringBuilder = new StringBuilder().append("_id IN (").append(paramt.a).append(" )");
    if (this.k) {}
    for (String str = " AND messageid IS NULL";; str = "")
    {
      localb.a(1593, null, localUri, arrayOfString, str, null, null, new k(this, paramt, paramo), false, false);
      return;
    }
  }
  
  public void a(q paramq)
  {
    this.j.a(1593, null, com.viber.provider.contacts.c.a, f, null, null, null, new f(this, paramq), false, false);
  }
  
  public void a(r paramr)
  {
    this.j.a(1593, null, CallLog.Calls.CONTENT_URI, new String[] { "date" }, null, null, "date DESC LIMIT 100", new l(this, paramr), false, false);
  }
  
  public void a(s params)
  {
    a(new g(this, params));
  }
  
  protected void a(String paramString) {}
  
  public void a(Set<Long> paramSet, long paramLong, o paramo, t paramt)
  {
    AsyncEntityManager localAsyncEntityManager = this.b;
    com.viber.voip.contacts.c.e.b localb = this.j;
    i locali = new i(this, paramSet, paramo);
    StringBuilder localStringBuilder = new StringBuilder().append("_id NOT IN (").append(paramt.a).append(") ");
    if (this.k) {}
    for (String str = " AND messageid IS NULL";; str = "")
    {
      localAsyncEntityManager.fillCursor(localb, locali, 0, str + " AND " + "date" + ">=" + paramLong, new String[0]);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.a
 * JD-Core Version:    0.7.0.1
 */