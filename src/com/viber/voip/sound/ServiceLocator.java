package com.viber.voip.sound;

import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.Method;

abstract class ServiceLocator
{
  private static final String AS_INTERFACE = "asInterface";
  private static final String CHECK_SERVICE_METHOD = "checkService";
  private static final String GET_SERVICE_METHOD = "getService";
  private static final String SERVICE_MANAGER = "android.os.ServiceManager";
  public static final String TAG = ServiceLocator.class.getSimpleName();
  
  /* Error */
  public static final boolean checkService(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: aload_1
    //   5: invokestatic 42	com/viber/voip/sound/ServiceLocator:getServiceManager	()Ljava/lang/Class;
    //   8: invokestatic 46	com/viber/voip/sound/ServiceLocator:getCheckServiceMethod	(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   11: invokestatic 50	com/viber/voip/sound/ServiceLocator:getServiceStub	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    //   14: astore 7
    //   16: iconst_0
    //   17: istore_3
    //   18: aload 7
    //   20: ifnull +5 -> 25
    //   23: iconst_1
    //   24: istore_3
    //   25: ldc 2
    //   27: monitorexit
    //   28: iload_3
    //   29: ireturn
    //   30: astore 6
    //   32: aload 6
    //   34: invokevirtual 53	java/lang/SecurityException:printStackTrace	()V
    //   37: iconst_0
    //   38: istore_3
    //   39: goto -14 -> 25
    //   42: astore 4
    //   44: ldc 2
    //   46: monitorexit
    //   47: aload 4
    //   49: athrow
    //   50: astore 5
    //   52: aload 5
    //   54: invokevirtual 54	java/lang/NoSuchMethodException:printStackTrace	()V
    //   57: iconst_0
    //   58: istore_3
    //   59: goto -34 -> 25
    //   62: astore_2
    //   63: aload_2
    //   64: invokevirtual 55	java/lang/ClassNotFoundException:printStackTrace	()V
    //   67: iconst_0
    //   68: istore_3
    //   69: goto -44 -> 25
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	paramString1	String
    //   0	72	1	paramString2	String
    //   62	2	2	localClassNotFoundException	java.lang.ClassNotFoundException
    //   17	52	3	bool	boolean
    //   42	6	4	localObject1	Object
    //   50	3	5	localNoSuchMethodException	java.lang.NoSuchMethodException
    //   30	3	6	localSecurityException	java.lang.SecurityException
    //   14	5	7	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   3	16	30	java/lang/SecurityException
    //   3	16	42	finally
    //   32	37	42	finally
    //   52	57	42	finally
    //   63	67	42	finally
    //   3	16	50	java/lang/NoSuchMethodException
    //   3	16	62	java/lang/ClassNotFoundException
  }
  
  private static final Method getAsInterfaceMethod(Class<?> paramClass)
  {
    return getDeclaredMethod(paramClass, "asInterface", new Class[] { IBinder.class });
  }
  
  private static final Method getCheckServiceMethod(Class<?> paramClass)
  {
    return getDeclaredMethod(paramClass, "checkService", new Class[] { String.class });
  }
  
  private static final ClassLoader getClassLoader()
  {
    return ServiceLocator.class.getClassLoader();
  }
  
  private static final Method getDeclaredMethod(Class<?> paramClass, String paramString, Class<?>... paramVarArgs)
  {
    Method localMethod = paramClass.getDeclaredMethod(paramString, paramVarArgs);
    if (!localMethod.isAccessible()) {
      localMethod.setAccessible(true);
    }
    return localMethod;
  }
  
  private static final Method getGetServiceMethod(Class<?> paramClass)
  {
    return getDeclaredMethod(paramClass, "getService", new Class[] { String.class });
  }
  
  /* Error */
  public static final Object getService(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: aload_1
    //   5: invokestatic 42	com/viber/voip/sound/ServiceLocator:getServiceManager	()Ljava/lang/Class;
    //   8: invokestatic 85	com/viber/voip/sound/ServiceLocator:getGetServiceMethod	(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   11: invokestatic 50	com/viber/voip/sound/ServiceLocator:getServiceStub	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    //   14: astore 7
    //   16: aload 7
    //   18: astore_3
    //   19: ldc 2
    //   21: monitorexit
    //   22: aload_3
    //   23: areturn
    //   24: astore 6
    //   26: aload 6
    //   28: invokevirtual 53	java/lang/SecurityException:printStackTrace	()V
    //   31: goto +26 -> 57
    //   34: astore 5
    //   36: aload 5
    //   38: invokevirtual 54	java/lang/NoSuchMethodException:printStackTrace	()V
    //   41: goto +16 -> 57
    //   44: astore 4
    //   46: ldc 2
    //   48: monitorexit
    //   49: aload 4
    //   51: athrow
    //   52: astore_2
    //   53: aload_2
    //   54: invokevirtual 55	java/lang/ClassNotFoundException:printStackTrace	()V
    //   57: aconst_null
    //   58: astore_3
    //   59: goto -40 -> 19
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	paramString1	String
    //   0	62	1	paramString2	String
    //   52	2	2	localClassNotFoundException	java.lang.ClassNotFoundException
    //   18	41	3	localObject1	Object
    //   44	6	4	localObject2	Object
    //   34	3	5	localNoSuchMethodException	java.lang.NoSuchMethodException
    //   24	3	6	localSecurityException	java.lang.SecurityException
    //   14	3	7	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   3	16	24	java/lang/SecurityException
    //   3	16	34	java/lang/NoSuchMethodException
    //   3	16	44	finally
    //   26	31	44	finally
    //   36	41	44	finally
    //   53	57	44	finally
    //   3	16	52	java/lang/ClassNotFoundException
  }
  
  private static final Class<?> getServiceManager()
  {
    return getClassLoader().loadClass("android.os.ServiceManager");
  }
  
  private static final Object getServiceStub(Object paramObject, Class<?> paramClass)
  {
    return getAsInterfaceMethod(paramClass).invoke(null, new Object[] { paramObject });
  }
  
  private static final Object getServiceStub(String paramString1, String paramString2, Method paramMethod)
  {
    try
    {
      Object localObject3 = getServiceStubInternal(paramString1, paramString2, paramMethod);
      localObject2 = localObject3;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.e(TAG, "", localException);
        Object localObject2 = null;
      }
    }
    finally {}
    return localObject2;
  }
  
  private static final Class<?> getServiceStubClass(String paramString)
  {
    return getClassLoader().loadClass(paramString);
  }
  
  /* Error */
  private static final Object getServiceStubInternal(String paramString1, String paramString2, Method paramMethod)
  {
    // Byte code:
    //   0: aload_2
    //   1: aconst_null
    //   2: iconst_1
    //   3: anewarray 4	java/lang/Object
    //   6: dup
    //   7: iconst_0
    //   8: aload_0
    //   9: aastore
    //   10: invokevirtual 99	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   13: astore 6
    //   15: aload 6
    //   17: astore 5
    //   19: aload 5
    //   21: ifnonnull +14 -> 35
    //   24: aconst_null
    //   25: areturn
    //   26: astore 4
    //   28: iconst_0
    //   29: ifeq -5 -> 24
    //   32: aconst_null
    //   33: astore 5
    //   35: aload 5
    //   37: aload_1
    //   38: invokestatic 115	com/viber/voip/sound/ServiceLocator:getServiceStubClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   41: invokestatic 117	com/viber/voip/sound/ServiceLocator:getServiceStub	(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    //   44: areturn
    //   45: astore_3
    //   46: iconst_0
    //   47: ifeq -23 -> 24
    //   50: aload_3
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	paramString1	String
    //   0	52	1	paramString2	String
    //   0	52	2	paramMethod	Method
    //   45	6	3	localObject1	Object
    //   26	1	4	localException	Exception
    //   17	19	5	localObject2	Object
    //   13	3	6	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   0	15	26	java/lang/Exception
    //   0	15	45	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.ServiceLocator
 * JD-Core Version:    0.7.0.1
 */