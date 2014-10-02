package com.nineoldandroids.animation;

import android.util.Log;
import com.nineoldandroids.util.Property;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock;

public class PropertyValuesHolder
  implements Cloneable
{
  private static Class[] DOUBLE_VARIANTS;
  private static Class[] FLOAT_VARIANTS;
  private static Class[] INTEGER_VARIANTS;
  private static final TypeEvaluator sFloatEvaluator;
  private static final HashMap<Class, HashMap<String, Method>> sGetterPropertyMap = new HashMap();
  private static final TypeEvaluator sIntEvaluator = new IntEvaluator();
  private static final HashMap<Class, HashMap<String, Method>> sSetterPropertyMap;
  private Object mAnimatedValue;
  private TypeEvaluator mEvaluator;
  private Method mGetter = null;
  KeyframeSet mKeyframeSet = null;
  protected Property mProperty;
  final ReentrantReadWriteLock mPropertyMapLock = new ReentrantReadWriteLock();
  String mPropertyName;
  Method mSetter = null;
  final Object[] mTmpValueArray = new Object[1];
  Class mValueType;
  
  static
  {
    sFloatEvaluator = new FloatEvaluator();
    Class[] arrayOfClass1 = new Class[6];
    arrayOfClass1[0] = Float.TYPE;
    arrayOfClass1[1] = Float.class;
    arrayOfClass1[2] = Double.TYPE;
    arrayOfClass1[3] = Integer.TYPE;
    arrayOfClass1[4] = Double.class;
    arrayOfClass1[5] = Integer.class;
    FLOAT_VARIANTS = arrayOfClass1;
    Class[] arrayOfClass2 = new Class[6];
    arrayOfClass2[0] = Integer.TYPE;
    arrayOfClass2[1] = Integer.class;
    arrayOfClass2[2] = Float.TYPE;
    arrayOfClass2[3] = Double.TYPE;
    arrayOfClass2[4] = Float.class;
    arrayOfClass2[5] = Double.class;
    INTEGER_VARIANTS = arrayOfClass2;
    Class[] arrayOfClass3 = new Class[6];
    arrayOfClass3[0] = Double.TYPE;
    arrayOfClass3[1] = Double.class;
    arrayOfClass3[2] = Float.TYPE;
    arrayOfClass3[3] = Integer.TYPE;
    arrayOfClass3[4] = Float.class;
    arrayOfClass3[5] = Integer.class;
    DOUBLE_VARIANTS = arrayOfClass3;
    sSetterPropertyMap = new HashMap();
  }
  
  private PropertyValuesHolder(Property paramProperty)
  {
    this.mProperty = paramProperty;
    if (paramProperty != null) {
      this.mPropertyName = paramProperty.getName();
    }
  }
  
  private PropertyValuesHolder(String paramString)
  {
    this.mPropertyName = paramString;
  }
  
  static String getMethodName(String paramString1, String paramString2)
  {
    if ((paramString2 == null) || (paramString2.length() == 0)) {
      return paramString1;
    }
    char c = Character.toUpperCase(paramString2.charAt(0));
    String str = paramString2.substring(1);
    return paramString1 + c + str;
  }
  
  private Method getPropertyFunction(Class paramClass1, String paramString, Class paramClass2)
  {
    Method localMethod1 = null;
    String str = getMethodName(paramString, this.mPropertyName);
    if (paramClass2 == null) {
      try
      {
        Method localMethod4 = paramClass1.getMethod(str, null);
        return localMethod4;
      }
      catch (NoSuchMethodException localNoSuchMethodException3) {}
    }
    try
    {
      Method localMethod3 = paramClass1.getDeclaredMethod(str, null);
      localMethod2 = localMethod3;
      try
      {
        localMethod2.setAccessible(true);
        return localMethod2;
      }
      catch (NoSuchMethodException localNoSuchMethodException5) {}
    }
    catch (NoSuchMethodException localNoSuchMethodException4)
    {
      for (;;)
      {
        Class[] arrayOfClass1;
        Class[] arrayOfClass2;
        int i;
        int j;
        Class localClass;
        Method localMethod2 = null;
      }
    }
    Log.e("PropertyValuesHolder", "Couldn't find no-arg method for property " + this.mPropertyName + ": " + localNoSuchMethodException3);
    return localMethod2;
    arrayOfClass1 = new Class[1];
    if (this.mValueType.equals(Float.class))
    {
      arrayOfClass2 = FLOAT_VARIANTS;
      i = arrayOfClass2.length;
      j = 0;
    }
    for (;;)
    {
      if (j >= i) {
        break label258;
      }
      localClass = arrayOfClass2[j];
      arrayOfClass1[0] = localClass;
      try
      {
        localMethod1 = paramClass1.getMethod(str, arrayOfClass1);
        this.mValueType = localClass;
        return localMethod1;
      }
      catch (NoSuchMethodException localNoSuchMethodException1)
      {
        try
        {
          localMethod1 = paramClass1.getDeclaredMethod(str, arrayOfClass1);
          localMethod1.setAccessible(true);
          this.mValueType = localClass;
          return localMethod1;
        }
        catch (NoSuchMethodException localNoSuchMethodException2)
        {
          j++;
        }
      }
      if (this.mValueType.equals(Integer.class))
      {
        arrayOfClass2 = INTEGER_VARIANTS;
        break;
      }
      if (this.mValueType.equals(Double.class))
      {
        arrayOfClass2 = DOUBLE_VARIANTS;
        break;
      }
      arrayOfClass2 = new Class[1];
      arrayOfClass2[0] = this.mValueType;
      break;
    }
    label258:
    Log.e("PropertyValuesHolder", "Couldn't find setter/getter for property " + this.mPropertyName + " with value type " + this.mValueType);
    return localMethod1;
  }
  
  public static PropertyValuesHolder ofFloat(Property<?, Float> paramProperty, float... paramVarArgs)
  {
    return new PropertyValuesHolder.FloatPropertyValuesHolder(paramProperty, paramVarArgs);
  }
  
  public static PropertyValuesHolder ofFloat(String paramString, float... paramVarArgs)
  {
    return new PropertyValuesHolder.FloatPropertyValuesHolder(paramString, paramVarArgs);
  }
  
  public static PropertyValuesHolder ofInt(Property<?, Integer> paramProperty, int... paramVarArgs)
  {
    return new PropertyValuesHolder.IntPropertyValuesHolder(paramProperty, paramVarArgs);
  }
  
  public static PropertyValuesHolder ofInt(String paramString, int... paramVarArgs)
  {
    return new PropertyValuesHolder.IntPropertyValuesHolder(paramString, paramVarArgs);
  }
  
  public static PropertyValuesHolder ofKeyframe(Property paramProperty, Keyframe... paramVarArgs)
  {
    KeyframeSet localKeyframeSet = KeyframeSet.ofKeyframe(paramVarArgs);
    if ((localKeyframeSet instanceof IntKeyframeSet)) {
      return new PropertyValuesHolder.IntPropertyValuesHolder(paramProperty, (IntKeyframeSet)localKeyframeSet);
    }
    if ((localKeyframeSet instanceof FloatKeyframeSet)) {
      return new PropertyValuesHolder.FloatPropertyValuesHolder(paramProperty, (FloatKeyframeSet)localKeyframeSet);
    }
    PropertyValuesHolder localPropertyValuesHolder = new PropertyValuesHolder(paramProperty);
    localPropertyValuesHolder.mKeyframeSet = localKeyframeSet;
    localPropertyValuesHolder.mValueType = paramVarArgs[0].getType();
    return localPropertyValuesHolder;
  }
  
  public static PropertyValuesHolder ofKeyframe(String paramString, Keyframe... paramVarArgs)
  {
    KeyframeSet localKeyframeSet = KeyframeSet.ofKeyframe(paramVarArgs);
    if ((localKeyframeSet instanceof IntKeyframeSet)) {
      return new PropertyValuesHolder.IntPropertyValuesHolder(paramString, (IntKeyframeSet)localKeyframeSet);
    }
    if ((localKeyframeSet instanceof FloatKeyframeSet)) {
      return new PropertyValuesHolder.FloatPropertyValuesHolder(paramString, (FloatKeyframeSet)localKeyframeSet);
    }
    PropertyValuesHolder localPropertyValuesHolder = new PropertyValuesHolder(paramString);
    localPropertyValuesHolder.mKeyframeSet = localKeyframeSet;
    localPropertyValuesHolder.mValueType = paramVarArgs[0].getType();
    return localPropertyValuesHolder;
  }
  
  public static <V> PropertyValuesHolder ofObject(Property paramProperty, TypeEvaluator<V> paramTypeEvaluator, V... paramVarArgs)
  {
    PropertyValuesHolder localPropertyValuesHolder = new PropertyValuesHolder(paramProperty);
    localPropertyValuesHolder.setObjectValues(paramVarArgs);
    localPropertyValuesHolder.setEvaluator(paramTypeEvaluator);
    return localPropertyValuesHolder;
  }
  
  public static PropertyValuesHolder ofObject(String paramString, TypeEvaluator paramTypeEvaluator, Object... paramVarArgs)
  {
    PropertyValuesHolder localPropertyValuesHolder = new PropertyValuesHolder(paramString);
    localPropertyValuesHolder.setObjectValues(paramVarArgs);
    localPropertyValuesHolder.setEvaluator(paramTypeEvaluator);
    return localPropertyValuesHolder;
  }
  
  private void setupGetter(Class paramClass)
  {
    this.mGetter = setupSetterOrGetter(paramClass, sGetterPropertyMap, "get", null);
  }
  
  private Method setupSetterOrGetter(Class paramClass1, HashMap<Class, HashMap<String, Method>> paramHashMap, String paramString, Class paramClass2)
  {
    try
    {
      this.mPropertyMapLock.writeLock().lock();
      HashMap localHashMap = (HashMap)paramHashMap.get(paramClass1);
      Method localMethod1 = null;
      if (localHashMap != null) {
        localMethod1 = (Method)localHashMap.get(this.mPropertyName);
      }
      if (localMethod1 == null)
      {
        localMethod1 = getPropertyFunction(paramClass1, paramString, paramClass2);
        if (localHashMap == null)
        {
          localHashMap = new HashMap();
          paramHashMap.put(paramClass1, localHashMap);
        }
        localHashMap.put(this.mPropertyName, localMethod1);
      }
      Method localMethod2 = localMethod1;
      return localMethod2;
    }
    finally
    {
      this.mPropertyMapLock.writeLock().unlock();
    }
  }
  
  private void setupValue(Object paramObject, Keyframe paramKeyframe)
  {
    if (this.mProperty != null) {
      paramKeyframe.setValue(this.mProperty.get(paramObject));
    }
    try
    {
      if (this.mGetter == null) {
        setupGetter(paramObject.getClass());
      }
      paramKeyframe.setValue(this.mGetter.invoke(paramObject, new Object[0]));
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e("PropertyValuesHolder", localInvocationTargetException.toString());
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e("PropertyValuesHolder", localIllegalAccessException.toString());
    }
  }
  
  void calculateValue(float paramFloat)
  {
    this.mAnimatedValue = this.mKeyframeSet.getValue(paramFloat);
  }
  
  public PropertyValuesHolder clone()
  {
    try
    {
      PropertyValuesHolder localPropertyValuesHolder = (PropertyValuesHolder)super.clone();
      localPropertyValuesHolder.mPropertyName = this.mPropertyName;
      localPropertyValuesHolder.mProperty = this.mProperty;
      localPropertyValuesHolder.mKeyframeSet = this.mKeyframeSet.clone();
      localPropertyValuesHolder.mEvaluator = this.mEvaluator;
      return localPropertyValuesHolder;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
  
  Object getAnimatedValue()
  {
    return this.mAnimatedValue;
  }
  
  public String getPropertyName()
  {
    return this.mPropertyName;
  }
  
  void init()
  {
    TypeEvaluator localTypeEvaluator;
    if (this.mEvaluator == null)
    {
      if (this.mValueType != Integer.class) {
        break label44;
      }
      localTypeEvaluator = sIntEvaluator;
    }
    for (;;)
    {
      this.mEvaluator = localTypeEvaluator;
      if (this.mEvaluator != null) {
        this.mKeyframeSet.setEvaluator(this.mEvaluator);
      }
      return;
      label44:
      if (this.mValueType == Float.class) {
        localTypeEvaluator = sFloatEvaluator;
      } else {
        localTypeEvaluator = null;
      }
    }
  }
  
  void setAnimatedValue(Object paramObject)
  {
    if (this.mProperty != null) {
      this.mProperty.set(paramObject, getAnimatedValue());
    }
    if (this.mSetter != null) {}
    try
    {
      this.mTmpValueArray[0] = getAnimatedValue();
      this.mSetter.invoke(paramObject, this.mTmpValueArray);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e("PropertyValuesHolder", localInvocationTargetException.toString());
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e("PropertyValuesHolder", localIllegalAccessException.toString());
    }
  }
  
  public void setEvaluator(TypeEvaluator paramTypeEvaluator)
  {
    this.mEvaluator = paramTypeEvaluator;
    this.mKeyframeSet.setEvaluator(paramTypeEvaluator);
  }
  
  public void setFloatValues(float... paramVarArgs)
  {
    this.mValueType = Float.TYPE;
    this.mKeyframeSet = KeyframeSet.ofFloat(paramVarArgs);
  }
  
  public void setIntValues(int... paramVarArgs)
  {
    this.mValueType = Integer.TYPE;
    this.mKeyframeSet = KeyframeSet.ofInt(paramVarArgs);
  }
  
  public void setKeyframes(Keyframe... paramVarArgs)
  {
    int i = 0;
    int j = paramVarArgs.length;
    Keyframe[] arrayOfKeyframe = new Keyframe[Math.max(j, 2)];
    this.mValueType = paramVarArgs[0].getType();
    while (i < j)
    {
      arrayOfKeyframe[i] = paramVarArgs[i];
      i++;
    }
    this.mKeyframeSet = new KeyframeSet(arrayOfKeyframe);
  }
  
  public void setObjectValues(Object... paramVarArgs)
  {
    this.mValueType = paramVarArgs[0].getClass();
    this.mKeyframeSet = KeyframeSet.ofObject(paramVarArgs);
  }
  
  public void setProperty(Property paramProperty)
  {
    this.mProperty = paramProperty;
  }
  
  public void setPropertyName(String paramString)
  {
    this.mPropertyName = paramString;
  }
  
  void setupEndValue(Object paramObject)
  {
    setupValue(paramObject, (Keyframe)this.mKeyframeSet.mKeyframes.get(-1 + this.mKeyframeSet.mKeyframes.size()));
  }
  
  void setupSetter(Class paramClass)
  {
    this.mSetter = setupSetterOrGetter(paramClass, sSetterPropertyMap, "set", this.mValueType);
  }
  
  void setupSetterAndGetter(Object paramObject)
  {
    if (this.mProperty != null)
    {
      try
      {
        this.mProperty.get(paramObject);
        Iterator localIterator2 = this.mKeyframeSet.mKeyframes.iterator();
        while (localIterator2.hasNext())
        {
          Keyframe localKeyframe2 = (Keyframe)localIterator2.next();
          if (!localKeyframe2.hasValue()) {
            localKeyframe2.setValue(this.mProperty.get(paramObject));
          }
        }
        localClass = paramObject.getClass();
      }
      catch (ClassCastException localClassCastException)
      {
        Log.e("PropertyValuesHolder", "No such property (" + this.mProperty.getName() + ") on target object " + paramObject + ". Trying reflection instead");
        this.mProperty = null;
      }
    }
    else
    {
      Class localClass;
      if (this.mSetter == null) {
        setupSetter(localClass);
      }
      Iterator localIterator1 = this.mKeyframeSet.mKeyframes.iterator();
      while (localIterator1.hasNext())
      {
        Keyframe localKeyframe1 = (Keyframe)localIterator1.next();
        if (!localKeyframe1.hasValue())
        {
          if (this.mGetter == null) {
            setupGetter(localClass);
          }
          try
          {
            localKeyframe1.setValue(this.mGetter.invoke(paramObject, new Object[0]));
          }
          catch (InvocationTargetException localInvocationTargetException)
          {
            Log.e("PropertyValuesHolder", localInvocationTargetException.toString());
          }
          catch (IllegalAccessException localIllegalAccessException)
          {
            Log.e("PropertyValuesHolder", localIllegalAccessException.toString());
          }
        }
      }
    }
  }
  
  void setupStartValue(Object paramObject)
  {
    setupValue(paramObject, (Keyframe)this.mKeyframeSet.mKeyframes.get(0));
  }
  
  public String toString()
  {
    return this.mPropertyName + ": " + this.mKeyframeSet.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.nineoldandroids.animation.PropertyValuesHolder
 * JD-Core Version:    0.7.0.1
 */