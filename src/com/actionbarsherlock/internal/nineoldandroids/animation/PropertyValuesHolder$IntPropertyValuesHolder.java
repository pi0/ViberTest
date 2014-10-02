package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class PropertyValuesHolder$IntPropertyValuesHolder
  extends PropertyValuesHolder
{
  int mIntAnimatedValue;
  IntKeyframeSet mIntKeyframeSet;
  
  public PropertyValuesHolder$IntPropertyValuesHolder(String paramString, IntKeyframeSet paramIntKeyframeSet)
  {
    super(paramString, null);
    this.mValueType = Integer.TYPE;
    this.mKeyframeSet = paramIntKeyframeSet;
    this.mIntKeyframeSet = ((IntKeyframeSet)this.mKeyframeSet);
  }
  
  public PropertyValuesHolder$IntPropertyValuesHolder(String paramString, int... paramVarArgs)
  {
    super(paramString, null);
    setIntValues(paramVarArgs);
  }
  
  void calculateValue(float paramFloat)
  {
    this.mIntAnimatedValue = this.mIntKeyframeSet.getIntValue(paramFloat);
  }
  
  public IntPropertyValuesHolder clone()
  {
    IntPropertyValuesHolder localIntPropertyValuesHolder = (IntPropertyValuesHolder)super.clone();
    localIntPropertyValuesHolder.mIntKeyframeSet = ((IntKeyframeSet)localIntPropertyValuesHolder.mKeyframeSet);
    return localIntPropertyValuesHolder;
  }
  
  Object getAnimatedValue()
  {
    return Integer.valueOf(this.mIntAnimatedValue);
  }
  
  void setAnimatedValue(Object paramObject)
  {
    if (this.mSetter != null) {}
    try
    {
      this.mTmpValueArray[0] = Integer.valueOf(this.mIntAnimatedValue);
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
  
  public void setIntValues(int... paramVarArgs)
  {
    super.setIntValues(paramVarArgs);
    this.mIntKeyframeSet = ((IntKeyframeSet)this.mKeyframeSet);
  }
  
  void setupSetter(Class paramClass)
  {
    super.setupSetter(paramClass);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.PropertyValuesHolder.IntPropertyValuesHolder
 * JD-Core Version:    0.7.0.1
 */