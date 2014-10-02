package com.viber.voip.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.android.camera.ImageManager;
import com.viber.voip.HomeActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.h;
import java.util.ArrayList;
import java.util.Iterator;

public class bm
{
  private static Uri a(Context paramContext, Uri paramUri, String paramString)
  {
    if (h.b(paramUri)) {
      try
      {
        Uri localUri = h.d(paramUri);
        return localUri;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return null;
      }
    }
    return h.a(paramContext, paramUri, paramString);
  }
  
  /* Error */
  public static void a(HomeActivity paramHomeActivity, Intent paramIntent)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 27	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 30	java/lang/StringBuilder:<init>	()V
    //   9: ldc 32
    //   11: invokevirtual 36	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: aload_1
    //   15: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   18: ldc 41
    //   20: invokevirtual 36	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: aload_1
    //   24: invokevirtual 47	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   27: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   30: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   33: invokestatic 54	com/viber/voip/util/bm:a	(Ljava/lang/String;)V
    //   36: aload_1
    //   37: invokestatic 58	com/viber/voip/util/bm:c	(Landroid/content/Intent;)Z
    //   40: ifeq +17 -> 57
    //   43: aload_1
    //   44: ldc 60
    //   46: iconst_1
    //   47: invokevirtual 64	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   50: pop
    //   51: aload_0
    //   52: aload_1
    //   53: invokevirtual 70	com/viber/voip/HomeActivity:a_	(Landroid/content/Intent;)V
    //   56: return
    //   57: aload_1
    //   58: invokestatic 72	com/viber/voip/util/bm:b	(Landroid/content/Intent;)Z
    //   61: ifne +10 -> 71
    //   64: aload_1
    //   65: invokestatic 74	com/viber/voip/util/bm:a	(Landroid/content/Intent;)Z
    //   68: ifeq +9 -> 77
    //   71: aload_0
    //   72: aload_1
    //   73: invokevirtual 76	com/viber/voip/HomeActivity:c	(Landroid/content/Intent;)V
    //   76: return
    //   77: aload_1
    //   78: invokestatic 78	com/viber/voip/util/bm:d	(Landroid/content/Intent;)Z
    //   81: ifeq +9 -> 90
    //   84: aload_0
    //   85: aload_1
    //   86: invokevirtual 80	com/viber/voip/HomeActivity:d	(Landroid/content/Intent;)V
    //   89: return
    //   90: aload_0
    //   91: aload_1
    //   92: invokestatic 83	com/viber/voip/util/bm:b	(Lcom/viber/voip/HomeActivity;Landroid/content/Intent;)Z
    //   95: ifne -39 -> 56
    //   98: aload_0
    //   99: aload_1
    //   100: iconst_0
    //   101: invokestatic 86	com/viber/voip/util/bm:a	(Landroid/app/Activity;Landroid/content/Intent;Z)Z
    //   104: ifne -48 -> 56
    //   107: aload_1
    //   108: invokevirtual 90	android/content/Intent:getData	()Landroid/net/Uri;
    //   111: ifnull +390 -> 501
    //   114: aload_0
    //   115: invokevirtual 94	com/viber/voip/HomeActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   118: aload_1
    //   119: invokevirtual 90	android/content/Intent:getData	()Landroid/net/Uri;
    //   122: iconst_2
    //   123: anewarray 96	java/lang/String
    //   126: dup
    //   127: iconst_0
    //   128: ldc 98
    //   130: aastore
    //   131: dup
    //   132: iconst_1
    //   133: ldc 100
    //   135: aastore
    //   136: aconst_null
    //   137: aconst_null
    //   138: aconst_null
    //   139: invokevirtual 106	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   142: astore 20
    //   144: aload 20
    //   146: ifnull +345 -> 491
    //   149: aload 20
    //   151: invokeinterface 112 1 0
    //   156: ifeq +335 -> 491
    //   159: aload 20
    //   161: iconst_0
    //   162: invokeinterface 116 2 0
    //   167: invokestatic 122	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   170: lstore 22
    //   172: lload 22
    //   174: lstore_3
    //   175: aload 20
    //   177: iconst_1
    //   178: invokeinterface 116 2 0
    //   183: astore 25
    //   185: aload 25
    //   187: astore 5
    //   189: aload 20
    //   191: invokestatic 127	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   194: aload 5
    //   196: ifnull +172 -> 368
    //   199: lload_3
    //   200: ldc2_w 128
    //   203: lcmp
    //   204: ifeq +164 -> 368
    //   207: ldc 131
    //   209: aload 5
    //   211: invokevirtual 135	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   214: ifeq +77 -> 291
    //   217: aload_0
    //   218: new 43	android/content/Intent
    //   221: dup
    //   222: ldc 137
    //   224: invokespecial 139	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   227: invokevirtual 142	com/viber/voip/HomeActivity:setIntent	(Landroid/content/Intent;)V
    //   230: new 43	android/content/Intent
    //   233: dup
    //   234: ldc 144
    //   236: invokespecial 139	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   239: astore 13
    //   241: aload 13
    //   243: aload_1
    //   244: invokevirtual 90	android/content/Intent:getData	()Landroid/net/Uri;
    //   247: invokevirtual 148	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   250: pop
    //   251: aload_0
    //   252: aload 13
    //   254: invokevirtual 151	com/viber/voip/HomeActivity:startActivity	(Landroid/content/Intent;)V
    //   257: return
    //   258: astore 16
    //   260: aconst_null
    //   261: astore 17
    //   263: ldc2_w 128
    //   266: lstore 18
    //   268: aload 17
    //   270: invokestatic 127	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   273: lload 18
    //   275: lstore_3
    //   276: aconst_null
    //   277: astore 5
    //   279: goto -85 -> 194
    //   282: astore 15
    //   284: aload_2
    //   285: invokestatic 127	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   288: aload 15
    //   290: athrow
    //   291: ldc 153
    //   293: aload 5
    //   295: invokevirtual 135	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   298: ifeq +70 -> 368
    //   301: aload_0
    //   302: new 43	android/content/Intent
    //   305: dup
    //   306: ldc 155
    //   308: invokespecial 139	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   311: invokevirtual 142	com/viber/voip/HomeActivity:setIntent	(Landroid/content/Intent;)V
    //   314: new 43	android/content/Intent
    //   317: dup
    //   318: ldc 155
    //   320: invokespecial 139	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   323: astore 8
    //   325: aload 8
    //   327: ldc 153
    //   329: invokevirtual 159	android/content/Intent:setType	(Ljava/lang/String;)Landroid/content/Intent;
    //   332: pop
    //   333: aload 8
    //   335: aload_1
    //   336: invokevirtual 90	android/content/Intent:getData	()Landroid/net/Uri;
    //   339: invokevirtual 148	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   342: pop
    //   343: aload 8
    //   345: ldc 161
    //   347: iconst_1
    //   348: invokevirtual 64	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   351: pop
    //   352: aload 8
    //   354: ldc 163
    //   356: lload_3
    //   357: invokevirtual 166	android/content/Intent:putExtra	(Ljava/lang/String;J)Landroid/content/Intent;
    //   360: pop
    //   361: aload_0
    //   362: aload 8
    //   364: invokestatic 171	com/viber/service/b:a	(Landroid/content/Context;Landroid/content/Intent;)V
    //   367: return
    //   368: aload_1
    //   369: ldc 173
    //   371: iconst_0
    //   372: invokevirtual 177	android/content/Intent:getBooleanExtra	(Ljava/lang/String;Z)Z
    //   375: ifeq +35 -> 410
    //   378: new 43	android/content/Intent
    //   381: dup
    //   382: ldc 144
    //   384: invokespecial 139	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   387: astore 6
    //   389: aload 6
    //   391: ldc 179
    //   393: aload_1
    //   394: ldc 179
    //   396: invokevirtual 183	android/content/Intent:getParcelableExtra	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   399: invokevirtual 186	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   402: pop
    //   403: aload_0
    //   404: aload 6
    //   406: invokevirtual 151	com/viber/voip/HomeActivity:startActivity	(Landroid/content/Intent;)V
    //   409: return
    //   410: aload_1
    //   411: ldc 188
    //   413: iconst_0
    //   414: invokevirtual 177	android/content/Intent:getBooleanExtra	(Ljava/lang/String;Z)Z
    //   417: ifeq -361 -> 56
    //   420: aload_1
    //   421: ldc 188
    //   423: invokevirtual 191	android/content/Intent:removeExtra	(Ljava/lang/String;)V
    //   426: aload_0
    //   427: aload_1
    //   428: invokevirtual 142	com/viber/voip/HomeActivity:setIntent	(Landroid/content/Intent;)V
    //   431: aload_0
    //   432: new 43	android/content/Intent
    //   435: dup
    //   436: ldc 193
    //   438: ldc 195
    //   440: ldc 197
    //   442: aconst_null
    //   443: invokestatic 203	android/net/Uri:fromParts	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    //   446: invokespecial 206	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   449: invokevirtual 151	com/viber/voip/HomeActivity:startActivity	(Landroid/content/Intent;)V
    //   452: aload_0
    //   453: invokevirtual 209	com/viber/voip/HomeActivity:finish	()V
    //   456: return
    //   457: astore 15
    //   459: aload 20
    //   461: astore_2
    //   462: goto -178 -> 284
    //   465: astore 21
    //   467: aload 20
    //   469: astore 17
    //   471: ldc2_w 128
    //   474: lstore 18
    //   476: goto -208 -> 268
    //   479: astore 24
    //   481: lload_3
    //   482: lstore 18
    //   484: aload 20
    //   486: astore 17
    //   488: goto -220 -> 268
    //   491: ldc2_w 128
    //   494: lstore_3
    //   495: aconst_null
    //   496: astore 5
    //   498: goto -309 -> 189
    //   501: ldc2_w 128
    //   504: lstore_3
    //   505: aconst_null
    //   506: astore 5
    //   508: goto -314 -> 194
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	511	0	paramHomeActivity	HomeActivity
    //   0	511	1	paramIntent	Intent
    //   1	461	2	localObject1	Object
    //   174	331	3	l1	long
    //   187	320	5	str1	String
    //   387	18	6	localIntent1	Intent
    //   323	40	8	localIntent2	Intent
    //   239	14	13	localIntent3	Intent
    //   282	7	15	localObject2	Object
    //   457	1	15	localObject3	Object
    //   258	1	16	localException1	Exception
    //   261	226	17	localCursor1	android.database.Cursor
    //   266	217	18	l2	long
    //   142	343	20	localCursor2	android.database.Cursor
    //   465	1	21	localException2	Exception
    //   170	3	22	l3	long
    //   479	1	24	localException3	Exception
    //   183	3	25	str2	String
    // Exception table:
    //   from	to	target	type
    //   114	144	258	java/lang/Exception
    //   114	144	282	finally
    //   149	172	457	finally
    //   175	185	457	finally
    //   149	172	465	java/lang/Exception
    //   175	185	479	java/lang/Exception
  }
  
  private static void a(String paramString) {}
  
  public static boolean a(Activity paramActivity, Intent paramIntent, boolean paramBoolean)
  {
    String str1 = paramIntent.getAction();
    Uri localUri = paramIntent.getData();
    if (("android.intent.action.VIEW".equals(str1)) && (localUri != null))
    {
      String str2 = paramIntent.getData().getSchemeSpecificPart();
      hd.a(ViberApplication.getInstance(), str2, new bn(paramIntent, paramActivity, paramBoolean));
      return true;
    }
    return false;
  }
  
  public static boolean a(Intent paramIntent)
  {
    return (paramIntent != null) && ("com.viber.voip.action.YOU".equals(paramIntent.getAction()));
  }
  
  public static boolean b(Intent paramIntent)
  {
    return (paramIntent != null) && (("com.viber.voip.action.VIEW_CONTACT".equals(paramIntent.getAction())) || ("com.viber.voip.action.VIEW_CALL_LOG".equals(paramIntent.getAction())));
  }
  
  private static boolean b(HomeActivity paramHomeActivity, Intent paramIntent)
  {
    Object localObject = null;
    String str1 = paramIntent.getType();
    ArrayList localArrayList2;
    ArrayList localArrayList3;
    if ((!TextUtils.isEmpty(str1)) && (ImageManager.b(str1)))
    {
      localArrayList2 = paramIntent.getParcelableArrayListExtra("android.intent.extra.STREAM");
      if (localArrayList2 != null) {
        break label306;
      }
      localArrayList3 = new ArrayList();
      Uri localUri2 = (Uri)paramIntent.getParcelableExtra("android.intent.extra.STREAM");
      if (localUri2 != null) {
        localArrayList3.add(localUri2);
      }
    }
    for (;;)
    {
      Iterator localIterator = localArrayList3.iterator();
      for (int j = 0; localIterator.hasNext(); j++) {
        localArrayList3.set(j, a(paramHomeActivity, (Uri)localIterator.next(), str1));
      }
      int i;
      ArrayList localArrayList1;
      String str2;
      if (localArrayList3.size() > 0)
      {
        i = 1;
        localArrayList1 = localArrayList3;
        str2 = null;
      }
      for (;;)
      {
        label134:
        Uri localUri1;
        if (i != 0)
        {
          paramHomeActivity.setIntent(new Intent("com.viber.voip.action.MESSAGES"));
          paramHomeActivity.startActivity(new Intent(paramHomeActivity, HomeActivity.class));
          Intent localIntent = new Intent("com.viber.voip.action.ACTION_FORWARD");
          if (localArrayList1 != null) {
            localIntent.putParcelableArrayListExtra("share_images_uri", localArrayList1);
          }
          for (;;)
          {
            paramHomeActivity.startActivity(localIntent);
            return true;
            i = 0;
            break;
            localUri1 = (Uri)paramIntent.getParcelableExtra("android.intent.extra.STREAM");
            str2 = paramIntent.getStringExtra("android.intent.extra.TEXT");
            if ((localUri1 == null) && (TextUtils.isEmpty(str2))) {
              break label294;
            }
            localObject = a(paramHomeActivity, localUri1, str1);
            i = 1;
            localArrayList1 = null;
            break label134;
            if (localObject != null) {
              localIntent.putExtra("share_uri", ((Uri)localObject).toString());
            } else {
              localIntent.putExtra("share_text", str2);
            }
          }
        }
        return false;
        label294:
        localObject = localUri1;
        i = 0;
        localArrayList1 = null;
      }
      label306:
      localArrayList3 = localArrayList2;
    }
  }
  
  public static boolean c(Intent paramIntent)
  {
    return (paramIntent != null) && ("com.viber.voip.action.CONVERSATION".equals(paramIntent.getAction()));
  }
  
  public static boolean d(Intent paramIntent)
  {
    return (paramIntent != null) && ("com.viber.voip.action.SETTINGS".equals(paramIntent.getAction()));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.bm
 * JD-Core Version:    0.7.0.1
 */