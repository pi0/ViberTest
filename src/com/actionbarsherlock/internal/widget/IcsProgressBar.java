package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug.ExportedProperty;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import android.widget.RemoteViews.RemoteView;

@RemoteViews.RemoteView
public class IcsProgressBar
  extends View
{
  private static final int ANIMATION_RESOLUTION = 200;
  private static final boolean IS_HONEYCOMB = false;
  private static final int MAX_LEVEL = 10000;
  private static final int[] ProgressBar;
  private static final int ProgressBar_animationResolution = 14;
  private static final int ProgressBar_indeterminate = 5;
  private static final int ProgressBar_indeterminateBehavior = 10;
  private static final int ProgressBar_indeterminateDrawable = 7;
  private static final int ProgressBar_indeterminateDuration = 9;
  private static final int ProgressBar_indeterminateOnly = 6;
  private static final int ProgressBar_interpolator = 13;
  private static final int ProgressBar_max = 2;
  private static final int ProgressBar_maxHeight = 1;
  private static final int ProgressBar_maxWidth = 0;
  private static final int ProgressBar_minHeight = 12;
  private static final int ProgressBar_minWidth = 11;
  private static final int ProgressBar_progress = 3;
  private static final int ProgressBar_progressDrawable = 8;
  private static final int ProgressBar_secondaryProgress = 4;
  private static final int TIMEOUT_SEND_ACCESSIBILITY_EVENT = 200;
  private IcsProgressBar.AccessibilityEventSender mAccessibilityEventSender;
  private AccessibilityManager mAccessibilityManager;
  private AlphaAnimation mAnimation;
  private int mAnimationResolution;
  private int mBehavior;
  private Drawable mCurrentDrawable;
  private int mDuration;
  private boolean mInDrawing;
  private boolean mIndeterminate;
  private Drawable mIndeterminateDrawable;
  private int mIndeterminateRealLeft;
  private int mIndeterminateRealTop;
  private Interpolator mInterpolator;
  private long mLastDrawTime;
  private int mMax;
  int mMaxHeight;
  int mMaxWidth;
  int mMinHeight;
  int mMinWidth;
  private boolean mNoInvalidate;
  private boolean mOnlyIndeterminate;
  private int mProgress;
  private Drawable mProgressDrawable;
  private IcsProgressBar.RefreshProgressRunnable mRefreshProgressRunnable;
  Bitmap mSampleTile;
  private int mSecondaryProgress;
  private boolean mShouldStartAnimationDrawable;
  private Transformation mTransformation;
  private long mUiThreadId = Thread.currentThread().getId();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11) {}
    for (boolean bool = true;; bool = false)
    {
      IS_HONEYCOMB = bool;
      ProgressBar = new int[] { 16843039, 16843040, 16843062, 16843063, 16843064, 16843065, 16843066, 16843067, 16843068, 16843069, 16843070, 16843071, 16843072, 16843073, 16843546 };
      return;
    }
  }
  
  public IcsProgressBar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public IcsProgressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842871);
  }
  
  public IcsProgressBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public IcsProgressBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1);
    initProgressBar();
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, ProgressBar, paramInt1, paramInt2);
    this.mNoInvalidate = true;
    Drawable localDrawable1 = localTypedArray.getDrawable(8);
    if (localDrawable1 != null) {
      setProgressDrawable(tileify(localDrawable1, false));
    }
    this.mDuration = localTypedArray.getInt(9, this.mDuration);
    this.mMinWidth = localTypedArray.getDimensionPixelSize(11, this.mMinWidth);
    this.mMaxWidth = localTypedArray.getDimensionPixelSize(0, this.mMaxWidth);
    this.mMinHeight = localTypedArray.getDimensionPixelSize(12, this.mMinHeight);
    this.mMaxHeight = localTypedArray.getDimensionPixelSize(1, this.mMaxHeight);
    this.mBehavior = localTypedArray.getInt(10, this.mBehavior);
    int i = localTypedArray.getResourceId(13, 17432587);
    if (i > 0) {
      setInterpolator(paramContext, i);
    }
    setMax(localTypedArray.getInt(2, this.mMax));
    setProgress(localTypedArray.getInt(3, this.mProgress));
    setSecondaryProgress(localTypedArray.getInt(4, this.mSecondaryProgress));
    Drawable localDrawable2 = localTypedArray.getDrawable(7);
    if (localDrawable2 != null) {
      setIndeterminateDrawable(tileifyIndeterminate(localDrawable2));
    }
    this.mOnlyIndeterminate = localTypedArray.getBoolean(6, this.mOnlyIndeterminate);
    this.mNoInvalidate = false;
    boolean bool1;
    if (!this.mOnlyIndeterminate)
    {
      boolean bool2 = localTypedArray.getBoolean(5, this.mIndeterminate);
      bool1 = false;
      if (!bool2) {}
    }
    else
    {
      bool1 = true;
    }
    setIndeterminate(bool1);
    this.mAnimationResolution = localTypedArray.getInteger(14, 200);
    localTypedArray.recycle();
    this.mAccessibilityManager = ((AccessibilityManager)paramContext.getSystemService("accessibility"));
  }
  
  private void doRefreshProgress(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    for (;;)
    {
      Object localObject2;
      Drawable localDrawable;
      try
      {
        float f;
        if (this.mMax > 0)
        {
          f = paramInt2 / this.mMax;
          localObject2 = this.mCurrentDrawable;
          if (localObject2 != null)
          {
            boolean bool = localObject2 instanceof LayerDrawable;
            localDrawable = null;
            if (!bool) {
              break label109;
            }
            localDrawable = ((LayerDrawable)localObject2).findDrawableByLayerId(paramInt1);
            break label109;
            ((Drawable)localObject2).setLevel(i);
            if ((paramBoolean2) && (paramInt1 == 16908301)) {
              onProgressRefresh(f, paramBoolean1);
            }
          }
        }
        else
        {
          f = 0.0F;
          continue;
        }
        invalidate();
        continue;
        int i = (int)(10000.0F * f);
      }
      finally {}
      label109:
      if (localDrawable != null) {
        localObject2 = localDrawable;
      }
    }
  }
  
  private void initProgressBar()
  {
    this.mMax = 100;
    this.mProgress = 0;
    this.mSecondaryProgress = 0;
    this.mIndeterminate = false;
    this.mOnlyIndeterminate = false;
    this.mDuration = 4000;
    this.mBehavior = 1;
    this.mMinWidth = 24;
    this.mMaxWidth = 48;
    this.mMinHeight = 24;
    this.mMaxHeight = 48;
  }
  
  private void refreshProgress(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        if (this.mUiThreadId == Thread.currentThread().getId())
        {
          doRefreshProgress(paramInt1, paramInt2, paramBoolean, true);
          return;
        }
        IcsProgressBar.RefreshProgressRunnable localRefreshProgressRunnable;
        if (this.mRefreshProgressRunnable != null)
        {
          localRefreshProgressRunnable = this.mRefreshProgressRunnable;
          this.mRefreshProgressRunnable = null;
          localRefreshProgressRunnable.setup(paramInt1, paramInt2, paramBoolean);
          post(localRefreshProgressRunnable);
        }
        else
        {
          localRefreshProgressRunnable = new IcsProgressBar.RefreshProgressRunnable(this, paramInt1, paramInt2, paramBoolean);
        }
      }
      finally {}
    }
  }
  
  private void scheduleAccessibilityEventSender()
  {
    if (this.mAccessibilityEventSender == null) {
      this.mAccessibilityEventSender = new IcsProgressBar.AccessibilityEventSender(this, null);
    }
    for (;;)
    {
      postDelayed(this.mAccessibilityEventSender, 200L);
      return;
      removeCallbacks(this.mAccessibilityEventSender);
    }
  }
  
  private Drawable tileify(Drawable paramDrawable, boolean paramBoolean)
  {
    int i = 0;
    Object localObject;
    if ((paramDrawable instanceof LayerDrawable))
    {
      LayerDrawable localLayerDrawable = (LayerDrawable)paramDrawable;
      int j = localLayerDrawable.getNumberOfLayers();
      Drawable[] arrayOfDrawable = new Drawable[j];
      int k = 0;
      if (k < j)
      {
        int m = localLayerDrawable.getId(k);
        Drawable localDrawable = localLayerDrawable.getDrawable(k);
        if ((m == 16908301) || (m == 16908303)) {}
        for (boolean bool = true;; bool = false)
        {
          arrayOfDrawable[k] = tileify(localDrawable, bool);
          k++;
          break;
        }
      }
      localObject = new LayerDrawable(arrayOfDrawable);
      while (i < j)
      {
        ((LayerDrawable)localObject).setId(i, localLayerDrawable.getId(i));
        i++;
      }
    }
    if ((paramDrawable instanceof BitmapDrawable))
    {
      Bitmap localBitmap = ((BitmapDrawable)paramDrawable).getBitmap();
      if (this.mSampleTile == null) {
        this.mSampleTile = localBitmap;
      }
      ShapeDrawable localShapeDrawable = new ShapeDrawable(getDrawableShape());
      BitmapShader localBitmapShader = new BitmapShader(localBitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP);
      localShapeDrawable.getPaint().setShader(localBitmapShader);
      if (paramBoolean)
      {
        localObject = new ClipDrawable(localShapeDrawable, 3, 1);
        return localObject;
      }
      return localShapeDrawable;
    }
    return paramDrawable;
  }
  
  private Drawable tileifyIndeterminate(Drawable paramDrawable)
  {
    if ((paramDrawable instanceof AnimationDrawable))
    {
      AnimationDrawable localAnimationDrawable1 = (AnimationDrawable)paramDrawable;
      int i = localAnimationDrawable1.getNumberOfFrames();
      AnimationDrawable localAnimationDrawable2 = new AnimationDrawable();
      localAnimationDrawable2.setOneShot(localAnimationDrawable1.isOneShot());
      for (int j = 0; j < i; j++)
      {
        Drawable localDrawable = tileify(localAnimationDrawable1.getFrame(j), true);
        localDrawable.setLevel(10000);
        localAnimationDrawable2.addFrame(localDrawable, localAnimationDrawable1.getDuration(j));
      }
      localAnimationDrawable2.setLevel(10000);
      paramDrawable = localAnimationDrawable2;
    }
    return paramDrawable;
  }
  
  private void updateDrawableBounds(int paramInt1, int paramInt2)
  {
    int i = paramInt1 - getPaddingRight() - getPaddingLeft();
    int j = paramInt2 - getPaddingBottom() - getPaddingTop();
    float f1;
    int n;
    int k;
    int m;
    int i1;
    if (this.mIndeterminateDrawable != null) {
      if ((this.mOnlyIndeterminate) && (!(this.mIndeterminateDrawable instanceof AnimationDrawable)))
      {
        int i2 = this.mIndeterminateDrawable.getIntrinsicWidth();
        int i3 = this.mIndeterminateDrawable.getIntrinsicHeight();
        f1 = i2 / i3;
        float f2 = paramInt1 / paramInt2;
        if (f1 != f2) {
          if (f2 > f1)
          {
            int i7 = (int)(f1 * paramInt2);
            n = (paramInt1 - i7) / 2;
            k = i7 + n;
            m = j;
            i1 = 0;
            this.mIndeterminateDrawable.setBounds(0, 0, k - n, m - i1);
            this.mIndeterminateRealLeft = n;
            this.mIndeterminateRealTop = i1;
          }
        }
      }
    }
    for (;;)
    {
      if (this.mProgressDrawable != null) {
        this.mProgressDrawable.setBounds(0, 0, k, m);
      }
      return;
      int i4 = (int)(paramInt1 * (1.0F / f1));
      int i5 = (paramInt2 - i4) / 2;
      int i6 = i4 + i5;
      k = i;
      m = i6;
      i1 = i5;
      n = 0;
      break;
      k = i;
      m = j;
      n = 0;
      i1 = 0;
      break;
      k = i;
      m = j;
    }
  }
  
  private void updateDrawableState()
  {
    int[] arrayOfInt = getDrawableState();
    if ((this.mProgressDrawable != null) && (this.mProgressDrawable.isStateful())) {
      this.mProgressDrawable.setState(arrayOfInt);
    }
    if ((this.mIndeterminateDrawable != null) && (this.mIndeterminateDrawable.isStateful())) {
      this.mIndeterminateDrawable.setState(arrayOfInt);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    updateDrawableState();
  }
  
  Drawable getCurrentDrawable()
  {
    return this.mCurrentDrawable;
  }
  
  Shape getDrawableShape()
  {
    return new RoundRectShape(new float[] { 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F }, null, null);
  }
  
  public Drawable getIndeterminateDrawable()
  {
    return this.mIndeterminateDrawable;
  }
  
  public Interpolator getInterpolator()
  {
    return this.mInterpolator;
  }
  
  @ViewDebug.ExportedProperty(category="progress")
  public int getMax()
  {
    try
    {
      int i = this.mMax;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  @ViewDebug.ExportedProperty(category="progress")
  public int getProgress()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 217	com/actionbarsherlock/internal/widget/IcsProgressBar:mIndeterminate	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +9 -> 17
    //   11: iconst_0
    //   12: istore_3
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_3
    //   16: ireturn
    //   17: aload_0
    //   18: getfield 194	com/actionbarsherlock/internal/widget/IcsProgressBar:mProgress	I
    //   21: istore_3
    //   22: goto -9 -> 13
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	30	0	this	IcsProgressBar
    //   25	4	1	localObject	Object
    //   6	2	2	bool	boolean
    //   12	10	3	i	int
    // Exception table:
    //   from	to	target	type
    //   2	7	25	finally
    //   17	22	25	finally
  }
  
  public Drawable getProgressDrawable()
  {
    return this.mProgressDrawable;
  }
  
  /* Error */
  @ViewDebug.ExportedProperty(category="progress")
  public int getSecondaryProgress()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 217	com/actionbarsherlock/internal/widget/IcsProgressBar:mIndeterminate	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +9 -> 17
    //   11: iconst_0
    //   12: istore_3
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_3
    //   16: ireturn
    //   17: aload_0
    //   18: getfield 199	com/actionbarsherlock/internal/widget/IcsProgressBar:mSecondaryProgress	I
    //   21: istore_3
    //   22: goto -9 -> 13
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	30	0	this	IcsProgressBar
    //   25	4	1	localObject	Object
    //   6	2	2	bool	boolean
    //   12	10	3	i	int
    // Exception table:
    //   from	to	target	type
    //   2	7	25	finally
    //   17	22	25	finally
  }
  
  public final void incrementProgressBy(int paramInt)
  {
    try
    {
      setProgress(paramInt + this.mProgress);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final void incrementSecondaryProgressBy(int paramInt)
  {
    try
    {
      setSecondaryProgress(paramInt + this.mSecondaryProgress);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    if (!this.mInDrawing)
    {
      if (verifyDrawable(paramDrawable))
      {
        Rect localRect = paramDrawable.getBounds();
        int i = getScrollX() + getPaddingLeft();
        int j = getScrollY() + getPaddingTop();
        invalidate(i + localRect.left, j + localRect.top, i + localRect.right, j + localRect.bottom);
      }
    }
    else {
      return;
    }
    super.invalidateDrawable(paramDrawable);
  }
  
  @ViewDebug.ExportedProperty(category="progress")
  public boolean isIndeterminate()
  {
    try
    {
      boolean bool = this.mIndeterminate;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    if (this.mProgressDrawable != null) {
      this.mProgressDrawable.jumpToCurrentState();
    }
    if (this.mIndeterminateDrawable != null) {
      this.mIndeterminateDrawable.jumpToCurrentState();
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.mIndeterminate) {
      startAnimation();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    if (this.mIndeterminate) {
      stopAnimation();
    }
    if (this.mRefreshProgressRunnable != null) {
      removeCallbacks(this.mRefreshProgressRunnable);
    }
    if (this.mAccessibilityEventSender != null) {
      removeCallbacks(this.mAccessibilityEventSender);
    }
    super.onDetachedFromWindow();
  }
  
  /* Error */
  protected void onDraw(android.graphics.Canvas paramCanvas)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokespecial 517	android/view/View:onDraw	(Landroid/graphics/Canvas;)V
    //   7: aload_0
    //   8: getfield 251	com/actionbarsherlock/internal/widget/IcsProgressBar:mCurrentDrawable	Landroid/graphics/drawable/Drawable;
    //   11: astore_3
    //   12: aload_3
    //   13: ifnull +160 -> 173
    //   16: aload_1
    //   17: invokevirtual 522	android/graphics/Canvas:save	()I
    //   20: pop
    //   21: aload_1
    //   22: aload_0
    //   23: invokevirtual 396	com/actionbarsherlock/internal/widget/IcsProgressBar:getPaddingLeft	()I
    //   26: aload_0
    //   27: getfield 416	com/actionbarsherlock/internal/widget/IcsProgressBar:mIndeterminateRealLeft	I
    //   30: iadd
    //   31: i2f
    //   32: aload_0
    //   33: invokevirtual 402	com/actionbarsherlock/internal/widget/IcsProgressBar:getPaddingTop	()I
    //   36: aload_0
    //   37: getfield 418	com/actionbarsherlock/internal/widget/IcsProgressBar:mIndeterminateRealTop	I
    //   40: iadd
    //   41: i2f
    //   42: invokevirtual 526	android/graphics/Canvas:translate	(FF)V
    //   45: aload_0
    //   46: invokevirtual 529	com/actionbarsherlock/internal/widget/IcsProgressBar:getDrawingTime	()J
    //   49: lstore 5
    //   51: aload_0
    //   52: getfield 531	com/actionbarsherlock/internal/widget/IcsProgressBar:mAnimation	Landroid/view/animation/AlphaAnimation;
    //   55: ifnull +81 -> 136
    //   58: aload_0
    //   59: getfield 531	com/actionbarsherlock/internal/widget/IcsProgressBar:mAnimation	Landroid/view/animation/AlphaAnimation;
    //   62: lload 5
    //   64: aload_0
    //   65: getfield 533	com/actionbarsherlock/internal/widget/IcsProgressBar:mTransformation	Landroid/view/animation/Transformation;
    //   68: invokevirtual 539	android/view/animation/AlphaAnimation:getTransformation	(JLandroid/view/animation/Transformation;)Z
    //   71: pop
    //   72: aload_0
    //   73: getfield 533	com/actionbarsherlock/internal/widget/IcsProgressBar:mTransformation	Landroid/view/animation/Transformation;
    //   76: invokevirtual 545	android/view/animation/Transformation:getAlpha	()F
    //   79: fstore 8
    //   81: aload_0
    //   82: iconst_1
    //   83: putfield 462	com/actionbarsherlock/internal/widget/IcsProgressBar:mInDrawing	Z
    //   86: aload_3
    //   87: fload 8
    //   89: ldc_w 271
    //   92: fmul
    //   93: f2i
    //   94: invokevirtual 262	android/graphics/drawable/Drawable:setLevel	(I)Z
    //   97: pop
    //   98: aload_0
    //   99: iconst_0
    //   100: putfield 462	com/actionbarsherlock/internal/widget/IcsProgressBar:mInDrawing	Z
    //   103: invokestatic 550	android/os/SystemClock:uptimeMillis	()J
    //   106: aload_0
    //   107: getfield 552	com/actionbarsherlock/internal/widget/IcsProgressBar:mLastDrawTime	J
    //   110: lsub
    //   111: aload_0
    //   112: getfield 226	com/actionbarsherlock/internal/widget/IcsProgressBar:mAnimationResolution	I
    //   115: i2l
    //   116: lcmp
    //   117: iflt +19 -> 136
    //   120: aload_0
    //   121: invokestatic 550	android/os/SystemClock:uptimeMillis	()J
    //   124: putfield 552	com/actionbarsherlock/internal/widget/IcsProgressBar:mLastDrawTime	J
    //   127: aload_0
    //   128: aload_0
    //   129: getfield 226	com/actionbarsherlock/internal/widget/IcsProgressBar:mAnimationResolution	I
    //   132: i2l
    //   133: invokevirtual 556	com/actionbarsherlock/internal/widget/IcsProgressBar:postInvalidateDelayed	(J)V
    //   136: aload_3
    //   137: aload_1
    //   138: invokevirtual 559	android/graphics/drawable/Drawable:draw	(Landroid/graphics/Canvas;)V
    //   141: aload_1
    //   142: invokevirtual 562	android/graphics/Canvas:restore	()V
    //   145: aload_0
    //   146: getfield 564	com/actionbarsherlock/internal/widget/IcsProgressBar:mShouldStartAnimationDrawable	Z
    //   149: ifeq +24 -> 173
    //   152: aload_3
    //   153: instanceof 566
    //   156: ifeq +17 -> 173
    //   159: aload_3
    //   160: checkcast 566	android/graphics/drawable/Animatable
    //   163: invokeinterface 569 1 0
    //   168: aload_0
    //   169: iconst_0
    //   170: putfield 564	com/actionbarsherlock/internal/widget/IcsProgressBar:mShouldStartAnimationDrawable	Z
    //   173: aload_0
    //   174: monitorexit
    //   175: return
    //   176: astore 9
    //   178: aload_0
    //   179: iconst_0
    //   180: putfield 462	com/actionbarsherlock/internal/widget/IcsProgressBar:mInDrawing	Z
    //   183: aload 9
    //   185: athrow
    //   186: astore_2
    //   187: aload_0
    //   188: monitorexit
    //   189: aload_2
    //   190: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	191	0	this	IcsProgressBar
    //   0	191	1	paramCanvas	android.graphics.Canvas
    //   186	4	2	localObject1	Object
    //   11	149	3	localDrawable	Drawable
    //   49	14	5	l	long
    //   79	9	8	f	float
    //   176	8	9	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   81	98	176	finally
    //   2	12	186	finally
    //   16	81	186	finally
    //   98	136	186	finally
    //   136	173	186	finally
    //   178	186	186	finally
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setItemCount(this.mMax);
    paramAccessibilityEvent.setCurrentItemIndex(this.mProgress);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    for (;;)
    {
      try
      {
        Drawable localDrawable = this.mCurrentDrawable;
        if (localDrawable != null)
        {
          i = Math.max(this.mMinWidth, Math.min(this.mMaxWidth, localDrawable.getIntrinsicWidth()));
          j = Math.max(this.mMinHeight, Math.min(this.mMaxHeight, localDrawable.getIntrinsicHeight()));
          updateDrawableState();
          int k = i + (getPaddingLeft() + getPaddingRight());
          int m = j + (getPaddingTop() + getPaddingBottom());
          if (IS_HONEYCOMB)
          {
            setMeasuredDimension(View.resolveSizeAndState(k, paramInt1, 0), View.resolveSizeAndState(m, paramInt2, 0));
            return;
          }
          setMeasuredDimension(View.resolveSize(k, paramInt1), View.resolveSize(m, paramInt2));
          continue;
        }
        int j = 0;
      }
      finally {}
      int i = 0;
    }
  }
  
  void onProgressRefresh(float paramFloat, boolean paramBoolean)
  {
    if (this.mAccessibilityManager.isEnabled()) {
      scheduleAccessibilityEventSender();
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    IcsProgressBar.SavedState localSavedState = (IcsProgressBar.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    setProgress(localSavedState.progress);
    setSecondaryProgress(localSavedState.secondaryProgress);
  }
  
  public Parcelable onSaveInstanceState()
  {
    IcsProgressBar.SavedState localSavedState = new IcsProgressBar.SavedState(super.onSaveInstanceState());
    localSavedState.progress = this.mProgress;
    localSavedState.secondaryProgress = this.mSecondaryProgress;
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    updateDrawableBounds(paramInt1, paramInt2);
  }
  
  protected void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    if (this.mIndeterminate)
    {
      if ((paramInt == 8) || (paramInt == 4)) {
        stopAnimation();
      }
    }
    else {
      return;
    }
    startAnimation();
  }
  
  public void postInvalidate()
  {
    if (!this.mNoInvalidate) {
      super.postInvalidate();
    }
  }
  
  /* Error */
  public void setIndeterminate(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 211	com/actionbarsherlock/internal/widget/IcsProgressBar:mOnlyIndeterminate	Z
    //   6: ifeq +10 -> 16
    //   9: aload_0
    //   10: getfield 217	com/actionbarsherlock/internal/widget/IcsProgressBar:mIndeterminate	Z
    //   13: ifne +32 -> 45
    //   16: iload_1
    //   17: aload_0
    //   18: getfield 217	com/actionbarsherlock/internal/widget/IcsProgressBar:mIndeterminate	Z
    //   21: if_icmpeq +24 -> 45
    //   24: aload_0
    //   25: iload_1
    //   26: putfield 217	com/actionbarsherlock/internal/widget/IcsProgressBar:mIndeterminate	Z
    //   29: iload_1
    //   30: ifeq +18 -> 48
    //   33: aload_0
    //   34: aload_0
    //   35: getfield 404	com/actionbarsherlock/internal/widget/IcsProgressBar:mIndeterminateDrawable	Landroid/graphics/drawable/Drawable;
    //   38: putfield 251	com/actionbarsherlock/internal/widget/IcsProgressBar:mCurrentDrawable	Landroid/graphics/drawable/Drawable;
    //   41: aload_0
    //   42: invokevirtual 507	com/actionbarsherlock/internal/widget/IcsProgressBar:startAnimation	()V
    //   45: aload_0
    //   46: monitorexit
    //   47: return
    //   48: aload_0
    //   49: aload_0
    //   50: getfield 420	com/actionbarsherlock/internal/widget/IcsProgressBar:mProgressDrawable	Landroid/graphics/drawable/Drawable;
    //   53: putfield 251	com/actionbarsherlock/internal/widget/IcsProgressBar:mCurrentDrawable	Landroid/graphics/drawable/Drawable;
    //   56: aload_0
    //   57: invokevirtual 511	com/actionbarsherlock/internal/widget/IcsProgressBar:stopAnimation	()V
    //   60: goto -15 -> 45
    //   63: astore_2
    //   64: aload_0
    //   65: monitorexit
    //   66: aload_2
    //   67: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	this	IcsProgressBar
    //   0	68	1	paramBoolean	boolean
    //   63	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	16	63	finally
    //   16	29	63	finally
    //   33	45	63	finally
    //   48	60	63	finally
  }
  
  public void setIndeterminateDrawable(Drawable paramDrawable)
  {
    if (paramDrawable != null) {
      paramDrawable.setCallback(this);
    }
    this.mIndeterminateDrawable = paramDrawable;
    if (this.mIndeterminate)
    {
      this.mCurrentDrawable = paramDrawable;
      postInvalidate();
    }
  }
  
  public void setInterpolator(Context paramContext, int paramInt)
  {
    setInterpolator(AnimationUtils.loadInterpolator(paramContext, paramInt));
  }
  
  public void setInterpolator(Interpolator paramInterpolator)
  {
    this.mInterpolator = paramInterpolator;
  }
  
  public void setMax(int paramInt)
  {
    if (paramInt < 0) {
      paramInt = 0;
    }
    try
    {
      if (paramInt != this.mMax)
      {
        this.mMax = paramInt;
        postInvalidate();
        if (this.mProgress > paramInt) {
          this.mProgress = paramInt;
        }
        refreshProgress(16908301, this.mProgress, false);
      }
      return;
    }
    finally {}
  }
  
  public void setProgress(int paramInt)
  {
    try
    {
      setProgress(paramInt, false);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  void setProgress(int paramInt, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        boolean bool = this.mIndeterminate;
        if (bool) {
          return;
        }
        int i;
        if (paramInt < 0)
        {
          i = 0;
          if (i > this.mMax) {
            i = this.mMax;
          }
          if (i != this.mProgress)
          {
            this.mProgress = i;
            refreshProgress(16908301, this.mProgress, paramBoolean);
          }
        }
        else
        {
          i = paramInt;
        }
      }
      finally {}
    }
  }
  
  public void setProgressDrawable(Drawable paramDrawable)
  {
    if ((this.mProgressDrawable != null) && (paramDrawable != this.mProgressDrawable)) {
      this.mProgressDrawable.setCallback(null);
    }
    for (int i = 1;; i = 0)
    {
      if (paramDrawable != null)
      {
        paramDrawable.setCallback(this);
        int j = paramDrawable.getMinimumHeight();
        if (this.mMaxHeight < j)
        {
          this.mMaxHeight = j;
          requestLayout();
        }
      }
      this.mProgressDrawable = paramDrawable;
      if (!this.mIndeterminate)
      {
        this.mCurrentDrawable = paramDrawable;
        postInvalidate();
      }
      if (i != 0)
      {
        updateDrawableBounds(getWidth(), getHeight());
        updateDrawableState();
        doRefreshProgress(16908301, this.mProgress, false, false);
        doRefreshProgress(16908303, this.mSecondaryProgress, false, false);
      }
      return;
    }
  }
  
  public void setSecondaryProgress(int paramInt)
  {
    for (;;)
    {
      try
      {
        boolean bool = this.mIndeterminate;
        if (bool) {
          return;
        }
        int i = 0;
        if (paramInt < 0)
        {
          if (i > this.mMax) {
            i = this.mMax;
          }
          if (i != this.mSecondaryProgress)
          {
            this.mSecondaryProgress = i;
            refreshProgress(16908303, this.mSecondaryProgress, false);
          }
        }
        else
        {
          i = paramInt;
        }
      }
      finally {}
    }
  }
  
  public void setVisibility(int paramInt)
  {
    if (getVisibility() != paramInt)
    {
      super.setVisibility(paramInt);
      if (this.mIndeterminate)
      {
        if ((paramInt != 8) && (paramInt != 4)) {
          break label36;
        }
        stopAnimation();
      }
    }
    return;
    label36:
    startAnimation();
  }
  
  void startAnimation()
  {
    if (getVisibility() != 0) {
      return;
    }
    if ((this.mIndeterminateDrawable instanceof Animatable))
    {
      this.mShouldStartAnimationDrawable = true;
      this.mAnimation = null;
    }
    for (;;)
    {
      postInvalidate();
      return;
      if (this.mInterpolator == null) {
        this.mInterpolator = new LinearInterpolator();
      }
      this.mTransformation = new Transformation();
      this.mAnimation = new AlphaAnimation(0.0F, 1.0F);
      this.mAnimation.setRepeatMode(this.mBehavior);
      this.mAnimation.setRepeatCount(-1);
      this.mAnimation.setDuration(this.mDuration);
      this.mAnimation.setInterpolator(this.mInterpolator);
      this.mAnimation.setStartTime(-1L);
    }
  }
  
  void stopAnimation()
  {
    this.mAnimation = null;
    this.mTransformation = null;
    if ((this.mIndeterminateDrawable instanceof Animatable))
    {
      ((Animatable)this.mIndeterminateDrawable).stop();
      this.mShouldStartAnimationDrawable = false;
    }
    postInvalidate();
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (paramDrawable == this.mProgressDrawable) || (paramDrawable == this.mIndeterminateDrawable) || (super.verifyDrawable(paramDrawable));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsProgressBar
 * JD-Core Version:    0.7.0.1
 */