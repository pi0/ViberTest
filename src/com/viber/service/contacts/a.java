package com.viber.service.contacts;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.Context;
import java.util.ArrayList;

public final class a
{
  private final String a = "BatchOperation";
  private final ContentResolver b;
  private final ArrayList<ContentProviderOperation> c;
  
  public a(Context paramContext)
  {
    this.b = paramContext.getContentResolver();
    this.c = new ArrayList();
  }
  
  public int a()
  {
    return this.c.size();
  }
  
  public void a(ContentProviderOperation paramContentProviderOperation)
  {
    if (paramContentProviderOperation == null) {
      return;
    }
    this.c.add(paramContentProviderOperation);
  }
  
  /* Error */
  public java.util.List<android.net.Uri> b()
  {
    // Byte code:
    //   0: new 30	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 31	java/util/ArrayList:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: getfield 33	com/viber/service/contacts/a:c	Ljava/util/ArrayList;
    //   12: invokevirtual 37	java/util/ArrayList:size	()I
    //   15: ifne +5 -> 20
    //   18: aload_1
    //   19: areturn
    //   20: aload_0
    //   21: getfield 28	com/viber/service/contacts/a:b	Landroid/content/ContentResolver;
    //   24: ldc 51
    //   26: aload_0
    //   27: getfield 33	com/viber/service/contacts/a:c	Ljava/util/ArrayList;
    //   30: invokevirtual 57	android/content/ContentResolver:applyBatch	(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    //   33: astore 8
    //   35: aload 8
    //   37: ifnull +53 -> 90
    //   40: aload 8
    //   42: arraylength
    //   43: ifle +47 -> 90
    //   46: iconst_0
    //   47: istore 9
    //   49: iload 9
    //   51: aload 8
    //   53: arraylength
    //   54: if_icmpge +36 -> 90
    //   57: aload_1
    //   58: aload 8
    //   60: iload 9
    //   62: aaload
    //   63: getfield 63	android/content/ContentProviderResult:uri	Landroid/net/Uri;
    //   66: invokeinterface 66 2 0
    //   71: pop
    //   72: iinc 9 1
    //   75: goto -26 -> 49
    //   78: astore 6
    //   80: ldc 18
    //   82: ldc 68
    //   84: aload 6
    //   86: invokestatic 74	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   89: pop
    //   90: aload_0
    //   91: getfield 33	com/viber/service/contacts/a:c	Ljava/util/ArrayList;
    //   94: invokevirtual 77	java/util/ArrayList:clear	()V
    //   97: aload_1
    //   98: areturn
    //   99: astore 4
    //   101: ldc 18
    //   103: ldc 68
    //   105: aload 4
    //   107: invokestatic 74	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   110: pop
    //   111: goto -21 -> 90
    //   114: astore_2
    //   115: ldc 18
    //   117: ldc 68
    //   119: aload_2
    //   120: invokestatic 74	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   123: pop
    //   124: goto -34 -> 90
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	127	0	this	a
    //   7	91	1	localArrayList	ArrayList
    //   114	6	2	localSQLiteConstraintException	android.database.sqlite.SQLiteConstraintException
    //   99	7	4	localRemoteException	android.os.RemoteException
    //   78	7	6	localOperationApplicationException	android.content.OperationApplicationException
    //   33	26	8	arrayOfContentProviderResult	android.content.ContentProviderResult[]
    //   47	26	9	i	int
    // Exception table:
    //   from	to	target	type
    //   20	35	78	android/content/OperationApplicationException
    //   40	46	78	android/content/OperationApplicationException
    //   49	72	78	android/content/OperationApplicationException
    //   20	35	99	android/os/RemoteException
    //   40	46	99	android/os/RemoteException
    //   49	72	99	android/os/RemoteException
    //   20	35	114	android/database/sqlite/SQLiteConstraintException
    //   40	46	114	android/database/sqlite/SQLiteConstraintException
    //   49	72	114	android/database/sqlite/SQLiteConstraintException
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.contacts.a
 * JD-Core Version:    0.7.0.1
 */