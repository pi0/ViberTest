package com.viber.provider.contacts;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.UriMatcher;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.viber.provider.ViberContentProvider;
import com.viber.voip.i.a.b;
import com.viber.voip.i.a.c;
import com.viber.voip.i.a.d;
import com.viber.voip.i.a.e;
import com.viber.voip.i.a.f;
import com.viber.voip.i.a.g;
import com.viber.voip.i.a.h;
import com.viber.voip.i.a.i;
import com.viber.voip.i.a.o;
import com.viber.voip.i.a.p;
import com.viber.voip.process.k;
import java.util.Arrays;
import java.util.List;

@TargetApi(8)
public class ViberContactsProvider
  extends ViberContentProvider
{
  private static final UriMatcher b = new UriMatcher(-1);
  
  static
  {
    b.addURI("com.viber.provider.vibercontacts", "updatecontactversion", 1001);
    b.addURI("com.viber.provider.vibercontacts", "phonebookcontact", 501);
    b.addURI("com.viber.provider.vibercontacts", "joinfullcontactdata", 503);
    b.addURI("com.viber.provider.vibercontacts", "joinnumberscontactdata", 504);
    b.addURI("com.viber.provider.vibercontacts", "composenumberscontactdata", 506);
    b.addURI("com.viber.provider.vibercontacts", "joindatavibernumbers", 505);
    b.addURI("com.viber.provider.vibercontacts", "phonebookrawcontact", 601);
    b.addURI("com.viber.provider.vibercontacts", "phonebookrcontactrawcontact", 602);
    b.addURI("com.viber.provider.vibercontacts", "phonebookrcontactrawcontactphonebookdatawithphone", 603);
    b.addURI("com.viber.provider.vibercontacts", "vibernumbers", 701);
    b.addURI("com.viber.provider.vibercontacts", "phonebookdata", 801);
    b.addURI("com.viber.provider.vibercontacts", "phonebookdatanumbersviberblocked", 802);
    b.addURI("com.viber.provider.vibercontacts", "phonebookdatacontact", 803);
    b.addURI("com.viber.provider.vibercontacts", "listunioncontactdata", 901);
    b.addURI("com.viber.provider.vibercontacts", "callsjoincontacts", 303);
    b.addURI("com.viber.provider.vibercontacts", "calls", 302);
    b.addURI("com.viber.provider.vibercontacts", "calls/#", 301);
    b.addURI("com.viber.provider.vibercontacts", "blockednumbers", 1101);
    b.addURI("com.viber.provider.vibercontacts", "blockednumberscontacts", 1102);
  }
  
  private int a(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    String str1 = (String)paramUri.getPathSegments().get(1);
    StringBuilder localStringBuilder = new StringBuilder().append("_id=").append(str1);
    if (!TextUtils.isEmpty(paramString)) {}
    for (String str2 = " AND (" + paramString + ')';; str2 = "")
    {
      String str3 = str2;
      return this.a.delete("calls", str3, paramArrayOfString);
    }
  }
  
  private int a(String paramString, String[] paramArrayOfString)
  {
    return this.a.delete("calls", paramString, paramArrayOfString);
  }
  
  private void a(String paramString) {}
  
  protected SQLiteOpenHelper a()
  {
    return com.viber.provider.contacts.b.a.a(getContext());
  }
  
  /* Error */
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: new 130	com/viber/provider/g
    //   3: dup
    //   4: aload_0
    //   5: invokevirtual 123	com/viber/provider/contacts/ViberContactsProvider:getContext	()Landroid/content/Context;
    //   8: invokespecial 133	com/viber/provider/g:<init>	(Landroid/content/Context;)V
    //   11: astore 4
    //   13: iconst_0
    //   14: istore 5
    //   16: aload_0
    //   17: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   20: aload 4
    //   22: invokevirtual 137	android/database/sqlite/SQLiteDatabase:beginTransactionWithListener	(Landroid/database/sqlite/SQLiteTransactionListener;)V
    //   25: getstatic 19	com/viber/provider/contacts/ViberContactsProvider:b	Landroid/content/UriMatcher;
    //   28: aload_1
    //   29: invokevirtual 141	android/content/UriMatcher:match	(Landroid/net/Uri;)I
    //   32: lookupswitch	default:+68->100, 301:+154->186, 302:+118->150, 501:+173->205, 601:+219->251, 701:+196->228, 801:+294->326, 1101:+317->349
    //   101: nop
    //   102: d2l
    //   103: dup
    //   104: new 83	java/lang/StringBuilder
    //   107: dup
    //   108: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   111: ldc 145
    //   113: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: aload_1
    //   117: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   120: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   123: invokespecial 150	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   126: athrow
    //   127: astore 6
    //   129: iload 5
    //   131: ifle +9 -> 140
    //   134: aload 4
    //   136: aload_1
    //   137: invokevirtual 153	com/viber/provider/g:a	(Landroid/net/Uri;)V
    //   140: aload_0
    //   141: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   144: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   147: aload 6
    //   149: athrow
    //   150: aload_0
    //   151: aload_2
    //   152: aload_3
    //   153: invokespecial 158	com/viber/provider/contacts/ViberContactsProvider:a	(Ljava/lang/String;[Ljava/lang/String;)I
    //   156: istore 5
    //   158: aload_0
    //   159: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   162: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   165: iload 5
    //   167: ifle +9 -> 176
    //   170: aload 4
    //   172: aload_1
    //   173: invokevirtual 153	com/viber/provider/g:a	(Landroid/net/Uri;)V
    //   176: aload_0
    //   177: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   180: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   183: iload 5
    //   185: ireturn
    //   186: aload_0
    //   187: aload_1
    //   188: aload_2
    //   189: aload_3
    //   190: invokespecial 163	com/viber/provider/contacts/ViberContactsProvider:a	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    //   193: istore 5
    //   195: aload_0
    //   196: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   199: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   202: goto -37 -> 165
    //   205: aload_0
    //   206: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   209: ldc 29
    //   211: aload_2
    //   212: aload_3
    //   213: invokevirtual 114	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   216: istore 5
    //   218: aload_0
    //   219: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   222: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   225: goto -60 -> 165
    //   228: aload_0
    //   229: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   232: ldc 45
    //   234: aload_2
    //   235: aload_3
    //   236: invokevirtual 114	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   239: istore 5
    //   241: aload_0
    //   242: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   245: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   248: goto -83 -> 165
    //   251: aload_0
    //   252: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   255: ldc 47
    //   257: new 83	java/lang/StringBuilder
    //   260: dup
    //   261: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   264: ldc 165
    //   266: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: aload_2
    //   270: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   273: ldc 167
    //   275: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   281: aload_3
    //   282: invokevirtual 114	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   285: pop
    //   286: aload_0
    //   287: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   290: ldc 39
    //   292: aload_2
    //   293: aload_3
    //   294: invokevirtual 114	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   297: istore 8
    //   299: aload_0
    //   300: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   303: ldc 29
    //   305: ldc 169
    //   307: aconst_null
    //   308: invokevirtual 114	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   311: pop
    //   312: aload_0
    //   313: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   316: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   319: iload 8
    //   321: istore 5
    //   323: goto -158 -> 165
    //   326: aload_0
    //   327: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   330: ldc 47
    //   332: aload_2
    //   333: aload_3
    //   334: invokevirtual 114	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   337: istore 5
    //   339: aload_0
    //   340: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   343: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   346: goto -181 -> 165
    //   349: aload_0
    //   350: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   353: ldc 61
    //   355: aload_2
    //   356: aload_3
    //   357: invokevirtual 114	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   360: istore 5
    //   362: aload_0
    //   363: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   366: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   369: goto -204 -> 165
    //   372: astore 6
    //   374: iload 8
    //   376: istore 5
    //   378: goto -249 -> 129
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	381	0	this	ViberContactsProvider
    //   0	381	1	paramUri	Uri
    //   0	381	2	paramString	String
    //   0	381	3	paramArrayOfString	String[]
    //   11	160	4	localg	com.viber.provider.g
    //   14	363	5	i	int
    //   127	21	6	localObject1	Object
    //   372	1	6	localObject2	Object
    //   297	78	8	j	int
    // Exception table:
    //   from	to	target	type
    //   25	100	127	finally
    //   100	127	127	finally
    //   150	165	127	finally
    //   186	202	127	finally
    //   205	225	127	finally
    //   228	248	127	finally
    //   251	312	127	finally
    //   326	346	127	finally
    //   349	369	127	finally
    //   312	319	372	finally
  }
  
  public String getType(Uri paramUri)
  {
    b.match(paramUri);
    throw new IllegalArgumentException("Unknown URI " + paramUri);
  }
  
  /* Error */
  @TargetApi(8)
  public Uri insert(Uri paramUri, android.content.ContentValues paramContentValues)
  {
    // Byte code:
    //   0: new 130	com/viber/provider/g
    //   3: dup
    //   4: aload_0
    //   5: invokevirtual 123	com/viber/provider/contacts/ViberContactsProvider:getContext	()Landroid/content/Context;
    //   8: invokespecial 133	com/viber/provider/g:<init>	(Landroid/content/Context;)V
    //   11: astore_3
    //   12: aload_0
    //   13: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   16: aload_3
    //   17: invokevirtual 137	android/database/sqlite/SQLiteDatabase:beginTransactionWithListener	(Landroid/database/sqlite/SQLiteTransactionListener;)V
    //   20: getstatic 19	com/viber/provider/contacts/ViberContactsProvider:b	Landroid/content/UriMatcher;
    //   23: aload_1
    //   24: invokevirtual 141	android/content/UriMatcher:match	(Landroid/net/Uri;)I
    //   27: lookupswitch	default:+65->92, 301:+426->453, 302:+104->131, 501:+206->233, 601:+294->321, 701:+250->277, 801:+338->365, 1101:+382->409
    //   93: nop
    //   94: d2l
    //   95: dup
    //   96: new 83	java/lang/StringBuilder
    //   99: dup
    //   100: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   103: ldc 173
    //   105: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: aload_1
    //   109: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   112: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: invokespecial 150	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   118: athrow
    //   119: astore 4
    //   121: aload_0
    //   122: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   125: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   128: aload 4
    //   130: athrow
    //   131: aload_0
    //   132: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   135: ldc 57
    //   137: aconst_null
    //   138: aload_2
    //   139: invokevirtual 178	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   142: lstore 16
    //   144: lload 16
    //   146: lconst_0
    //   147: lcmp
    //   148: ifge +30 -> 178
    //   151: new 180	android/database/SQLException
    //   154: dup
    //   155: new 83	java/lang/StringBuilder
    //   158: dup
    //   159: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   162: ldc 182
    //   164: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: aload_1
    //   168: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   171: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   174: invokespecial 183	android/database/SQLException:<init>	(Ljava/lang/String;)V
    //   177: athrow
    //   178: aload_1
    //   179: lload 16
    //   181: invokestatic 189	android/content/ContentUris:withAppendedId	(Landroid/net/Uri;J)Landroid/net/Uri;
    //   184: astore 7
    //   186: aload_3
    //   187: aload 7
    //   189: invokevirtual 153	com/viber/provider/g:a	(Landroid/net/Uri;)V
    //   192: aload_0
    //   193: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   196: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   199: aload_0
    //   200: new 83	java/lang/StringBuilder
    //   203: dup
    //   204: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   207: ldc 191
    //   209: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: aload 7
    //   214: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   217: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   220: invokespecial 193	com/viber/provider/contacts/ViberContactsProvider:a	(Ljava/lang/String;)V
    //   223: aload_0
    //   224: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   227: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   230: aload 7
    //   232: areturn
    //   233: aload_0
    //   234: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   237: ldc 29
    //   239: aconst_null
    //   240: aload_2
    //   241: invokevirtual 178	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   244: lstore 14
    //   246: lload 14
    //   248: lconst_0
    //   249: lcmp
    //   250: ifge +3 -> 253
    //   253: aload_1
    //   254: lload 14
    //   256: invokestatic 189	android/content/ContentUris:withAppendedId	(Landroid/net/Uri;J)Landroid/net/Uri;
    //   259: astore 7
    //   261: aload_3
    //   262: aload 7
    //   264: invokevirtual 153	com/viber/provider/g:a	(Landroid/net/Uri;)V
    //   267: aload_0
    //   268: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   271: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   274: goto -51 -> 223
    //   277: aload_0
    //   278: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   281: ldc 45
    //   283: aconst_null
    //   284: aload_2
    //   285: invokevirtual 178	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   288: lstore 12
    //   290: lload 12
    //   292: lconst_0
    //   293: lcmp
    //   294: ifge +3 -> 297
    //   297: aload_1
    //   298: lload 12
    //   300: invokestatic 189	android/content/ContentUris:withAppendedId	(Landroid/net/Uri;J)Landroid/net/Uri;
    //   303: astore 7
    //   305: aload_3
    //   306: aload 7
    //   308: invokevirtual 153	com/viber/provider/g:a	(Landroid/net/Uri;)V
    //   311: aload_0
    //   312: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   315: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   318: goto -95 -> 223
    //   321: aload_0
    //   322: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   325: ldc 39
    //   327: aconst_null
    //   328: aload_2
    //   329: invokevirtual 178	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   332: lstore 10
    //   334: lload 10
    //   336: lconst_0
    //   337: lcmp
    //   338: ifge +3 -> 341
    //   341: aload_1
    //   342: lload 10
    //   344: invokestatic 189	android/content/ContentUris:withAppendedId	(Landroid/net/Uri;J)Landroid/net/Uri;
    //   347: astore 7
    //   349: aload_3
    //   350: aload 7
    //   352: invokevirtual 153	com/viber/provider/g:a	(Landroid/net/Uri;)V
    //   355: aload_0
    //   356: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   359: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   362: goto -139 -> 223
    //   365: aload_0
    //   366: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   369: ldc 47
    //   371: aconst_null
    //   372: aload_2
    //   373: invokevirtual 178	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   376: lstore 8
    //   378: lload 8
    //   380: lconst_0
    //   381: lcmp
    //   382: ifge +3 -> 385
    //   385: aload_1
    //   386: lload 8
    //   388: invokestatic 189	android/content/ContentUris:withAppendedId	(Landroid/net/Uri;J)Landroid/net/Uri;
    //   391: astore 7
    //   393: aload_3
    //   394: aload 7
    //   396: invokevirtual 153	com/viber/provider/g:a	(Landroid/net/Uri;)V
    //   399: aload_0
    //   400: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   403: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   406: goto -183 -> 223
    //   409: aload_0
    //   410: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   413: ldc 61
    //   415: aconst_null
    //   416: aload_2
    //   417: invokevirtual 178	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   420: lstore 5
    //   422: lload 5
    //   424: lconst_0
    //   425: lcmp
    //   426: ifge +3 -> 429
    //   429: aload_1
    //   430: lload 5
    //   432: invokestatic 189	android/content/ContentUris:withAppendedId	(Landroid/net/Uri;J)Landroid/net/Uri;
    //   435: astore 7
    //   437: aload_3
    //   438: aload 7
    //   440: invokevirtual 153	com/viber/provider/g:a	(Landroid/net/Uri;)V
    //   443: aload_0
    //   444: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   447: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   450: goto -227 -> 223
    //   453: new 143	java/lang/IllegalArgumentException
    //   456: dup
    //   457: new 83	java/lang/StringBuilder
    //   460: dup
    //   461: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   464: ldc 145
    //   466: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   469: aload_1
    //   470: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   473: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   476: invokespecial 150	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   479: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	480	0	this	ViberContactsProvider
    //   0	480	1	paramUri	Uri
    //   0	480	2	paramContentValues	android.content.ContentValues
    //   11	427	3	localg	com.viber.provider.g
    //   119	10	4	localObject	Object
    //   420	11	5	l1	long
    //   184	255	7	localUri	Uri
    //   376	11	8	l2	long
    //   332	11	10	l3	long
    //   288	11	12	l4	long
    //   244	11	14	l5	long
    //   142	38	16	l6	long
    // Exception table:
    //   from	to	target	type
    //   20	92	119	finally
    //   92	119	119	finally
    //   131	144	119	finally
    //   151	178	119	finally
    //   178	223	119	finally
    //   233	246	119	finally
    //   253	274	119	finally
    //   277	290	119	finally
    //   297	318	119	finally
    //   321	334	119	finally
    //   341	362	119	finally
    //   365	378	119	finally
    //   385	406	119	finally
    //   409	422	119	finally
    //   429	450	119	finally
    //   453	480	119	finally
  }
  
  public boolean onCreate()
  {
    k.a(getContext());
    try
    {
      this.a = a().getWritableDatabase();
      if (!this.a.isOpen())
      {
        this.a = a().getWritableDatabase();
        this.a.setLocale(getContext().getResources().getConfiguration().locale);
      }
      if (this.a != null) {
        return true;
      }
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        a(Log.getStackTraceString(localSQLiteException));
        a("All Databases: " + Arrays.toString(getContext().databaseList()));
      }
    }
    return false;
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    if (a(paramUri, null, null)) {
      return null;
    }
    SQLiteQueryBuilder localSQLiteQueryBuilder = new SQLiteQueryBuilder();
    String str1;
    Object localObject;
    switch (b.match(paramUri))
    {
    default: 
      throw new IllegalArgumentException("Unsupported URI:" + paramUri);
    case 601: 
      str1 = "phonebookrawcontact";
      localObject = localSQLiteQueryBuilder;
      ((SQLiteQueryBuilder)localObject).setTables(str1);
      if (!TextUtils.isEmpty(paramString2)) {
        break;
      }
    }
    for (String str2 = null;; str2 = paramString2)
    {
      return ((SQLiteQueryBuilder)localObject).query(this.a, paramArrayOfString1, paramString1, paramArrayOfString2, null, null, str2);
      str1 = "phonebookcontact";
      localObject = localSQLiteQueryBuilder;
      break;
      str1 = "vibernumbers";
      localObject = localSQLiteQueryBuilder;
      break;
      str1 = "phonebookdata";
      localObject = localSQLiteQueryBuilder;
      break;
      str1 = "calls";
      localObject = localSQLiteQueryBuilder;
      break;
      str1 = "calls";
      List localList = paramUri.getPathSegments();
      localSQLiteQueryBuilder.appendWhere("_id=" + (String)localList.get(1));
      localObject = localSQLiteQueryBuilder;
      break;
      localObject = new b();
      str1 = "calls";
      break;
      localObject = new f();
      str1 = "phonebookcontact";
      break;
      localObject = new i();
      str1 = "phonebookcontact";
      break;
      localObject = new h();
      str1 = "phonebookcontact";
      break;
      localObject = new g();
      str1 = "phonebookcontact";
      break;
      localObject = new d();
      str1 = "phonebookcontact";
      break;
      localObject = new e();
      str1 = "phonebookcontact";
      break;
      localObject = new p();
      str1 = "phonebookdata";
      break;
      localObject = new o();
      str1 = "phonebookdata";
      break;
      localObject = new c();
      str1 = "phonebookcontact";
      break;
      str1 = "blockednumbers";
      localObject = localSQLiteQueryBuilder;
      break;
      localObject = new com.viber.voip.i.a.a();
      str1 = "blockednumbers";
      break;
    }
  }
  
  /* Error */
  @TargetApi(8)
  public int update(Uri paramUri, android.content.ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 5
    //   3: new 130	com/viber/provider/g
    //   6: dup
    //   7: aload_0
    //   8: invokevirtual 123	com/viber/provider/contacts/ViberContactsProvider:getContext	()Landroid/content/Context;
    //   11: invokespecial 133	com/viber/provider/g:<init>	(Landroid/content/Context;)V
    //   14: astore 6
    //   16: aload_0
    //   17: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   20: aload 6
    //   22: invokevirtual 137	android/database/sqlite/SQLiteDatabase:beginTransactionWithListener	(Landroid/database/sqlite/SQLiteTransactionListener;)V
    //   25: getstatic 19	com/viber/provider/contacts/ViberContactsProvider:b	Landroid/content/UriMatcher;
    //   28: aload_1
    //   29: invokevirtual 141	android/content/UriMatcher:match	(Landroid/net/Uri;)I
    //   32: lookupswitch	default:+76->108, 301:+169->201, 302:+126->158, 501:+281->313, 601:+331->363, 701:+306->338, 801:+356->388, 1001:+406->438, 1101:+381->413
    //   109: nop
    //   110: d2l
    //   111: dup
    //   112: new 83	java/lang/StringBuilder
    //   115: dup
    //   116: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   119: ldc 145
    //   121: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: aload_1
    //   125: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   128: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: invokespecial 150	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   134: athrow
    //   135: astore 7
    //   137: iload 5
    //   139: ifle +9 -> 148
    //   142: aload 6
    //   144: aload_1
    //   145: invokevirtual 153	com/viber/provider/g:a	(Landroid/net/Uri;)V
    //   148: aload_0
    //   149: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   152: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   155: aload 7
    //   157: athrow
    //   158: aload_0
    //   159: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   162: ldc 57
    //   164: aload_2
    //   165: aload_3
    //   166: aload 4
    //   168: invokevirtual 308	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   171: istore 5
    //   173: aload_0
    //   174: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   177: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   180: iload 5
    //   182: ifle +9 -> 191
    //   185: aload 6
    //   187: aload_1
    //   188: invokevirtual 153	com/viber/provider/g:a	(Landroid/net/Uri;)V
    //   191: aload_0
    //   192: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   195: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   198: iload 5
    //   200: ireturn
    //   201: aload_1
    //   202: invokevirtual 73	android/net/Uri:getPathSegments	()Ljava/util/List;
    //   205: iconst_1
    //   206: invokeinterface 79 2 0
    //   211: checkcast 81	java/lang/String
    //   214: astore 11
    //   216: new 83	java/lang/StringBuilder
    //   219: dup
    //   220: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   223: ldc 86
    //   225: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: aload 11
    //   230: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   233: astore 12
    //   235: aload_3
    //   236: invokestatic 96	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   239: istore 13
    //   241: iconst_0
    //   242: istore 5
    //   244: iload 13
    //   246: ifne +278 -> 524
    //   249: new 83	java/lang/StringBuilder
    //   252: dup
    //   253: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   256: ldc 98
    //   258: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: aload_3
    //   262: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: bipush 41
    //   267: invokevirtual 101	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   270: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   273: astore 14
    //   275: aload 12
    //   277: aload 14
    //   279: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   282: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   285: astore 15
    //   287: aload_0
    //   288: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   291: ldc 57
    //   293: aload_2
    //   294: aload 15
    //   296: aload 4
    //   298: invokevirtual 308	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   301: istore 5
    //   303: aload_0
    //   304: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   307: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   310: goto -130 -> 180
    //   313: aload_0
    //   314: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   317: ldc 29
    //   319: aload_2
    //   320: aload_3
    //   321: aload 4
    //   323: invokevirtual 308	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   326: istore 5
    //   328: aload_0
    //   329: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   332: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   335: goto -155 -> 180
    //   338: aload_0
    //   339: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   342: ldc 45
    //   344: aload_2
    //   345: aload_3
    //   346: aload 4
    //   348: invokevirtual 308	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   351: istore 5
    //   353: aload_0
    //   354: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   357: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   360: goto -180 -> 180
    //   363: aload_0
    //   364: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   367: ldc 39
    //   369: aload_2
    //   370: aload_3
    //   371: aload 4
    //   373: invokevirtual 308	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   376: istore 5
    //   378: aload_0
    //   379: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   382: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   385: goto -205 -> 180
    //   388: aload_0
    //   389: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   392: ldc 47
    //   394: aload_2
    //   395: aload_3
    //   396: aload 4
    //   398: invokevirtual 308	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   401: istore 5
    //   403: aload_0
    //   404: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   407: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   410: goto -230 -> 180
    //   413: aload_0
    //   414: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   417: ldc 61
    //   419: aload_2
    //   420: aload_3
    //   421: aload 4
    //   423: invokevirtual 308	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   426: istore 5
    //   428: aload_0
    //   429: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   432: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   435: goto -255 -> 180
    //   438: aload_0
    //   439: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   442: astore 8
    //   444: new 83	java/lang/StringBuilder
    //   447: dup
    //   448: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   451: ldc_w 310
    //   454: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   457: astore 9
    //   459: aload_3
    //   460: ifnonnull +7 -> 467
    //   463: ldc_w 312
    //   466: astore_3
    //   467: aload 9
    //   469: aload_3
    //   470: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   473: ldc 167
    //   475: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   478: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   481: astore 10
    //   483: aload 4
    //   485: ifnonnull +9 -> 494
    //   488: iconst_0
    //   489: anewarray 81	java/lang/String
    //   492: astore 4
    //   494: aload 8
    //   496: aload 10
    //   498: aload 4
    //   500: invokevirtual 316	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   503: aload_0
    //   504: getfield 108	com/viber/provider/contacts/ViberContactsProvider:a	Landroid/database/sqlite/SQLiteDatabase;
    //   507: invokevirtual 161	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   510: iconst_1
    //   511: istore 5
    //   513: goto -333 -> 180
    //   516: astore 7
    //   518: iconst_1
    //   519: istore 5
    //   521: goto -384 -> 137
    //   524: ldc 116
    //   526: astore 14
    //   528: goto -253 -> 275
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	531	0	this	ViberContactsProvider
    //   0	531	1	paramUri	Uri
    //   0	531	2	paramContentValues	android.content.ContentValues
    //   0	531	3	paramString	String
    //   0	531	4	paramArrayOfString	String[]
    //   1	519	5	i	int
    //   14	172	6	localg	com.viber.provider.g
    //   135	21	7	localObject1	Object
    //   516	1	7	localObject2	Object
    //   442	53	8	localSQLiteDatabase	SQLiteDatabase
    //   457	11	9	localStringBuilder1	StringBuilder
    //   481	16	10	str1	String
    //   214	15	11	str2	String
    //   233	43	12	localStringBuilder2	StringBuilder
    //   239	6	13	bool	boolean
    //   273	254	14	str3	String
    //   285	10	15	str4	String
    // Exception table:
    //   from	to	target	type
    //   25	108	135	finally
    //   108	135	135	finally
    //   158	180	135	finally
    //   201	241	135	finally
    //   249	275	135	finally
    //   275	310	135	finally
    //   313	335	135	finally
    //   338	360	135	finally
    //   363	385	135	finally
    //   388	410	135	finally
    //   413	435	135	finally
    //   438	459	135	finally
    //   467	483	135	finally
    //   488	494	135	finally
    //   494	503	135	finally
    //   503	510	516	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.provider.contacts.ViberContactsProvider
 * JD-Core Version:    0.7.0.1
 */