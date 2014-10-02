package com.viber.voip.ui.call;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import java.util.List;

public class WavesView
  extends View
  implements c
{
  public static int a = -1;
  private Paint b;
  private a c;
  private List<Drawable> d;
  private float e;
  private float f;
  private b g;
  private com.viber.voip.ui.call.a.e h;
  private float i;
  private float j;
  private float k;
  private float l;
  private float m;
  private f n;
  
  /* Error */
  public WavesView(android.content.Context paramContext, android.util.AttributeSet paramAttributeSet)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: aload_1
    //   4: aload_2
    //   5: invokespecial 37	android/view/View:<init>	(Landroid/content/Context;Landroid/util/AttributeSet;)V
    //   8: aload_0
    //   9: new 39	com/viber/voip/ui/call/a/e
    //   12: dup
    //   13: ldc2_w 40
    //   16: invokespecial 44	com/viber/voip/ui/call/a/e:<init>	(J)V
    //   19: putfield 46	com/viber/voip/ui/call/WavesView:h	Lcom/viber/voip/ui/call/a/e;
    //   22: aload_0
    //   23: new 48	android/graphics/Paint
    //   26: dup
    //   27: invokespecial 50	android/graphics/Paint:<init>	()V
    //   30: putfield 52	com/viber/voip/ui/call/WavesView:b	Landroid/graphics/Paint;
    //   33: aload_0
    //   34: getfield 52	com/viber/voip/ui/call/WavesView:b	Landroid/graphics/Paint;
    //   37: iconst_0
    //   38: invokevirtual 56	android/graphics/Paint:setColor	(I)V
    //   41: aload_0
    //   42: getfield 52	com/viber/voip/ui/call/WavesView:b	Landroid/graphics/Paint;
    //   45: bipush 7
    //   47: invokevirtual 59	android/graphics/Paint:setFlags	(I)V
    //   50: aload_0
    //   51: iconst_1
    //   52: invokevirtual 63	com/viber/voip/ui/call/WavesView:setClickable	(Z)V
    //   55: aload_0
    //   56: iconst_1
    //   57: invokevirtual 66	com/viber/voip/ui/call/WavesView:setEnabled	(Z)V
    //   60: aload_0
    //   61: invokevirtual 70	com/viber/voip/ui/call/WavesView:getResources	()Landroid/content/res/Resources;
    //   64: ldc 71
    //   66: invokevirtual 77	android/content/res/Resources:getColor	(I)I
    //   69: putstatic 33	com/viber/voip/ui/call/WavesView:a	I
    //   72: aload_1
    //   73: aload_2
    //   74: getstatic 83	com/viber/voip/bb:WavesView	[I
    //   77: invokevirtual 89	android/content/Context:obtainStyledAttributes	(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    //   80: astore 4
    //   82: new 91	android/util/TypedValue
    //   85: dup
    //   86: invokespecial 92	android/util/TypedValue:<init>	()V
    //   89: astore 5
    //   91: aload 4
    //   93: iconst_0
    //   94: aload 5
    //   96: invokevirtual 98	android/content/res/TypedArray:getValue	(ILandroid/util/TypedValue;)Z
    //   99: pop
    //   100: aload_0
    //   101: invokevirtual 102	com/viber/voip/ui/call/WavesView:isInEditMode	()Z
    //   104: ifne +83 -> 187
    //   107: aload_0
    //   108: invokevirtual 70	com/viber/voip/ui/call/WavesView:getResources	()Landroid/content/res/Resources;
    //   111: aload 5
    //   113: getfield 105	android/util/TypedValue:resourceId	I
    //   116: invokevirtual 109	android/content/res/Resources:obtainTypedArray	(I)Landroid/content/res/TypedArray;
    //   119: astore 8
    //   121: aload_0
    //   122: new 111	java/util/ArrayList
    //   125: dup
    //   126: iconst_4
    //   127: invokespecial 113	java/util/ArrayList:<init>	(I)V
    //   130: putfield 115	com/viber/voip/ui/call/WavesView:d	Ljava/util/List;
    //   133: iload_3
    //   134: aload 8
    //   136: invokevirtual 119	android/content/res/TypedArray:length	()I
    //   139: if_icmpge +43 -> 182
    //   142: aload 8
    //   144: iload_3
    //   145: invokevirtual 123	android/content/res/TypedArray:getDrawable	(I)Landroid/graphics/drawable/Drawable;
    //   148: astore 10
    //   150: aload 10
    //   152: iconst_1
    //   153: newarray int
    //   155: dup
    //   156: iconst_0
    //   157: ldc 124
    //   159: iastore
    //   160: invokevirtual 130	android/graphics/drawable/Drawable:setState	([I)Z
    //   163: pop
    //   164: aload_0
    //   165: getfield 115	com/viber/voip/ui/call/WavesView:d	Ljava/util/List;
    //   168: aload 10
    //   170: invokeinterface 136 2 0
    //   175: pop
    //   176: iinc 3 1
    //   179: goto -46 -> 133
    //   182: aload 8
    //   184: invokevirtual 139	android/content/res/TypedArray:recycle	()V
    //   187: aload_0
    //   188: aload 4
    //   190: iconst_1
    //   191: ldc 140
    //   193: invokevirtual 144	android/content/res/TypedArray:getDimension	(IF)F
    //   196: putfield 146	com/viber/voip/ui/call/WavesView:e	F
    //   199: aload_0
    //   200: aload 4
    //   202: iconst_3
    //   203: ldc 140
    //   205: invokevirtual 144	android/content/res/TypedArray:getDimension	(IF)F
    //   208: putfield 148	com/viber/voip/ui/call/WavesView:i	F
    //   211: aload_0
    //   212: aload 4
    //   214: iconst_4
    //   215: ldc 140
    //   217: invokevirtual 144	android/content/res/TypedArray:getDimension	(IF)F
    //   220: putfield 150	com/viber/voip/ui/call/WavesView:j	F
    //   223: aload_0
    //   224: aload 4
    //   226: iconst_5
    //   227: ldc 140
    //   229: invokevirtual 144	android/content/res/TypedArray:getDimension	(IF)F
    //   232: putfield 152	com/viber/voip/ui/call/WavesView:k	F
    //   235: aload 4
    //   237: invokevirtual 139	android/content/res/TypedArray:recycle	()V
    //   240: return
    //   241: astore 9
    //   243: aload 8
    //   245: invokevirtual 139	android/content/res/TypedArray:recycle	()V
    //   248: aload 9
    //   250: athrow
    //   251: astore 6
    //   253: aload 4
    //   255: invokevirtual 139	android/content/res/TypedArray:recycle	()V
    //   258: aload 6
    //   260: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	261	0	this	WavesView
    //   0	261	1	paramContext	android.content.Context
    //   0	261	2	paramAttributeSet	android.util.AttributeSet
    //   1	176	3	i1	int
    //   80	174	4	localTypedArray1	android.content.res.TypedArray
    //   89	23	5	localTypedValue	android.util.TypedValue
    //   251	8	6	localObject1	java.lang.Object
    //   119	125	8	localTypedArray2	android.content.res.TypedArray
    //   241	8	9	localObject2	java.lang.Object
    //   148	21	10	localDrawable	Drawable
    // Exception table:
    //   from	to	target	type
    //   121	133	241	finally
    //   133	176	241	finally
    //   82	121	251	finally
    //   182	187	251	finally
    //   187	235	251	finally
    //   243	251	251	finally
  }
  
  public void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt)
  {
    float f1 = getMeasuredWidth() / 2;
    this.f = f1;
    this.l = paramFloat1;
    this.m = this.f;
    this.f -= this.e;
    this.c = new a(this.l, this.m, paramFloat3, paramFloat4, f1, getResources());
    this.g = new b(this.d, getResources(), this.l, this.m, this.f, paramInt, this);
    this.h.a(this.c);
    this.h.a(com.viber.voip.ui.call.a.e.a);
    invalidate();
  }
  
  public void a(int paramInt)
  {
    this.c.a(false);
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    a locala = this.c;
    if (!paramBoolean) {}
    for (boolean bool = true;; bool = false)
    {
      locala.a(bool);
      return;
    }
  }
  
  public void b(int paramInt)
  {
    this.c.a(true);
    if (this.n != null) {
      this.n.a(paramInt);
    }
  }
  
  @SuppressLint({"DrawAllocation"})
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.drawPaint(this.b);
    if (isInEditMode())
    {
      this.f = (getMeasuredWidth() / 2);
      float f1 = getMeasuredWidth() / 2;
      float f2 = this.f;
      this.f -= this.e;
      new e(f1, f2, 200.0F, 200.0F, 0.0F, isInEditMode()).a(paramCanvas);
      new a(f1, f2, this.i, this.j, getMeasuredWidth() / 2, getResources()).a(paramCanvas);
      Paint localPaint = new Paint();
      localPaint.setStyle(Paint.Style.STROKE);
      localPaint.setColor(-16711681);
      localPaint.setStrokeWidth(10.0F);
      paramCanvas.drawCircle(f1, f2, this.f, localPaint);
    }
    for (;;)
    {
      Log.d("WaveDraw", "Visible: " + getVisibility());
      return;
      if (this.c != null)
      {
        long l1 = SystemClock.uptimeMillis();
        this.h.a(l1);
        if (this.c.b()) {
          this.c.a(paramCanvas);
        }
        this.g.a(l1);
        if (this.g.b()) {
          this.g.a(paramCanvas);
        }
        invalidate();
      }
      else
      {
        a(getMeasuredWidth() / 2, getMeasuredHeight() / 2, this.i, this.j, (int)this.k);
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    double d1 = Math.sqrt((this.l - f1) * (this.l - f1) + (this.m - f2) * (this.m - f2));
    if ((this.c != null) && (this.g != null))
    {
      float f3 = this.f - this.c.a().width() / 2;
      if (d1 >= f3)
      {
        float f4 = (float)(f3 / d1);
        paramMotionEvent.setLocation(f4 * (f1 - this.l) + this.l, f4 * (f2 - this.l) + this.m);
      }
      if (this.c.onTouch(this, paramMotionEvent)) {
        this.g.onTouch(this, paramMotionEvent);
      }
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  protected void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    Log.d("WaveVisibility", "Visibility: " + paramInt);
  }
  
  public void setTargetListener(f paramf)
  {
    this.n = paramf;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.call.WavesView
 * JD-Core Version:    0.7.0.1
 */