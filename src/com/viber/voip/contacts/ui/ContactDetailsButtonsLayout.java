package com.viber.voip.contacts.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.viber.voip.util.gj;

public class ContactDetailsButtonsLayout
  extends FrameLayout
{
  private TextView a;
  private TextView b;
  private TextView c;
  private float d;
  private float e;
  
  public ContactDetailsButtonsLayout(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public ContactDetailsButtonsLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public ContactDetailsButtonsLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  private void a(int paramInt)
  {
    LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)this.a.getLayoutParams();
    if (localLayoutParams1 != null) {}
    for (int i = 0 + localLayoutParams1.leftMargin + localLayoutParams1.rightMargin;; i = 0)
    {
      LinearLayout.LayoutParams localLayoutParams2 = (LinearLayout.LayoutParams)this.b.getLayoutParams();
      if (localLayoutParams2 != null) {
        i = i + localLayoutParams2.leftMargin + localLayoutParams2.rightMargin;
      }
      int j = (paramInt - getPaddingLeft() - getPaddingRight() - i) / 2;
      float f = this.d;
      String str1 = this.a.getText().toString();
      String str2 = this.b.getText().toString();
      int k = j - this.a.getPaddingLeft() - this.a.getPaddingRight();
      int m = j - this.b.getPaddingLeft() - this.b.getPaddingRight();
      while (f >= this.e)
      {
        this.a.setTextSize(0, f);
        int n = gj.a(this.a, str1);
        this.b.setTextSize(0, f);
        int i1 = gj.a(this.b, str2);
        if ((n < k) && (i1 < m)) {
          break;
        }
        f -= 1.0F;
      }
      return;
    }
  }
  
  private void a(Context paramContext)
  {
    this.d = getResources().getDimension(2131362199);
    this.e = (this.d / 2.0F);
    LayoutInflater.from(paramContext).inflate(2130903160, this);
    this.a = ((TextView)findViewById(2131165651));
    this.b = ((TextView)findViewById(2131165652));
    this.c = ((TextView)findViewById(2131165654));
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    TextView localTextView1 = this.a;
    int i;
    int j;
    label35:
    TextView localTextView3;
    int k;
    if (paramInt1 == 2)
    {
      i = 0;
      localTextView1.setVisibility(i);
      TextView localTextView2 = this.b;
      if (paramInt1 != 2) {
        break label108;
      }
      j = 0;
      localTextView2.setVisibility(j);
      localTextView3 = this.c;
      k = 0;
      if (paramInt1 != 1) {
        break label114;
      }
    }
    for (;;)
    {
      localTextView3.setVisibility(k);
      if (paramInt2 > 0) {
        this.a.setText(paramInt2);
      }
      if (paramInt3 > 0) {
        this.b.setText(paramInt3);
      }
      if (paramInt4 > 0) {
        this.c.setText(paramInt4);
      }
      return;
      i = 4;
      break;
      label108:
      j = 4;
      break label35;
      label114:
      k = 4;
    }
  }
  
  public void a(View.OnClickListener paramOnClickListener1, View.OnClickListener paramOnClickListener2, View.OnClickListener paramOnClickListener3)
  {
    this.a.setOnClickListener(paramOnClickListener1);
    this.b.setOnClickListener(paramOnClickListener2);
    this.c.setOnClickListener(paramOnClickListener3);
  }
  
  public TextView getLeftTextButton()
  {
    return this.a;
  }
  
  public TextView getMiddleTextButton()
  {
    return this.c;
  }
  
  public TextView getRightTextButton()
  {
    return this.b;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) && (!isInEditMode())) {
      a(paramInt1);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.ContactDetailsButtonsLayout
 * JD-Core Version:    0.7.0.1
 */