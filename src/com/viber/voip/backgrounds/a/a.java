package com.viber.voip.backgrounds.a;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.viber.voip.backgrounds.m;
import com.viber.voip.backgrounds.n;
import com.viber.voip.backgrounds.o;
import com.viber.voip.backgrounds.q;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import java.util.ArrayList;
import java.util.List;

public class a
  extends BaseAdapter
  implements AbsListView.OnScrollListener, m
{
  public static final String a = a.class.getSimpleName();
  private o b;
  private final w c;
  private final x d;
  private int e;
  
  public a(Context paramContext, o paramo)
  {
    this.b = paramo;
    this.e = n.b(paramContext);
    this.c = w.a(paramContext);
    this.d = new z().b(false).a(true).b();
    com.viber.voip.backgrounds.a.a().a(this);
  }
  
  private void b(o paramo, q paramq)
  {
    if (this.b == null)
    {
      this.b = paramo;
      this.b.b(true);
    }
    ArrayList localArrayList = this.b.a();
    if (!localArrayList.contains(paramq)) {
      localArrayList.add(paramq);
    }
    notifyDataSetChanged();
  }
  
  public q a(int paramInt)
  {
    if ((this.b == null) || (this.b.a() == null)) {
      return null;
    }
    return (q)this.b.a().get(paramInt);
  }
  
  public void a()
  {
    com.viber.voip.backgrounds.a.a().b(this);
  }
  
  public void a(o paramo)
  {
    if ((this.b == null) || (this.b.a().size() == 0)) {
      dc.a(dk.a).post(new b(this, paramo));
    }
  }
  
  public void a(o paramo, int paramInt) {}
  
  public void a(o paramo, q paramq)
  {
    b(paramo, paramq);
  }
  
  public void a(q paramq) {}
  
  public void b(o paramo) {}
  
  public void c(o paramo)
  {
    if (this.b != null) {
      this.b.a().clear();
    }
    this.b = paramo;
    notifyDataSetChanged();
  }
  
  public int getCount()
  {
    if (this.b == null) {
      return 0;
    }
    return this.b.a().size();
  }
  
  public long getItemId(int paramInt)
  {
    if (this.b == null) {
      return -1L;
    }
    return ((q)this.b.a().get(paramInt)).a;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ImageView localImageView;
    if (paramView == null)
    {
      localImageView = new ImageView(paramViewGroup.getContext());
      localImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
      localImageView.setLayoutParams(new AbsListView.LayoutParams(this.e, this.e));
    }
    for (;;)
    {
      q localq = a(paramInt);
      this.c.a(localq.i, localImageView, this.d);
      return localImageView;
      localImageView = (ImageView)paramView;
    }
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (paramInt == 2)
    {
      this.c.a(true);
      return;
    }
    this.c.a(false);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.backgrounds.a.a
 * JD-Core Version:    0.7.0.1
 */