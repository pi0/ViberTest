package com.viber.voip.messages.orm.manager;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Build.VERSION;
import com.viber.voip.messages.orm.annotation.ViberEntityField;
import com.viber.voip.messages.orm.entity.Entity;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ViberEntityManager
{
  private static final String LOG_TAG = ViberEntityManager.class.getSimpleName();
  private static final Map<Class<?>, Object> defaultValues;
  private static final Map<Class<?>, ViberEntityManager.EntityMapping> entitiesMapping = new HashMap();
  
  static
  {
    defaultValues = new HashMap();
    defaultValues.put(String.class, "");
    defaultValues.put(Integer.class, Integer.valueOf(0));
    defaultValues.put(Integer.TYPE, Integer.valueOf(0));
    defaultValues.put(Long.class, Long.valueOf(0L));
    defaultValues.put(Long.TYPE, Long.valueOf(0L));
    defaultValues.put(Boolean.class, Boolean.valueOf(false));
    defaultValues.put(Boolean.TYPE, Boolean.valueOf(false));
    defaultValues.put(Double.class, Double.valueOf(0.0D));
    defaultValues.put(Double.TYPE, Double.valueOf(0.0D));
    defaultValues.put(Float.class, Float.valueOf(0.0F));
    defaultValues.put(Float.TYPE, Float.valueOf(0.0F));
  }
  
  private static void findProjection(Class<?> paramClass, List<String> paramList, Set<String> paramSet)
  {
    Field[] arrayOfField = paramClass.getDeclaredFields();
    int i = arrayOfField.length;
    for (int j = 0; j < i; j++)
    {
      ViberEntityField localViberEntityField = (ViberEntityField)arrayOfField[j].getAnnotation(ViberEntityField.class);
      if (localViberEntityField != null)
      {
        String str = localViberEntityField.projection();
        if (Build.VERSION.SDK_INT >= localViberEntityField.api())
        {
          paramList.add(str);
          if (localViberEntityField.uiRelated()) {
            paramSet.add(str);
          }
        }
      }
    }
    Class localClass = paramClass.getSuperclass();
    if (localClass != null) {
      findProjection(localClass, paramList, paramSet);
    }
  }
  
  public static ContentValues getContentValues(Class<?> paramClass, Cursor paramCursor, int paramInt)
  {
    localContentValues = new ContentValues();
    ViberEntityManager.EntityMapping localEntityMapping = getFieldsData(paramClass);
    int i = 0;
    try
    {
      while (i < localEntityMapping.projections.length)
      {
        String str = localEntityMapping.projections[i];
        getFromCursor((Class)localEntityMapping.projectionTypes.get(str), localContentValues, paramCursor, str, i + paramInt);
        i++;
      }
      return localContentValues;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      log("setCursor: IllegalArgumentException", localIllegalArgumentException);
      return localContentValues;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      log("setCursor: IllegalAccessException", localIllegalAccessException);
      return localContentValues;
    }
    catch (SecurityException localSecurityException)
    {
      log("setCursor: SecurityException", localSecurityException);
    }
  }
  
  private static Object getDefaulfAgrument(Method paramMethod)
  {
    Class localClass = paramMethod.getParameterTypes()[0];
    return defaultValues.get(localClass);
  }
  
  public static ViberEntityManager.EntityMapping getEntityMapping(Class<?> paramClass)
  {
    return getFieldsData(paramClass);
  }
  
  private static ViberEntityManager.EntityMapping getFieldsData(Class<?> paramClass)
  {
    if (!entitiesMapping.containsKey(paramClass)) {
      initEntitityData(paramClass);
    }
    if ((!entitiesMapping.containsKey(paramClass)) && (!Object.class.equals(paramClass.getSuperclass()))) {
      return getFieldsData(paramClass.getSuperclass());
    }
    return (ViberEntityManager.EntityMapping)entitiesMapping.get(paramClass);
  }
  
  private static void getFromCursor(Class<?> paramClass, ContentValues paramContentValues, Cursor paramCursor, String paramString, int paramInt)
  {
    int i = 1;
    if (paramClass.equals(String.class)) {
      paramContentValues.put(paramString, paramCursor.getString(paramInt));
    }
    do
    {
      return;
      if ((paramClass.equals(Long.TYPE)) || (paramClass.equals(Long.class)))
      {
        paramContentValues.put(paramString, Long.valueOf(paramCursor.getLong(paramInt)));
        return;
      }
      if ((paramClass.equals(Integer.TYPE)) || (paramClass.equals(Integer.class)))
      {
        paramContentValues.put(paramString, Integer.valueOf(paramCursor.getInt(paramInt)));
        return;
      }
      if ((paramClass.equals(Boolean.TYPE)) || (paramClass.equals(Boolean.class)))
      {
        if (paramCursor.getInt(paramInt) == i) {}
        for (;;)
        {
          paramContentValues.put(paramString, Boolean.valueOf(i));
          return;
          int j = 0;
        }
      }
      if ((paramClass.equals(Double.TYPE)) || (paramClass.equals(Double.class)))
      {
        paramContentValues.put(paramString, Double.valueOf(paramCursor.getDouble(paramInt)));
        return;
      }
      if ((paramClass.equals(Float.TYPE)) || (paramClass.equals(Float.class)))
      {
        paramContentValues.put(paramString, Float.valueOf(paramCursor.getFloat(paramInt)));
        return;
      }
    } while ((!paramClass.equals(Short.TYPE)) && (!paramClass.equals(Short.class)));
    paramContentValues.put(paramString, Short.valueOf(paramCursor.getShort(paramInt)));
  }
  
  public static int getProjectionColumn(Class<?> paramClass, String paramString)
  {
    return getFieldsData(paramClass).getProjectionColumn(paramString);
  }
  
  public static String[] getProjections(Entity paramEntity)
  {
    return getFieldsData(paramEntity.getClass()).projections;
  }
  
  public static String[] getProjections(Class<?> paramClass)
  {
    return getFieldsData(paramClass).projections;
  }
  
  public static String getTableName(Class<?> paramClass)
  {
    return getFieldsData(paramClass).tableName;
  }
  
  /* Error */
  public static void initEntitityData(Class<?> paramClass)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 20	com/viber/voip/messages/orm/manager/ViberEntityManager:entitiesMapping	Ljava/util/Map;
    //   6: aload_0
    //   7: invokeinterface 175 2 0
    //   12: istore_2
    //   13: iload_2
    //   14: ifeq +7 -> 21
    //   17: ldc 2
    //   19: monitorexit
    //   20: return
    //   21: aload_0
    //   22: ldc_w 259
    //   25: invokevirtual 260	java/lang/Class:getAnnotation	(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    //   28: checkcast 259	com/viber/voip/messages/orm/annotation/ViberEntity
    //   31: astore_3
    //   32: aload_3
    //   33: ifnull +544 -> 577
    //   36: aload_3
    //   37: invokeinterface 264 1 0
    //   42: astore 4
    //   44: getstatic 270	com/viber/voip/messages/orm/annotation/ViberEntityType:ContentValues	Lcom/viber/voip/messages/orm/annotation/ViberEntityType;
    //   47: astore 5
    //   49: aload 4
    //   51: aload 5
    //   53: if_acmpne +524 -> 577
    //   56: aload_0
    //   57: invokevirtual 274	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   60: checkcast 276	com/viber/voip/messages/orm/entity/Entity
    //   63: astore 19
    //   65: new 15	java/util/HashMap
    //   68: dup
    //   69: invokespecial 18	java/util/HashMap:<init>	()V
    //   72: astore 20
    //   74: aload_0
    //   75: invokevirtual 280	java/lang/Class:getDeclaredMethods	()[Ljava/lang/reflect/Method;
    //   78: astore 21
    //   80: aload 21
    //   82: arraylength
    //   83: istore 22
    //   85: iconst_0
    //   86: istore 23
    //   88: iload 23
    //   90: iload 22
    //   92: if_icmpge +250 -> 342
    //   95: aload 21
    //   97: iload 23
    //   99: aaload
    //   100: astore 24
    //   102: aload 24
    //   104: invokevirtual 283	java/lang/reflect/Method:getName	()Ljava/lang/String;
    //   107: ldc_w 285
    //   110: invokevirtual 289	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   113: ifeq +34 -> 147
    //   116: aload 24
    //   118: iconst_1
    //   119: invokevirtual 293	java/lang/reflect/Method:setAccessible	(Z)V
    //   122: iconst_1
    //   123: anewarray 4	java/lang/Object
    //   126: astore 28
    //   128: aload 28
    //   130: iconst_0
    //   131: aload 24
    //   133: invokestatic 295	com/viber/voip/messages/orm/manager/ViberEntityManager:getDefaulfAgrument	(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    //   136: aastore
    //   137: aload 24
    //   139: aload 19
    //   141: aload 28
    //   143: invokevirtual 299	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   146: pop
    //   147: iinc 23 1
    //   150: goto -62 -> 88
    //   153: astore 27
    //   155: new 301	java/lang/StringBuilder
    //   158: dup
    //   159: invokespecial 302	java/lang/StringBuilder:<init>	()V
    //   162: ldc_w 304
    //   165: invokevirtual 308	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: aload_0
    //   169: invokevirtual 311	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   172: ldc_w 313
    //   175: invokevirtual 308	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   178: aload 24
    //   180: invokevirtual 311	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   183: invokevirtual 316	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   186: aload 27
    //   188: invokestatic 159	com/viber/voip/messages/orm/manager/ViberEntityManager:log	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   191: goto -44 -> 147
    //   194: astore 18
    //   196: new 301	java/lang/StringBuilder
    //   199: dup
    //   200: invokespecial 302	java/lang/StringBuilder:<init>	()V
    //   203: ldc_w 318
    //   206: invokevirtual 308	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   209: aload_0
    //   210: invokevirtual 311	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   213: invokevirtual 316	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   216: aload 18
    //   218: invokestatic 159	com/viber/voip/messages/orm/manager/ViberEntityManager:log	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   221: goto -204 -> 17
    //   224: astore_1
    //   225: ldc 2
    //   227: monitorexit
    //   228: aload_1
    //   229: athrow
    //   230: astore 26
    //   232: new 301	java/lang/StringBuilder
    //   235: dup
    //   236: invokespecial 302	java/lang/StringBuilder:<init>	()V
    //   239: ldc_w 320
    //   242: invokevirtual 308	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: aload_0
    //   246: invokevirtual 311	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   249: ldc_w 313
    //   252: invokevirtual 308	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: aload 24
    //   257: invokevirtual 311	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   260: invokevirtual 316	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   263: aload 26
    //   265: invokestatic 159	com/viber/voip/messages/orm/manager/ViberEntityManager:log	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   268: goto -121 -> 147
    //   271: astore 17
    //   273: new 301	java/lang/StringBuilder
    //   276: dup
    //   277: invokespecial 302	java/lang/StringBuilder:<init>	()V
    //   280: ldc_w 320
    //   283: invokevirtual 308	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   286: aload_0
    //   287: invokevirtual 311	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   290: invokevirtual 316	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   293: aload 17
    //   295: invokestatic 159	com/viber/voip/messages/orm/manager/ViberEntityManager:log	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   298: goto -281 -> 17
    //   301: astore 25
    //   303: new 301	java/lang/StringBuilder
    //   306: dup
    //   307: invokespecial 302	java/lang/StringBuilder:<init>	()V
    //   310: ldc_w 322
    //   313: invokevirtual 308	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: aload_0
    //   317: invokevirtual 311	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   320: ldc_w 313
    //   323: invokevirtual 308	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: aload 24
    //   328: invokevirtual 311	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   331: invokevirtual 316	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   334: aload 25
    //   336: invokestatic 159	com/viber/voip/messages/orm/manager/ViberEntityManager:log	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   339: goto -192 -> 147
    //   342: aload 19
    //   344: invokeinterface 325 1 0
    //   349: invokevirtual 329	android/content/ContentValues:valueSet	()Ljava/util/Set;
    //   352: astore 30
    //   354: iconst_1
    //   355: aload 30
    //   357: invokeinterface 332 1 0
    //   362: iadd
    //   363: anewarray 24	java/lang/String
    //   366: astore 31
    //   368: aload 31
    //   370: iconst_0
    //   371: ldc_w 334
    //   374: aastore
    //   375: aload 20
    //   377: ldc_w 334
    //   380: ldc 44
    //   382: invokeinterface 32 3 0
    //   387: pop
    //   388: aload 30
    //   390: invokeinterface 338 1 0
    //   395: astore 33
    //   397: iconst_1
    //   398: istore 34
    //   400: aload 33
    //   402: invokeinterface 343 1 0
    //   407: ifeq +68 -> 475
    //   410: aload 33
    //   412: invokeinterface 346 1 0
    //   417: checkcast 348	java/util/Map$Entry
    //   420: astore 40
    //   422: iload 34
    //   424: iconst_1
    //   425: iadd
    //   426: istore 41
    //   428: aload 31
    //   430: iload 34
    //   432: aload 40
    //   434: invokeinterface 351 1 0
    //   439: checkcast 24	java/lang/String
    //   442: aastore
    //   443: aload 20
    //   445: aload 40
    //   447: invokeinterface 351 1 0
    //   452: aload 40
    //   454: invokeinterface 354 1 0
    //   459: invokevirtual 245	java/lang/Object:getClass	()Ljava/lang/Class;
    //   462: invokeinterface 32 3 0
    //   467: pop
    //   468: iload 41
    //   470: istore 34
    //   472: goto -72 -> 400
    //   475: aload_0
    //   476: ldc_w 356
    //   479: invokevirtual 260	java/lang/Class:getAnnotation	(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    //   482: checkcast 356	com/viber/voip/messages/orm/annotation/ViberCacheId
    //   485: astore 35
    //   487: aconst_null
    //   488: astore 36
    //   490: aload 35
    //   492: ifnull +12 -> 504
    //   495: aload 35
    //   497: invokeinterface 357 1 0
    //   502: astore 36
    //   504: iconst_2
    //   505: anewarray 4	java/lang/Object
    //   508: astore 37
    //   510: aload 37
    //   512: iconst_0
    //   513: aload_3
    //   514: invokeinterface 360 1 0
    //   519: aastore
    //   520: aload 37
    //   522: iconst_1
    //   523: aload_3
    //   524: invokeinterface 363 1 0
    //   529: aastore
    //   530: ldc_w 365
    //   533: aload 37
    //   535: invokestatic 369	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   538: invokestatic 375	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   541: astore 38
    //   543: getstatic 20	com/viber/voip/messages/orm/manager/ViberEntityManager:entitiesMapping	Ljava/util/Map;
    //   546: aload_0
    //   547: new 138	com/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping
    //   550: dup
    //   551: aload 31
    //   553: aload_3
    //   554: invokeinterface 363 1 0
    //   559: aload 38
    //   561: aload 36
    //   563: aload 20
    //   565: invokespecial 378	com/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping:<init>	([Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    //   568: invokeinterface 32 3 0
    //   573: pop
    //   574: goto -557 -> 17
    //   577: aload_3
    //   578: ifnull -561 -> 17
    //   581: aload_3
    //   582: invokeinterface 264 1 0
    //   587: getstatic 381	com/viber/voip/messages/orm/annotation/ViberEntityType:Standard	Lcom/viber/voip/messages/orm/annotation/ViberEntityType;
    //   590: if_acmpne -573 -> 17
    //   593: new 383	java/util/HashSet
    //   596: dup
    //   597: invokespecial 384	java/util/HashSet:<init>	()V
    //   600: astore 6
    //   602: new 386	java/util/ArrayList
    //   605: dup
    //   606: invokespecial 387	java/util/ArrayList:<init>	()V
    //   609: astore 7
    //   611: aload_0
    //   612: invokevirtual 274	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   615: astore 15
    //   617: aload 15
    //   619: instanceof 389
    //   622: ifeq +147 -> 769
    //   625: aload 15
    //   627: checkcast 389	com/viber/voip/messages/orm/manager/EntityHelper
    //   630: astore 16
    //   632: aload 16
    //   634: astore 9
    //   636: aload_0
    //   637: aload 7
    //   639: aload 6
    //   641: invokestatic 121	com/viber/voip/messages/orm/manager/ViberEntityManager:findProjection	(Ljava/lang/Class;Ljava/util/List;Ljava/util/Set;)V
    //   644: aload_0
    //   645: ldc_w 356
    //   648: invokevirtual 260	java/lang/Class:getAnnotation	(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    //   651: checkcast 356	com/viber/voip/messages/orm/annotation/ViberCacheId
    //   654: astore 10
    //   656: aload 10
    //   658: ifnull +105 -> 763
    //   661: aload 10
    //   663: invokeinterface 357 1 0
    //   668: astore 11
    //   670: iconst_2
    //   671: anewarray 4	java/lang/Object
    //   674: astore 12
    //   676: aload 12
    //   678: iconst_0
    //   679: aload_3
    //   680: invokeinterface 360 1 0
    //   685: aastore
    //   686: aload 12
    //   688: iconst_1
    //   689: aload_3
    //   690: invokeinterface 363 1 0
    //   695: aastore
    //   696: ldc_w 365
    //   699: aload 12
    //   701: invokestatic 369	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   704: invokestatic 375	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   707: astore 13
    //   709: getstatic 20	com/viber/voip/messages/orm/manager/ViberEntityManager:entitiesMapping	Ljava/util/Map;
    //   712: aload_0
    //   713: new 138	com/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping
    //   716: dup
    //   717: aload 7
    //   719: aload 6
    //   721: aload 9
    //   723: aload_3
    //   724: invokeinterface 363 1 0
    //   729: aload 13
    //   731: aload 11
    //   733: invokespecial 392	com/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping:<init>	(Ljava/util/List;Ljava/util/Set;Lcom/viber/voip/messages/orm/manager/EntityHelper;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    //   736: invokeinterface 32 3 0
    //   741: pop
    //   742: goto -725 -> 17
    //   745: astore 8
    //   747: aload 8
    //   749: invokevirtual 395	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   752: aload 8
    //   754: invokestatic 159	com/viber/voip/messages/orm/manager/ViberEntityManager:log	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   757: aconst_null
    //   758: astore 9
    //   760: goto -124 -> 636
    //   763: aconst_null
    //   764: astore 11
    //   766: goto -96 -> 670
    //   769: aconst_null
    //   770: astore 16
    //   772: goto -140 -> 632
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	775	0	paramClass	Class<?>
    //   224	5	1	localObject1	Object
    //   12	2	2	bool	boolean
    //   31	693	3	localViberEntity	com.viber.voip.messages.orm.annotation.ViberEntity
    //   42	8	4	localViberEntityType1	com.viber.voip.messages.orm.annotation.ViberEntityType
    //   47	5	5	localViberEntityType2	com.viber.voip.messages.orm.annotation.ViberEntityType
    //   600	120	6	localHashSet	java.util.HashSet
    //   609	109	7	localArrayList	java.util.ArrayList
    //   745	8	8	localException	Exception
    //   634	125	9	localEntityHelper1	EntityHelper
    //   654	8	10	localViberCacheId1	com.viber.voip.messages.orm.annotation.ViberCacheId
    //   668	97	11	str1	String
    //   674	26	12	arrayOfObject1	Object[]
    //   707	23	13	localUri1	android.net.Uri
    //   615	11	15	localObject2	Object
    //   630	141	16	localEntityHelper2	EntityHelper
    //   271	23	17	localIllegalAccessException1	IllegalAccessException
    //   194	23	18	localInstantiationException	java.lang.InstantiationException
    //   63	280	19	localEntity	Entity
    //   72	492	20	localHashMap	HashMap
    //   78	18	21	arrayOfMethod	Method[]
    //   83	10	22	i	int
    //   86	62	23	j	int
    //   100	227	24	localMethod	Method
    //   301	34	25	localInvocationTargetException	java.lang.reflect.InvocationTargetException
    //   230	34	26	localIllegalAccessException2	IllegalAccessException
    //   153	34	27	localIllegalArgumentException	IllegalArgumentException
    //   126	16	28	arrayOfObject2	Object[]
    //   352	37	30	localSet	Set
    //   366	186	31	arrayOfString	String[]
    //   395	16	33	localIterator	java.util.Iterator
    //   398	73	34	k	int
    //   485	11	35	localViberCacheId2	com.viber.voip.messages.orm.annotation.ViberCacheId
    //   488	74	36	str2	String
    //   508	26	37	arrayOfObject3	Object[]
    //   541	19	38	localUri2	android.net.Uri
    //   420	33	40	localEntry	java.util.Map.Entry
    //   426	43	41	m	int
    // Exception table:
    //   from	to	target	type
    //   122	147	153	java/lang/IllegalArgumentException
    //   56	85	194	java/lang/InstantiationException
    //   95	122	194	java/lang/InstantiationException
    //   122	147	194	java/lang/InstantiationException
    //   155	191	194	java/lang/InstantiationException
    //   232	268	194	java/lang/InstantiationException
    //   303	339	194	java/lang/InstantiationException
    //   342	397	194	java/lang/InstantiationException
    //   400	422	194	java/lang/InstantiationException
    //   428	468	194	java/lang/InstantiationException
    //   475	487	194	java/lang/InstantiationException
    //   495	504	194	java/lang/InstantiationException
    //   504	574	194	java/lang/InstantiationException
    //   3	13	224	finally
    //   21	32	224	finally
    //   36	49	224	finally
    //   56	85	224	finally
    //   95	122	224	finally
    //   122	147	224	finally
    //   155	191	224	finally
    //   196	221	224	finally
    //   232	268	224	finally
    //   273	298	224	finally
    //   303	339	224	finally
    //   342	397	224	finally
    //   400	422	224	finally
    //   428	468	224	finally
    //   475	487	224	finally
    //   495	504	224	finally
    //   504	574	224	finally
    //   581	611	224	finally
    //   611	632	224	finally
    //   636	656	224	finally
    //   661	670	224	finally
    //   670	742	224	finally
    //   747	757	224	finally
    //   122	147	230	java/lang/IllegalAccessException
    //   56	85	271	java/lang/IllegalAccessException
    //   95	122	271	java/lang/IllegalAccessException
    //   155	191	271	java/lang/IllegalAccessException
    //   232	268	271	java/lang/IllegalAccessException
    //   303	339	271	java/lang/IllegalAccessException
    //   342	397	271	java/lang/IllegalAccessException
    //   400	422	271	java/lang/IllegalAccessException
    //   428	468	271	java/lang/IllegalAccessException
    //   475	487	271	java/lang/IllegalAccessException
    //   495	504	271	java/lang/IllegalAccessException
    //   504	574	271	java/lang/IllegalAccessException
    //   122	147	301	java/lang/reflect/InvocationTargetException
    //   611	632	745	java/lang/Exception
  }
  
  protected static void log(String paramString) {}
  
  protected static void log(String paramString, Exception paramException) {}
  
  public static void setCursor(Class<?> paramClass, Cursor paramCursor)
  {
    getContentValues(paramClass, paramCursor, 0);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.manager.ViberEntityManager
 * JD-Core Version:    0.7.0.1
 */