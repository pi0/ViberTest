package com.viber.voip.calls.ui;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.viber.voip.bb;

public class KeypadButton
  extends RelativeLayout
{
  private int a;
  private int b;
  private char[] c;
  
  public KeypadButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public KeypadButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public KeypadButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
    setClickable(true);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    int i = 0;
    if (paramAttributeSet == null) {}
    String str1;
    int j;
    do
    {
      return;
      this.a = getResources().getDimensionPixelSize(2131362128);
      this.b = getResources().getDimensionPixelSize(2131362129);
      TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, bb.KeypadButton);
      str1 = localTypedArray.getString(2);
      String str2 = localTypedArray.getString(3);
      ColorStateList localColorStateList = localTypedArray.getColorStateList(1);
      Drawable localDrawable = localTypedArray.getDrawable(0);
      j = localTypedArray.getInt(4, -1);
      localTypedArray.recycle();
      ImageView localImageView = new ImageView(paramContext);
      localImageView.setId(2131165296);
      localImageView.setDuplicateParentStateEnabled(true);
      addView(localImageView);
      RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams1.addRule(13);
      localImageView.setLayoutParams(localLayoutParams1);
      localImageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
      localImageView.setImageDrawable(localDrawable);
      LinearLayout localLinearLayout = new LinearLayout(paramContext);
      localLinearLayout.setDuplicateParentStateEnabled(true);
      addView(localLinearLayout);
      RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams2.addRule(5, 2131165296);
      localLayoutParams2.addRule(8, 2131165296);
      localLinearLayout.setLayoutParams(localLayoutParams2);
      localLinearLayout.setOrientation(1);
      localLinearLayout.setPadding(this.a, 0, 0, this.b);
      TextView localTextView1 = new TextView(paramContext);
      localTextView1.setDuplicateParentStateEnabled(true);
      localLinearLayout.addView(localTextView1);
      localTextView1.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
      if (str1 != null) {
        localTextView1.setText(str1);
      }
      if (localColorStateList != null) {
        localTextView1.setTextColor(localColorStateList);
      }
      localTextView1.setTextSize(1, 13.0F);
      if (TextUtils.isEmpty(str1)) {
        localTextView1.setVisibility(8);
      }
      TextView localTextView2 = new TextView(paramContext);
      localTextView2.setDuplicateParentStateEnabled(true);
      localLinearLayout.addView(localTextView2);
      localTextView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
      if (str2 != null) {
        localTextView2.setText(str2);
      }
      if (localColorStateList != null) {
        localTextView2.setTextColor(localColorStateList);
      }
      localTextView2.setTextSize(1, 13.0F);
      if (TextUtils.isEmpty(str2)) {
        localTextView2.setVisibility(8);
      }
      if (!TextUtils.isEmpty(str1)) {
        break;
      }
    } while (!a(j));
    this.c = new char[1];
    this.c[0] = Character.forDigit(j, 10);
    return;
    char[] arrayOfChar = str1.toCharArray();
    if (!a(j))
    {
      this.c = arrayOfChar;
      return;
    }
    this.c = new char[1 + arrayOfChar.length];
    while (i < arrayOfChar.length)
    {
      this.c[i] = arrayOfChar[i];
      i++;
    }
    this.c[(-1 + this.c.length)] = Character.forDigit(j, 10);
  }
  
  private boolean a(int paramInt)
  {
    return (paramInt >= 0) && (paramInt <= 9);
  }
  
  public char[] getChars()
  {
    return this.c;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.ui.KeypadButton
 * JD-Core Version:    0.7.0.1
 */