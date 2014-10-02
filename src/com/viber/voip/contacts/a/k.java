package com.viber.voip.contacts.a;

import android.app.Activity;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.BaseAdapter;
import android.widget.RelativeLayout;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.viber.voip.contacts.b.e;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.ca;

public abstract class k
  extends BaseAdapter
  implements SectionIndexer
{
  private static final String i = k.class.getSimpleName();
  protected com.viber.voip.contacts.a a;
  protected j b;
  protected Activity c;
  protected w d;
  protected x e;
  protected Resources f;
  protected boolean g;
  protected boolean h = true;
  private String[] j = new String[1];
  
  public k(Activity paramActivity, com.viber.voip.contacts.a parama)
  {
    this.j[0] = String.valueOf(a.d);
    this.f = paramActivity.getResources();
    this.a = parama;
    this.c = paramActivity;
    this.b = new j(LayoutInflater.from(paramActivity));
    this.d = w.a(paramActivity);
    this.e = x.a(paramActivity);
  }
  
  private void a(e parame, TextView paramTextView)
  {
    if (this.a.c_() == 2)
    {
      paramTextView.setVisibility(0);
      paramTextView.setCompoundDrawablesWithIntrinsicBounds(2130838326, 0, 0, 0);
      paramTextView.setCompoundDrawablePadding(paramTextView.getResources().getDimensionPixelSize(2131362265));
      paramTextView.setText(2131494840);
      paramTextView.setPadding(0, 0, paramTextView.getResources().getDimensionPixelSize(2131362264), 0);
      return;
    }
    if (parame.e())
    {
      paramTextView.setVisibility(0);
      paramTextView.setCompoundDrawablesWithIntrinsicBounds(2130838243, 0, 0, 0);
      paramTextView.setText("");
      paramTextView.setPadding(0, 0, paramTextView.getResources().getDimensionPixelSize(2131362263), 0);
      return;
    }
    paramTextView.setVisibility(8);
  }
  
  protected View a()
  {
    return b(0);
  }
  
  public e a(int paramInt)
  {
    return this.a.b(paramInt);
  }
  
  protected void a(int paramInt, View paramView, e parame)
  {
    l locall = (l)paramView.getTag();
    locall.k = parame;
    String str = parame.a();
    locall.o.setText(str);
    TextView localTextView = locall.o;
    if (ca.a(str)) {}
    for (int k = 5;; k = 3)
    {
      localTextView.setGravity(k | 0x10);
      this.d.a(parame.b(), locall.n, this.e);
      a(parame, locall.d);
      locall.c.setVisibility(8);
      return;
    }
  }
  
  protected void a(l paraml, int paramInt1, int paramInt2)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams1 = (ViewGroup.MarginLayoutParams)paraml.b.getLayoutParams();
    localMarginLayoutParams1.leftMargin = paramInt1;
    localMarginLayoutParams1.rightMargin = paramInt2;
    ViewGroup.MarginLayoutParams localMarginLayoutParams2 = (ViewGroup.MarginLayoutParams)paraml.j.getLayoutParams();
    localMarginLayoutParams2.leftMargin = paramInt1;
    localMarginLayoutParams2.rightMargin = paramInt2;
  }
  
  public void a(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }
  
  protected View b(int paramInt)
  {
    return this.b.a(paramInt);
  }
  
  public void b(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }
  
  public int getCount()
  {
    if (this.h) {
      return this.a.getCount();
    }
    return 0;
  }
  
  public long getItemId(int paramInt)
  {
    e locale = a(paramInt);
    if (locale != null) {
      return locale.getId();
    }
    return -1L;
  }
  
  public int getPositionForSection(int paramInt)
  {
    return 0;
  }
  
  public int getSectionForPosition(int paramInt)
  {
    return 0;
  }
  
  public Object[] getSections()
  {
    return this.j;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int k = getItemViewType(paramInt);
    if (paramView != null) {}
    for (l locall = (l)paramView.getTag();; locall = null)
    {
      e locale = a(paramInt);
      if ((paramView == null) || (locall == null))
      {
        paramView = b(k);
        locall = (l)paramView.getTag();
      }
      locall.a(locale);
      if (locale != null) {
        a(paramInt, paramView, locale);
      }
      return paramView;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.a.k
 * JD-Core Version:    0.7.0.1
 */