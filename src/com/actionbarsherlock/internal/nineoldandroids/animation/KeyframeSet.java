package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Arrays;

class KeyframeSet
{
  TypeEvaluator mEvaluator;
  Keyframe mFirstKeyframe;
  Interpolator mInterpolator;
  ArrayList<Keyframe> mKeyframes;
  Keyframe mLastKeyframe;
  int mNumKeyframes;
  
  public KeyframeSet(Keyframe... paramVarArgs)
  {
    this.mNumKeyframes = paramVarArgs.length;
    this.mKeyframes = new ArrayList();
    this.mKeyframes.addAll(Arrays.asList(paramVarArgs));
    this.mFirstKeyframe = ((Keyframe)this.mKeyframes.get(0));
    this.mLastKeyframe = ((Keyframe)this.mKeyframes.get(-1 + this.mNumKeyframes));
    this.mInterpolator = this.mLastKeyframe.getInterpolator();
  }
  
  public static KeyframeSet ofFloat(float... paramVarArgs)
  {
    int i = 1;
    int j = paramVarArgs.length;
    Keyframe.FloatKeyframe[] arrayOfFloatKeyframe = new Keyframe.FloatKeyframe[Math.max(j, 2)];
    if (j == i)
    {
      arrayOfFloatKeyframe[0] = ((Keyframe.FloatKeyframe)Keyframe.ofFloat(0.0F));
      arrayOfFloatKeyframe[i] = ((Keyframe.FloatKeyframe)Keyframe.ofFloat(1.0F, paramVarArgs[0]));
    }
    for (;;)
    {
      return new FloatKeyframeSet(arrayOfFloatKeyframe);
      arrayOfFloatKeyframe[0] = ((Keyframe.FloatKeyframe)Keyframe.ofFloat(0.0F, paramVarArgs[0]));
      while (i < j)
      {
        arrayOfFloatKeyframe[i] = ((Keyframe.FloatKeyframe)Keyframe.ofFloat(i / (j - 1), paramVarArgs[i]));
        i++;
      }
    }
  }
  
  public static KeyframeSet ofInt(int... paramVarArgs)
  {
    int i = 1;
    int j = paramVarArgs.length;
    Keyframe.IntKeyframe[] arrayOfIntKeyframe = new Keyframe.IntKeyframe[Math.max(j, 2)];
    if (j == i)
    {
      arrayOfIntKeyframe[0] = ((Keyframe.IntKeyframe)Keyframe.ofInt(0.0F));
      arrayOfIntKeyframe[i] = ((Keyframe.IntKeyframe)Keyframe.ofInt(1.0F, paramVarArgs[0]));
    }
    for (;;)
    {
      return new IntKeyframeSet(arrayOfIntKeyframe);
      arrayOfIntKeyframe[0] = ((Keyframe.IntKeyframe)Keyframe.ofInt(0.0F, paramVarArgs[0]));
      while (i < j)
      {
        arrayOfIntKeyframe[i] = ((Keyframe.IntKeyframe)Keyframe.ofInt(i / (j - 1), paramVarArgs[i]));
        i++;
      }
    }
  }
  
  public static KeyframeSet ofKeyframe(Keyframe... paramVarArgs)
  {
    int i = 0;
    int j = paramVarArgs.length;
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    if (k < j)
    {
      if ((paramVarArgs[k] instanceof Keyframe.FloatKeyframe)) {
        i1 = 1;
      }
      for (;;)
      {
        k++;
        break;
        if ((paramVarArgs[k] instanceof Keyframe.IntKeyframe)) {
          n = 1;
        } else {
          m = 1;
        }
      }
    }
    if ((i1 != 0) && (n == 0) && (m == 0))
    {
      Keyframe.FloatKeyframe[] arrayOfFloatKeyframe = new Keyframe.FloatKeyframe[j];
      while (i < j)
      {
        arrayOfFloatKeyframe[i] = ((Keyframe.FloatKeyframe)paramVarArgs[i]);
        i++;
      }
      return new FloatKeyframeSet(arrayOfFloatKeyframe);
    }
    if ((n != 0) && (i1 == 0) && (m == 0))
    {
      Keyframe.IntKeyframe[] arrayOfIntKeyframe = new Keyframe.IntKeyframe[j];
      for (int i2 = 0; i2 < j; i2++) {
        arrayOfIntKeyframe[i2] = ((Keyframe.IntKeyframe)paramVarArgs[i2]);
      }
      return new IntKeyframeSet(arrayOfIntKeyframe);
    }
    return new KeyframeSet(paramVarArgs);
  }
  
  public static KeyframeSet ofObject(Object... paramVarArgs)
  {
    int i = 1;
    int j = paramVarArgs.length;
    Keyframe.ObjectKeyframe[] arrayOfObjectKeyframe = new Keyframe.ObjectKeyframe[Math.max(j, 2)];
    if (j == i)
    {
      arrayOfObjectKeyframe[0] = ((Keyframe.ObjectKeyframe)Keyframe.ofObject(0.0F));
      arrayOfObjectKeyframe[i] = ((Keyframe.ObjectKeyframe)Keyframe.ofObject(1.0F, paramVarArgs[0]));
    }
    for (;;)
    {
      return new KeyframeSet(arrayOfObjectKeyframe);
      arrayOfObjectKeyframe[0] = ((Keyframe.ObjectKeyframe)Keyframe.ofObject(0.0F, paramVarArgs[0]));
      while (i < j)
      {
        arrayOfObjectKeyframe[i] = ((Keyframe.ObjectKeyframe)Keyframe.ofObject(i / (j - 1), paramVarArgs[i]));
        i++;
      }
    }
  }
  
  public KeyframeSet clone()
  {
    ArrayList localArrayList = this.mKeyframes;
    int i = this.mKeyframes.size();
    Keyframe[] arrayOfKeyframe = new Keyframe[i];
    for (int j = 0; j < i; j++) {
      arrayOfKeyframe[j] = ((Keyframe)localArrayList.get(j)).clone();
    }
    return new KeyframeSet(arrayOfKeyframe);
  }
  
  public Object getValue(float paramFloat)
  {
    if (this.mNumKeyframes == 2)
    {
      if (this.mInterpolator != null) {
        paramFloat = this.mInterpolator.getInterpolation(paramFloat);
      }
      return this.mEvaluator.evaluate(paramFloat, this.mFirstKeyframe.getValue(), this.mLastKeyframe.getValue());
    }
    if (paramFloat <= 0.0F)
    {
      Keyframe localKeyframe3 = (Keyframe)this.mKeyframes.get(1);
      Interpolator localInterpolator3 = localKeyframe3.getInterpolator();
      if (localInterpolator3 != null) {
        paramFloat = localInterpolator3.getInterpolation(paramFloat);
      }
      float f5 = this.mFirstKeyframe.getFraction();
      float f6 = (paramFloat - f5) / (localKeyframe3.getFraction() - f5);
      return this.mEvaluator.evaluate(f6, this.mFirstKeyframe.getValue(), localKeyframe3.getValue());
    }
    if (paramFloat >= 1.0F)
    {
      Keyframe localKeyframe2 = (Keyframe)this.mKeyframes.get(-2 + this.mNumKeyframes);
      Interpolator localInterpolator2 = this.mLastKeyframe.getInterpolator();
      if (localInterpolator2 != null) {
        paramFloat = localInterpolator2.getInterpolation(paramFloat);
      }
      float f3 = localKeyframe2.getFraction();
      float f4 = (paramFloat - f3) / (this.mLastKeyframe.getFraction() - f3);
      return this.mEvaluator.evaluate(f4, localKeyframe2.getValue(), this.mLastKeyframe.getValue());
    }
    Object localObject = this.mFirstKeyframe;
    int i = 1;
    while (i < this.mNumKeyframes)
    {
      Keyframe localKeyframe1 = (Keyframe)this.mKeyframes.get(i);
      if (paramFloat < localKeyframe1.getFraction())
      {
        Interpolator localInterpolator1 = localKeyframe1.getInterpolator();
        if (localInterpolator1 != null) {
          paramFloat = localInterpolator1.getInterpolation(paramFloat);
        }
        float f1 = ((Keyframe)localObject).getFraction();
        float f2 = (paramFloat - f1) / (localKeyframe1.getFraction() - f1);
        return this.mEvaluator.evaluate(f2, ((Keyframe)localObject).getValue(), localKeyframe1.getValue());
      }
      i++;
      localObject = localKeyframe1;
    }
    return this.mLastKeyframe.getValue();
  }
  
  public void setEvaluator(TypeEvaluator paramTypeEvaluator)
  {
    this.mEvaluator = paramTypeEvaluator;
  }
  
  public String toString()
  {
    Object localObject = " ";
    int i = 0;
    while (i < this.mNumKeyframes)
    {
      String str = (String)localObject + ((Keyframe)this.mKeyframes.get(i)).getValue() + "  ";
      i++;
      localObject = str;
    }
    return localObject;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.KeyframeSet
 * JD-Core Version:    0.7.0.1
 */