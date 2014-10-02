package com.viber.voip.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Path;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.viber.voip.bb;
import com.viber.voip.messages.extras.image.h;

public class AvatarView
  extends ah
{
  private Path a;
  private Paint b;
  private Paint c;
  private Paint d;
  private Paint e;
  private Bitmap f;
  private int g;
  private int h;
  private int i;
  private float j;
  private ColorStateList k;
  private boolean l;
  private boolean m;
  private String n;
  private Rect o;
  private RectF p;
  
  public AvatarView(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public AvatarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public AvatarView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, bb.AvatarView);
    float f1 = getResources().getDimension(2131362312);
    for (;;)
    {
      try
      {
        this.n = localTypedArray.getString(1);
        this.l = localTypedArray.getBoolean(2, false);
        this.j = localTypedArray.getDimension(3, f1);
        this.k = localTypedArray.getColorStateList(4);
        this.m = localTypedArray.getBoolean(5, false);
        localTypedArray.recycle();
        if (this.k == null)
        {
          i1 = 0;
          this.i = i1;
          this.a = new Path();
          this.b = new Paint(1);
          this.c = new Paint(1);
          this.c.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
          this.d = new Paint();
          this.d.setColor(0);
          this.e = new Paint(1);
          this.e.setTextSize(this.j);
          this.e.setTextAlign(Paint.Align.CENTER);
          this.f = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
          return;
        }
      }
      finally
      {
        localTypedArray.recycle();
      }
      int i1 = this.k.getDefaultColor();
    }
  }
  
  private void a(Canvas paramCanvas)
  {
    this.e.setColor(this.i);
    if (this.d.getColor() != 0) {
      paramCanvas.drawRect(new Rect(0, 0, this.o.width(), this.o.height()), this.d);
    }
    String[] arrayOfString = getCaption().split(" ");
    int i1 = h.a(5.0F);
    int i2;
    if (arrayOfString.length % 2 == 0)
    {
      i2 = 1;
      if (i2 == 0) {
        break label189;
      }
    }
    float f2;
    label189:
    for (float f1 = this.o.height() / 2 - this.j / 2.0F * arrayOfString.length / 2.0F - (this.j + i1);; f1 = this.o.height() / 2 - this.j / 2.0F * arrayOfString.length % arrayOfString.length / 2.0F - (this.j + i1))
    {
      int i3 = arrayOfString.length;
      f2 = f1;
      for (int i4 = 0; i4 < i3; i4++)
      {
        String str2 = arrayOfString[i4];
        f2 += this.j + i1;
        paramCanvas.drawText(str2, this.o.width() / 2, f2 + i1, this.e);
      }
      i2 = 0;
      break;
    }
    if (this.m)
    {
      String str1 = arrayOfString[(-1 + arrayOfString.length)];
      paramCanvas.drawText(" *", this.e.measureText(str1) / 2.0F + this.o.width() / 2, f2, this.e);
    }
  }
  
  private void b()
  {
    if (this.k != null)
    {
      this.i = this.k.getColorForState(getDrawableState(), this.k.getDefaultColor());
      invalidate();
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (isDuplicateParentStateEnabled()) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
    b();
  }
  
  public String getCaption()
  {
    return this.n;
  }
  
  public int getCaptionTextColor()
  {
    return this.i;
  }
  
  public float getCaptionTextSize()
  {
    return this.j;
  }
  
  public boolean getCaptionVisibility()
  {
    return this.l;
  }
  
  @SuppressLint({"DrawAllocation"})
  protected void onDraw(Canvas paramCanvas)
  {
    if (this.o == null) {}
    int i1;
    int i2;
    do
    {
      return;
      i1 = this.o.width();
      i2 = this.o.height();
    } while ((i1 == 0) || (i2 == 0));
    if ((i1 == this.g) && (i2 == this.h)) {
      this.f.eraseColor(0);
    }
    for (;;)
    {
      Canvas localCanvas = new Canvas(this.f);
      int i3 = localCanvas.save();
      localCanvas.drawPath(this.a, this.b);
      localCanvas.saveLayer(this.p, this.c, 12);
      try
      {
        super.onDraw(localCanvas);
        label111:
        if ((this.l) && (!TextUtils.isEmpty(getCaption()))) {
          a(localCanvas);
        }
        localCanvas.restoreToCount(i3);
        paramCanvas.drawBitmap(this.f, this.o.left, this.o.top, null);
        return;
        this.f.recycle();
        try
        {
          this.f = Bitmap.createBitmap(i1, i2, Bitmap.Config.ARGB_8888);
          this.g = i1;
          this.h = i2;
        }
        catch (OutOfMemoryError localOutOfMemoryError)
        {
          for (;;)
          {
            this.f = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
          }
        }
      }
      catch (Exception localException)
      {
        break label111;
      }
    }
  }
  
  public void setCaption(String paramString)
  {
    this.n = paramString;
    invalidate();
  }
  
  public void setCaptionTextColor(int paramInt)
  {
    this.k = null;
    this.i = paramInt;
  }
  
  public void setCaptionTextColor(ColorStateList paramColorStateList)
  {
    this.k = paramColorStateList;
    this.i = this.k.getDefaultColor();
  }
  
  public void setCaptionTextSize(float paramFloat)
  {
    this.j = paramFloat;
  }
  
  public void setCaptionVisibility(boolean paramBoolean)
  {
    this.l = paramBoolean;
    invalidate();
  }
  
  protected boolean setFrame(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool = super.setFrame(paramInt1, paramInt2, paramInt3, paramInt4);
    this.o = new Rect(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
    this.p = new RectF(this.o);
    if (bool) {
      h.a(this.o.width(), this.o.height(), this.a);
    }
    return bool;
  }
  
  public void setIsMandatory(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }
  
  public void setTextOverlayColor(int paramInt)
  {
    this.d.setColor(paramInt);
    invalidate();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.AvatarView
 * JD-Core Version:    0.7.0.1
 */