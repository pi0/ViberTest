package com.viber.voip.messages.ui;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.viber.voip.util.gl;
import java.util.ArrayList;
import java.util.List;

class q
  extends BaseAdapter
{
  private final Context a;
  private final int b;
  private int c;
  private int d;
  private final int e;
  private final int f;
  private bd g;
  private final View.OnClickListener h;
  private t i;
  
  public q(Context paramContext, float paramFloat, int paramInt)
  {
    this.a = paramContext;
    this.b = paramInt;
    this.c = ((int)(paramFloat / this.b));
    this.e = this.a.getResources().getDimensionPixelSize(2131361995);
    this.f = this.a.getResources().getDimensionPixelSize(2131361993);
    this.d = ((this.c - this.f) / 2);
    int j = 2 * this.d / this.b;
    this.c = (j + this.c);
    this.d = (j + this.d);
    this.g = bd.a();
    this.h = new r(this);
  }
  
  private s a(int paramInt1, int paramInt2)
  {
    ImageView localImageView = new ImageView(this.a);
    localImageView.setLayoutParams(new LinearLayout.LayoutParams(this.f, this.f));
    LinearLayout localLinearLayout = new LinearLayout(this.a);
    if (paramInt1 == 0)
    {
      localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(this.d + this.f, -2));
      localLinearLayout.setGravity(19);
    }
    for (;;)
    {
      localLinearLayout.setPadding(0, this.e, 0, this.e);
      localLinearLayout.addView(localImageView);
      s locals = new s(null);
      s.a(locals, localLinearLayout);
      s.a(locals, localImageView);
      return locals;
      if (paramInt1 == paramInt2 - 1)
      {
        localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(this.d + this.f, -2));
        localLinearLayout.setGravity(21);
      }
      else
      {
        localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(this.c, -2));
        localLinearLayout.setGravity(17);
      }
    }
  }
  
  private void a(View paramView)
  {
    bf localbf = s.a((s)paramView.getTag());
    if (this.i != null) {
      this.i.a(localbf);
    }
  }
  
  private void a(View paramView, int paramInt)
  {
    s locals = (s)paramView.getTag();
    ImageView localImageView = s.c(locals);
    if (this.g.d() > paramInt) {}
    for (bf localbf = this.g.e()[paramInt];; localbf = null)
    {
      s.a(locals, localbf);
      if (s.a(locals) == null) {
        break;
      }
      localImageView.setImageBitmap(this.g.a(s.a(locals)));
      localImageView.setBackgroundResource(2130838183);
      paramView.setOnClickListener(this.h);
      return;
    }
    gl.a(localImageView, null);
    localImageView.setImageBitmap(null);
    paramView.setOnClickListener(null);
  }
  
  public List<bf> a(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramInt * this.b;
    int k = paramInt * this.b + this.b;
    while ((j < k) && (j < this.g.d()))
    {
      localArrayList.add(this.g.e()[j]);
      j++;
    }
    return localArrayList;
  }
  
  public void a(t paramt)
  {
    this.i = paramt;
  }
  
  public int getCount()
  {
    int j = 1;
    int k = this.g.d() / this.b;
    int m;
    if (this.g.d() % this.b > 0)
    {
      m = j;
      if (m == 0) {
        break label45;
      }
    }
    for (;;)
    {
      return j + k;
      m = 0;
      break;
      label45:
      j = 0;
    }
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int j = 0;
    if (paramView == null)
    {
      localLinearLayout = new LinearLayout(this.a);
      for (int k = 0;; k++)
      {
        int m = this.b;
        j = 0;
        if (k >= m) {
          break;
        }
        s locals = a(k, this.b);
        s.b(locals).setTag(locals);
        localLinearLayout.addView(s.b(locals));
      }
    }
    LinearLayout localLinearLayout = (LinearLayout)paramView;
    while (j < localLinearLayout.getChildCount())
    {
      a(localLinearLayout.getChildAt(j), j + paramInt * this.b);
      j++;
    }
    return localLinearLayout;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.q
 * JD-Core Version:    0.7.0.1
 */