package com.viber.voip.settings;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

public class n
  implements SharedPreferences, SharedPreferences.Editor
{
  AtomicReference<l> a = new AtomicReference();
  Set<String> b = new HashSet();
  protected Map<SharedPreferences.OnSharedPreferenceChangeListener, m> c = new HashMap();
  
  public n(l paraml, Set<String> paramSet)
  {
    this.a.set(paraml);
    this.b.addAll(paramSet);
  }
  
  /* Error */
  public static boolean a(android.preference.PreferenceActivity paramPreferenceActivity, l paraml, Set<String> paramSet)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: ldc 58
    //   5: ldc 60
    //   7: invokevirtual 66	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   10: astore 9
    //   12: aload 9
    //   14: iconst_1
    //   15: invokevirtual 72	java/lang/reflect/Field:setAccessible	(Z)V
    //   18: aload 9
    //   20: aload_0
    //   21: invokevirtual 76	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   24: checkcast 78	android/preference/PreferenceManager
    //   27: astore 10
    //   29: ldc 78
    //   31: ldc 80
    //   33: invokevirtual 66	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   36: astore 11
    //   38: aload 11
    //   40: iconst_1
    //   41: invokevirtual 72	java/lang/reflect/Field:setAccessible	(Z)V
    //   44: aload 11
    //   46: aload 10
    //   48: new 2	com/viber/voip/settings/n
    //   51: dup
    //   52: aload_1
    //   53: aload_2
    //   54: invokespecial 82	com/viber/voip/settings/n:<init>	(Lcom/viber/voip/settings/l;Ljava/util/Set;)V
    //   57: invokevirtual 85	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   60: aload 10
    //   62: invokevirtual 89	android/preference/PreferenceManager:getSharedPreferences	()Landroid/content/SharedPreferences;
    //   65: pop
    //   66: iconst_1
    //   67: istore 5
    //   69: ldc 2
    //   71: monitorexit
    //   72: iload 5
    //   74: ireturn
    //   75: astore 8
    //   77: iconst_0
    //   78: istore 5
    //   80: goto -11 -> 69
    //   83: astore 7
    //   85: iconst_0
    //   86: istore 5
    //   88: goto -19 -> 69
    //   91: astore 6
    //   93: iconst_0
    //   94: istore 5
    //   96: goto -27 -> 69
    //   99: astore 4
    //   101: iconst_0
    //   102: istore 5
    //   104: goto -35 -> 69
    //   107: astore_3
    //   108: ldc 2
    //   110: monitorexit
    //   111: aload_3
    //   112: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	113	0	paramPreferenceActivity	android.preference.PreferenceActivity
    //   0	113	1	paraml	l
    //   0	113	2	paramSet	Set<String>
    //   107	5	3	localObject	Object
    //   99	1	4	localNullPointerException	java.lang.NullPointerException
    //   67	36	5	bool	boolean
    //   91	1	6	localIllegalAccessException	java.lang.IllegalAccessException
    //   83	1	7	localIllegalArgumentException	java.lang.IllegalArgumentException
    //   75	1	8	localNoSuchFieldException	java.lang.NoSuchFieldException
    //   10	9	9	localField1	java.lang.reflect.Field
    //   27	34	10	localPreferenceManager	android.preference.PreferenceManager
    //   36	9	11	localField2	java.lang.reflect.Field
    // Exception table:
    //   from	to	target	type
    //   3	66	75	java/lang/NoSuchFieldException
    //   3	66	83	java/lang/IllegalArgumentException
    //   3	66	91	java/lang/IllegalAccessException
    //   3	66	99	java/lang/NullPointerException
    //   3	66	107	finally
  }
  
  /* Error */
  public static boolean a(com.viber.voip.settings.ui.bg parambg, l paraml, Set<String> paramSet)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: ldc 2
    //   4: monitorenter
    //   5: ldc 58
    //   7: ldc 60
    //   9: invokevirtual 66	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   12: iconst_1
    //   13: invokevirtual 72	java/lang/reflect/Field:setAccessible	(Z)V
    //   16: aload_0
    //   17: invokevirtual 95	com/viber/voip/settings/ui/bg:c	()Landroid/preference/PreferenceManager;
    //   20: astore 9
    //   22: ldc 78
    //   24: ldc 80
    //   26: invokevirtual 66	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   29: astore 10
    //   31: aload 10
    //   33: iconst_1
    //   34: invokevirtual 72	java/lang/reflect/Field:setAccessible	(Z)V
    //   37: aload 10
    //   39: aload 9
    //   41: new 2	com/viber/voip/settings/n
    //   44: dup
    //   45: aload_1
    //   46: aload_2
    //   47: invokespecial 82	com/viber/voip/settings/n:<init>	(Lcom/viber/voip/settings/l;Ljava/util/Set;)V
    //   50: invokevirtual 85	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   53: aload 9
    //   55: invokevirtual 89	android/preference/PreferenceManager:getSharedPreferences	()Landroid/content/SharedPreferences;
    //   58: pop
    //   59: ldc 2
    //   61: monitorexit
    //   62: iload_3
    //   63: ireturn
    //   64: astore 8
    //   66: iconst_0
    //   67: istore_3
    //   68: goto -9 -> 59
    //   71: astore 7
    //   73: iconst_0
    //   74: istore_3
    //   75: goto -16 -> 59
    //   78: astore 6
    //   80: iconst_0
    //   81: istore_3
    //   82: goto -23 -> 59
    //   85: astore 5
    //   87: iconst_0
    //   88: istore_3
    //   89: goto -30 -> 59
    //   92: astore 4
    //   94: ldc 2
    //   96: monitorexit
    //   97: aload 4
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	parambg	com.viber.voip.settings.ui.bg
    //   0	100	1	paraml	l
    //   0	100	2	paramSet	Set<String>
    //   1	88	3	bool	boolean
    //   92	6	4	localObject	Object
    //   85	1	5	localNullPointerException	java.lang.NullPointerException
    //   78	1	6	localIllegalAccessException	java.lang.IllegalAccessException
    //   71	1	7	localIllegalArgumentException	java.lang.IllegalArgumentException
    //   64	1	8	localNoSuchFieldException	java.lang.NoSuchFieldException
    //   20	34	9	localPreferenceManager	android.preference.PreferenceManager
    //   29	9	10	localField	java.lang.reflect.Field
    // Exception table:
    //   from	to	target	type
    //   5	59	64	java/lang/NoSuchFieldException
    //   5	59	71	java/lang/IllegalArgumentException
    //   5	59	78	java/lang/IllegalAccessException
    //   5	59	85	java/lang/NullPointerException
    //   5	59	92	finally
  }
  
  public void apply() {}
  
  public SharedPreferences.Editor clear()
  {
    ((l)this.a.get()).a(this.b);
    return this;
  }
  
  public boolean commit()
  {
    return false;
  }
  
  public boolean contains(String paramString)
  {
    return ((l)this.a.get()).b(paramString);
  }
  
  public SharedPreferences.Editor edit()
  {
    return this;
  }
  
  public Map<String, ?> getAll()
  {
    return ((l)this.a.get()).b();
  }
  
  public boolean getBoolean(String paramString, boolean paramBoolean)
  {
    return ((l)this.a.get()).b(paramString, paramBoolean);
  }
  
  public float getFloat(String paramString, float paramFloat)
  {
    return ((l)this.a.get()).b(paramString, paramFloat);
  }
  
  public int getInt(String paramString, int paramInt)
  {
    return ((l)this.a.get()).b(paramString, paramInt);
  }
  
  public long getLong(String paramString, long paramLong)
  {
    return ((l)this.a.get()).b(paramString, paramLong);
  }
  
  public String getString(String paramString1, String paramString2)
  {
    return ((l)this.a.get()).b(paramString1, paramString2);
  }
  
  public Set<String> getStringSet(String paramString, Set<String> paramSet)
  {
    return null;
  }
  
  public SharedPreferences.Editor putBoolean(String paramString, boolean paramBoolean)
  {
    ((l)this.a.get()).a(paramString, paramBoolean);
    return this;
  }
  
  public SharedPreferences.Editor putFloat(String paramString, float paramFloat)
  {
    ((l)this.a.get()).a(paramString, paramFloat);
    return this;
  }
  
  public SharedPreferences.Editor putInt(String paramString, int paramInt)
  {
    ((l)this.a.get()).a(paramString, paramInt);
    return this;
  }
  
  public SharedPreferences.Editor putLong(String paramString, long paramLong)
  {
    ((l)this.a.get()).a(paramString, paramLong);
    return this;
  }
  
  public SharedPreferences.Editor putString(String paramString1, String paramString2)
  {
    ((l)this.a.get()).a(paramString1, paramString2);
    return this;
  }
  
  public SharedPreferences.Editor putStringSet(String paramString, Set<String> paramSet)
  {
    return null;
  }
  
  public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
    synchronized (this.c)
    {
      if (!this.c.containsKey(paramOnSharedPreferenceChangeListener))
      {
        o localo = new o(this, paramOnSharedPreferenceChangeListener);
        this.c.put(paramOnSharedPreferenceChangeListener, localo);
        ((l)this.a.get()).a(localo);
      }
      return;
    }
  }
  
  public SharedPreferences.Editor remove(String paramString)
  {
    ((l)this.a.get()).a(paramString);
    return this;
  }
  
  public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
    synchronized (this.c)
    {
      if (this.c.containsKey(paramOnSharedPreferenceChangeListener))
      {
        ((l)this.a.get()).b((m)this.c.get(paramOnSharedPreferenceChangeListener));
        this.c.remove(paramOnSharedPreferenceChangeListener);
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.n
 * JD-Core Version:    0.7.0.1
 */