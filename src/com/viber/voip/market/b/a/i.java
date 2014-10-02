package com.viber.voip.market.b.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.viber.voip.a.ab;
import com.viber.voip.a.bc;
import com.viber.voip.util.b.ad;
import com.viber.voip.util.b.w;
import com.viber.voip.widget.dslv.o;

public class i
  extends BaseAdapter
  implements View.OnClickListener, o
{
  private c a;
  private ad b;
  private LayoutInflater c;
  
  public i(Context paramContext, c paramc)
  {
    this.c = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.a = paramc;
    this.b = w.a(paramContext);
  }
  
  private View a(int paramInt, ViewGroup paramViewGroup)
  {
    View localView = this.c.inflate(2130903244, paramViewGroup, false);
    if (paramInt == 0) {}
    for (Object localObject = new k(localView, this);; localObject = new j(localView, this))
    {
      localView.setTag(localObject);
      ((j)localObject).h.setTag(localObject);
      return localView;
    }
  }
  
  public a a(int paramInt)
  {
    return this.a.a(paramInt);
  }
  
  public void a_(int paramInt1, int paramInt2)
  {
    if (paramInt1 != paramInt2)
    {
      this.a.a(paramInt1, paramInt2);
      notifyDataSetChanged();
    }
  }
  
  public int getCount()
  {
    return this.a.b();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (!a(paramInt).c()) {
      return 0;
    }
    return 1;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = a(getItemViewType(paramInt), paramViewGroup);
    }
    j localj = (j)paramView.getTag();
    j.a(localj, a(paramInt), this.b);
    View localView = localj.g;
    if (paramInt > 0) {}
    for (int i = 0;; i = 4)
    {
      localView.setVisibility(i);
      return paramView;
    }
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
  
  public void onClick(View paramView)
  {
    a locala = ((j)paramView.getTag()).a();
    if (!locala.c()) {}
    for (boolean bool = true;; bool = false)
    {
      locala.a(bool);
      notifyDataSetChanged();
      bc.a().a(com.viber.voip.a.a.D.a(locala.e(), bool));
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.b.a.i
 * JD-Core Version:    0.7.0.1
 */