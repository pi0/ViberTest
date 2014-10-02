package com.nineoldandroids.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;

public class AnimatorInflater
{
  private static final int[] Animator = { 16843073, 16843160, 16843198, 16843199, 16843200, 16843486, 16843487, 16843488 };
  private static final int[] AnimatorSet = { 16843490 };
  private static final int AnimatorSet_ordering = 0;
  private static final int Animator_duration = 1;
  private static final int Animator_interpolator = 0;
  private static final int Animator_repeatCount = 3;
  private static final int Animator_repeatMode = 4;
  private static final int Animator_startOffset = 2;
  private static final int Animator_valueFrom = 5;
  private static final int Animator_valueTo = 6;
  private static final int Animator_valueType = 7;
  private static final int[] PropertyAnimator = { 16843489 };
  private static final int PropertyAnimator_propertyName;
  private static final int TOGETHER;
  private static final int VALUE_TYPE_FLOAT;
  
  private static Animator createAnimatorFromXml(Context paramContext, XmlPullParser paramXmlPullParser)
  {
    return createAnimatorFromXml(paramContext, paramXmlPullParser, Xml.asAttributeSet(paramXmlPullParser), null, 0);
  }
  
  private static Animator createAnimatorFromXml(Context paramContext, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, AnimatorSet paramAnimatorSet, int paramInt)
  {
    int i = 0;
    int j = paramXmlPullParser.getDepth();
    Object localObject1 = null;
    Object localObject2 = null;
    int k;
    do
    {
      k = paramXmlPullParser.next();
      if (((k == 3) && (paramXmlPullParser.getDepth() <= j)) || (k == 1)) {
        break;
      }
    } while (k != 2);
    String str = paramXmlPullParser.getName();
    label79:
    Object localObject3;
    if (str.equals("objectAnimator"))
    {
      localObject2 = loadObjectAnimator(paramContext, paramAttributeSet);
      if (paramAnimatorSet == null) {
        break label355;
      }
      if (localObject1 != null) {
        break label348;
      }
      localObject3 = new ArrayList();
      label97:
      ((ArrayList)localObject3).add(localObject2);
    }
    for (;;)
    {
      localObject1 = localObject3;
      break;
      if (str.equals("animator"))
      {
        localObject2 = loadAnimator(paramContext, paramAttributeSet, null);
        break label79;
      }
      if (str.equals("set"))
      {
        localObject2 = new AnimatorSet();
        TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, AnimatorSet);
        TypedValue localTypedValue = new TypedValue();
        localTypedArray.getValue(0, localTypedValue);
        if (localTypedValue.type == 16) {}
        for (int n = localTypedValue.data;; n = 0)
        {
          createAnimatorFromXml(paramContext, paramXmlPullParser, paramAttributeSet, (AnimatorSet)localObject2, n);
          localTypedArray.recycle();
          break;
        }
      }
      throw new RuntimeException("Unknown animator name: " + paramXmlPullParser.getName());
      Animator[] arrayOfAnimator;
      if ((paramAnimatorSet != null) && (localObject1 != null))
      {
        arrayOfAnimator = new Animator[localObject1.size()];
        Iterator localIterator = localObject1.iterator();
        while (localIterator.hasNext())
        {
          Animator localAnimator = (Animator)localIterator.next();
          int m = i + 1;
          arrayOfAnimator[i] = localAnimator;
          i = m;
        }
        if (paramInt == 0) {
          paramAnimatorSet.playTogether(arrayOfAnimator);
        }
      }
      else
      {
        return localObject2;
      }
      paramAnimatorSet.playSequentially(arrayOfAnimator);
      return localObject2;
      label348:
      localObject3 = localObject1;
      break label97;
      label355:
      localObject3 = localObject1;
    }
  }
  
  /* Error */
  public static Animator loadAnimator(Context paramContext, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokevirtual 178	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   6: iload_1
    //   7: invokevirtual 184	android/content/res/Resources:getAnimation	(I)Landroid/content/res/XmlResourceParser;
    //   10: astore_2
    //   11: aload_0
    //   12: aload_2
    //   13: invokestatic 186	com/nineoldandroids/animation/AnimatorInflater:createAnimatorFromXml	(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/nineoldandroids/animation/Animator;
    //   16: astore 10
    //   18: aload_2
    //   19: ifnull +9 -> 28
    //   22: aload_2
    //   23: invokeinterface 191 1 0
    //   28: aload 10
    //   30: areturn
    //   31: astore 7
    //   33: new 193	android/content/res/Resources$NotFoundException
    //   36: dup
    //   37: new 131	java/lang/StringBuilder
    //   40: dup
    //   41: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   44: ldc 195
    //   46: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: iload_1
    //   50: invokestatic 201	java/lang/Integer:toHexString	(I)Ljava/lang/String;
    //   53: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: invokespecial 202	android/content/res/Resources$NotFoundException:<init>	(Ljava/lang/String;)V
    //   62: astore 8
    //   64: aload 8
    //   66: aload 7
    //   68: invokevirtual 206	android/content/res/Resources$NotFoundException:initCause	(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    //   71: pop
    //   72: aload 8
    //   74: athrow
    //   75: astore 6
    //   77: aload_2
    //   78: ifnull +9 -> 87
    //   81: aload_2
    //   82: invokeinterface 191 1 0
    //   87: aload 6
    //   89: athrow
    //   90: astore_3
    //   91: new 193	android/content/res/Resources$NotFoundException
    //   94: dup
    //   95: new 131	java/lang/StringBuilder
    //   98: dup
    //   99: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   102: ldc 195
    //   104: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: iload_1
    //   108: invokestatic 201	java/lang/Integer:toHexString	(I)Ljava/lang/String;
    //   111: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   117: invokespecial 202	android/content/res/Resources$NotFoundException:<init>	(Ljava/lang/String;)V
    //   120: astore 4
    //   122: aload 4
    //   124: aload_3
    //   125: invokevirtual 206	android/content/res/Resources$NotFoundException:initCause	(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    //   128: pop
    //   129: aload 4
    //   131: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	132	0	paramContext	Context
    //   0	132	1	paramInt	int
    //   1	81	2	localXmlResourceParser	android.content.res.XmlResourceParser
    //   90	35	3	localIOException	java.io.IOException
    //   120	10	4	localNotFoundException1	android.content.res.Resources.NotFoundException
    //   75	13	6	localObject	Object
    //   31	36	7	localXmlPullParserException	org.xmlpull.v1.XmlPullParserException
    //   62	11	8	localNotFoundException2	android.content.res.Resources.NotFoundException
    //   16	13	10	localAnimator	Animator
    // Exception table:
    //   from	to	target	type
    //   2	18	31	org/xmlpull/v1/XmlPullParserException
    //   2	18	75	finally
    //   33	75	75	finally
    //   91	132	75	finally
    //   2	18	90	java/io/IOException
  }
  
  private static ValueAnimator loadAnimator(Context paramContext, AttributeSet paramAttributeSet, ValueAnimator paramValueAnimator)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, Animator);
    long l1 = localTypedArray.getInt(1, 0);
    long l2 = localTypedArray.getInt(2, 0);
    int i = localTypedArray.getInt(7, 0);
    if (paramValueAnimator == null) {
      paramValueAnimator = new ValueAnimator();
    }
    int j;
    int k;
    label71:
    int m;
    label83:
    int n;
    label99:
    int i1;
    label111:
    float f2;
    label187:
    float f3;
    if (i == 0)
    {
      j = 1;
      TypedValue localTypedValue1 = localTypedArray.peekValue(5);
      if (localTypedValue1 == null) {
        break label308;
      }
      k = 1;
      if (k == 0) {
        break label314;
      }
      m = localTypedValue1.type;
      TypedValue localTypedValue2 = localTypedArray.peekValue(6);
      if (localTypedValue2 == null) {
        break label320;
      }
      n = 1;
      if (n == 0) {
        break label326;
      }
      i1 = localTypedValue2.type;
      if (((k != 0) && (m >= 28) && (m <= 31)) || ((n != 0) && (i1 >= 28) && (i1 <= 31)))
      {
        j = 0;
        paramValueAnimator.setEvaluator(new ArgbEvaluator());
      }
      if (j == 0) {
        break label412;
      }
      if (k == 0) {
        break label370;
      }
      if (m != 5) {
        break label332;
      }
      f2 = localTypedArray.getDimension(5, 0.0F);
      if (n == 0) {
        break label355;
      }
      if (i1 != 5) {
        break label343;
      }
      f3 = localTypedArray.getDimension(6, 0.0F);
      label207:
      paramValueAnimator.setFloatValues(new float[] { f2, f3 });
    }
    label308:
    label314:
    label320:
    label326:
    label332:
    label343:
    label355:
    label370:
    label509:
    do
    {
      for (;;)
      {
        paramValueAnimator.setDuration(l1);
        paramValueAnimator.setStartDelay(l2);
        if (localTypedArray.hasValue(3)) {
          paramValueAnimator.setRepeatCount(localTypedArray.getInt(3, 0));
        }
        if (localTypedArray.hasValue(4)) {
          paramValueAnimator.setRepeatMode(localTypedArray.getInt(4, 1));
        }
        int i3 = localTypedArray.getResourceId(0, 0);
        if (i3 > 0) {
          paramValueAnimator.setInterpolator(AnimationUtils.loadInterpolator(paramContext, i3));
        }
        localTypedArray.recycle();
        return paramValueAnimator;
        j = 0;
        break;
        k = 0;
        break label71;
        m = 0;
        break label83;
        n = 0;
        break label99;
        i1 = 0;
        break label111;
        f2 = localTypedArray.getFloat(5, 0.0F);
        break label187;
        f3 = localTypedArray.getFloat(6, 0.0F);
        break label207;
        paramValueAnimator.setFloatValues(new float[] { f2 });
        continue;
        if (i1 == 5) {}
        for (float f1 = localTypedArray.getDimension(6, 0.0F);; f1 = localTypedArray.getFloat(6, 0.0F))
        {
          paramValueAnimator.setFloatValues(new float[] { f1 });
          break;
        }
        if (k == 0) {
          break label562;
        }
        int i4;
        int i5;
        if (m == 5)
        {
          i4 = (int)localTypedArray.getDimension(5, 0.0F);
          if (n == 0) {
            break label547;
          }
          if (i1 != 5) {
            break label509;
          }
          i5 = (int)localTypedArray.getDimension(6, 0.0F);
        }
        for (;;)
        {
          paramValueAnimator.setIntValues(new int[] { i4, i5 });
          break;
          if ((m >= 28) && (m <= 31))
          {
            i4 = localTypedArray.getColor(5, 0);
            break label432;
          }
          i4 = localTypedArray.getInt(5, 0);
          break label432;
          if ((i1 >= 28) && (i1 <= 31)) {
            i5 = localTypedArray.getColor(6, 0);
          } else {
            i5 = localTypedArray.getInt(6, 0);
          }
        }
        paramValueAnimator.setIntValues(new int[] { i4 });
      }
    } while (n == 0);
    label412:
    label432:
    label562:
    int i2;
    label547:
    if (i1 == 5) {
      i2 = (int)localTypedArray.getDimension(6, 0.0F);
    }
    for (;;)
    {
      paramValueAnimator.setIntValues(new int[] { i2 });
      break;
      if ((i1 >= 28) && (i1 <= 31)) {
        i2 = localTypedArray.getColor(6, 0);
      } else {
        i2 = localTypedArray.getInt(6, 0);
      }
    }
  }
  
  private static ObjectAnimator loadObjectAnimator(Context paramContext, AttributeSet paramAttributeSet)
  {
    ObjectAnimator localObjectAnimator = new ObjectAnimator();
    loadAnimator(paramContext, paramAttributeSet, localObjectAnimator);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, PropertyAnimator);
    localObjectAnimator.setPropertyName(localTypedArray.getString(0));
    localTypedArray.recycle();
    return localObjectAnimator;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.nineoldandroids.animation.AnimatorInflater
 * JD-Core Version:    0.7.0.1
 */