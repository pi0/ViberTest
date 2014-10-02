package com.viber.voip.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView.OnEditorActionListener;
import com.viber.voip.bb;
import com.viber.voip.messages.extras.image.h;

public class TextViewWithDescription
  extends am
  implements View.OnFocusChangeListener, View.OnTouchListener
{
  private aa a;
  private ProgressBar b;
  private boolean c;
  private Drawable d;
  private Drawable e;
  private ImageView f;
  private ImageView g;
  private RelativeLayout.LayoutParams h;
  private RelativeLayout.LayoutParams i;
  private View.OnClickListener j;
  private Rect k;
  private int l;
  private ag m;
  private View.OnFocusChangeListener n;
  private String o;
  private int p;
  private int q;
  private View.OnClickListener r = new af(this);
  
  public TextViewWithDescription(Context paramContext)
  {
    super(paramContext);
    b(paramContext, null);
  }
  
  public TextViewWithDescription(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b(paramContext, paramAttributeSet);
  }
  
  public TextViewWithDescription(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    b(paramContext, paramAttributeSet);
  }
  
  private void a(int paramInt)
  {
    this.l = paramInt;
    if ((this.d == null) || (this.e == null)) {
      return;
    }
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      setRightDrawable(this.d);
      return;
    }
    setRightDrawable(this.e);
  }
  
  private boolean a(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 3) {}
    int[] arrayOfInt;
    do
    {
      return false;
      this.k = this.d.getBounds();
      arrayOfInt = new int[] { 0, 0 };
      getLocationOnScreen(arrayOfInt);
    } while ((paramMotionEvent.getX() < getWidth() - this.k.width() - arrayOfInt[0]) || (paramMotionEvent.getX() > getWidth() + arrayOfInt[0]));
    return true;
  }
  
  private void b(Context paramContext, AttributeSet paramAttributeSet)
  {
    this.h = new RelativeLayout.LayoutParams(-2, -2);
    this.h.addRule(15);
    this.h.addRule(8, this.a.getId());
    this.h.bottomMargin = h.a(paramContext, 11.0F);
    this.h.leftMargin = h.a(paramContext, 11.0F);
    this.i = new RelativeLayout.LayoutParams(-2, -2);
    this.i.addRule(11);
    this.i.addRule(8, this.a.getId());
    this.i.bottomMargin = h.a(paramContext, 5.0F);
    this.i.rightMargin = h.a(paramContext, 5.0F);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(h.a(paramContext, 32.0F), h.a(paramContext, 32.0F));
    localLayoutParams.addRule(11);
    localLayoutParams.addRule(8, this.a.getId());
    localLayoutParams.rightMargin = h.a(paramContext, 5.0F);
    localLayoutParams.bottomMargin = h.a(paramContext, 5.0F);
    this.b = new ProgressBar(paramContext);
    this.b.setLayoutParams(localLayoutParams);
    this.b.setIndeterminate(true);
    this.b.setIndeterminateDrawable(getResources().getDrawable(2130838561));
    this.b.setVisibility(8);
    addView(this.b);
  }
  
  @SuppressLint({"ClickableViewAccessibility"})
  protected View a(Context paramContext, AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, bb.TextViewWithDescription);
    try
    {
      String str = localTypedArray.getString(0);
      boolean bool1 = localTypedArray.getBoolean(6, true);
      int i1 = localTypedArray.getInt(3, 0);
      int i2 = localTypedArray.getInt(4, 0);
      int i3 = localTypedArray.getInt(5, 0);
      boolean bool2 = localTypedArray.getBoolean(2, false);
      int i4 = localTypedArray.getInt(1, -1);
      this.p = localTypedArray.getInt(7, 2130837591);
      this.q = localTypedArray.getInt(7, 2130837778);
      localTypedArray.recycle();
      this.a = new aa(paramContext);
      if (i1 > 0) {
        a(new InputFilter.LengthFilter(i1));
      }
      if (i2 != 0) {
        this.a.setInputType(i2 | 0x1);
      }
      setEditable(bool1);
      this.a.setHint(str);
      this.a.setMaxLines(i4);
      this.a.setSingleLine(bool2);
      this.a.setGravity(80);
      if (i3 != 0) {
        this.a.setImeOptions(i3);
      }
      this.a.setOnTouchListener(this);
      this.a.setOnFocusChangeListener(this);
      this.a.setTypeface(Typeface.create("sans-serif", 0));
      return this.a;
    }
    finally
    {
      localTypedArray.recycle();
    }
  }
  
  public void a(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    setRightDrawable(paramDrawable1);
    this.d = paramDrawable1;
    this.e = paramDrawable2;
  }
  
  public void a(InputFilter paramInputFilter)
  {
    InputFilter[] arrayOfInputFilter1 = this.a.getFilters();
    InputFilter[] arrayOfInputFilter2 = new InputFilter[1 + arrayOfInputFilter1.length];
    System.arraycopy(arrayOfInputFilter1, 0, arrayOfInputFilter2, 0, arrayOfInputFilter1.length);
    arrayOfInputFilter2[(-1 + arrayOfInputFilter2.length)] = paramInputFilter;
    this.a.setFilters(arrayOfInputFilter2);
  }
  
  public void a(TextWatcher paramTextWatcher)
  {
    this.a.addTextChangedListener(paramTextWatcher);
  }
  
  public boolean a()
  {
    return this.c;
  }
  
  public void b()
  {
    setRightDrawable(null);
    this.b.setVisibility(0);
  }
  
  public void c()
  {
    this.j = null;
    this.d = null;
    this.e = null;
  }
  
  public aa getEditText()
  {
    return this.a;
  }
  
  public int getImeOptions()
  {
    return this.a.getImeOptions();
  }
  
  public Editable getText()
  {
    return this.a.getText();
  }
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramView.getId() == getBodyViewId())
    {
      if (!paramBoolean) {
        break label48;
      }
      this.o = this.a.getText().toString();
    }
    for (;;)
    {
      if (this.n != null) {
        this.n.onFocusChange(paramView, paramBoolean);
      }
      return;
      label48:
      if ((this.m != null) && (this.o != this.a.getText().toString())) {
        this.m.a();
      }
    }
  }
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    return onTouchEvent(paramMotionEvent);
  }
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((this.d != null) && (this.j != null))
    {
      if (!a(paramMotionEvent)) {
        break label85;
      }
      switch (paramMotionEvent.getAction())
      {
      default: 
        paramMotionEvent.setAction(3);
      }
    }
    for (;;)
    {
      return super.onTouchEvent(paramMotionEvent);
      a(1);
      break;
      this.j.onClick(this);
      a(0);
      break;
      label85:
      if (this.l == 1) {
        a(0);
      }
    }
  }
  
  public void setEditable(boolean paramBoolean)
  {
    this.c = paramBoolean;
    this.a.setFocusableInTouchMode(paramBoolean);
    this.a.setFocusable(paramBoolean);
    aa localaa = this.a;
    if (paramBoolean) {}
    for (int i1 = this.p;; i1 = this.q)
    {
      localaa.setBackgroundResource(i1);
      this.a.setLongClickable(paramBoolean);
      return;
    }
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    for (int i1 = 0; i1 < getChildCount(); i1++) {
      getChildAt(i1).setEnabled(paramBoolean);
    }
  }
  
  public void setImeOptions(int paramInt)
  {
    this.a.setImeOptions(paramInt);
  }
  
  public void setLeftDrawable(Bitmap paramBitmap)
  {
    setLeftDrawable(new BitmapDrawable(getResources(), paramBitmap));
  }
  
  public void setLeftDrawable(Drawable paramDrawable)
  {
    if (this.f == null)
    {
      this.f = new ImageView(getContext());
      this.f.setLayoutParams(this.h);
      addView(this.f);
    }
    this.f.setImageDrawable(paramDrawable);
  }
  
  public void setMaxLines(int paramInt)
  {
    this.a.setMaxLines(paramInt);
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    if (this.a.isFocusableInTouchMode()) {
      this.a.setFocusableInTouchMode(false);
    }
    this.a.setOnClickListener(this.r);
    super.setOnClickListener(paramOnClickListener);
  }
  
  public void setOnEditorActionListener(TextView.OnEditorActionListener paramOnEditorActionListener)
  {
    this.a.setOnEditorActionListener(paramOnEditorActionListener);
  }
  
  public void setOnFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    this.n = paramOnFocusChangeListener;
  }
  
  public void setOnTextChangedListener(ag paramag)
  {
    this.m = paramag;
  }
  
  public void setRightDrawable(Drawable paramDrawable)
  {
    this.b.setVisibility(8);
    if (this.g == null)
    {
      this.g = new ImageView(getContext());
      this.g.setLayoutParams(this.i);
      addView(this.g);
    }
    this.g.setImageDrawable(paramDrawable);
  }
  
  public void setRightDrawableClickListener(View.OnClickListener paramOnClickListener)
  {
    this.j = paramOnClickListener;
  }
  
  public void setSingleLine(boolean paramBoolean)
  {
    this.a.setSingleLine(paramBoolean);
  }
  
  public void setText(String paramString)
  {
    this.a.setText(paramString);
    this.o = paramString;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.TextViewWithDescription
 * JD-Core Version:    0.7.0.1
 */