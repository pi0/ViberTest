package com.viber.voip.registration;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.l;
import java.util.List;

class dc
  extends BaseAdapter
{
  private List<CountryCode> a;
  private CountryCode b;
  private LayoutInflater c;
  private l d;
  
  public dc(Context paramContext, List<CountryCode> paramList, CountryCode paramCountryCode)
  {
    this.c = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.a = paramList;
    this.b = paramCountryCode;
    this.d = ViberApplication.getInstance().getBiDiAwareFormatter();
  }
  
  public CountryCode a(int paramInt)
  {
    if (this.a != null) {
      return (CountryCode)this.a.get(paramInt);
    }
    return null;
  }
  
  public void a(List<CountryCode> paramList)
  {
    this.a = paramList;
  }
  
  public int getCount()
  {
    if (this.a != null) {
      return this.a.size();
    }
    return 0;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    CountryCode localCountryCode = a(paramInt);
    View localView1;
    dd localdd2;
    if ((paramView == null) || (paramView.getTag() == null))
    {
      localView1 = this.c.inflate(2130903174, null);
      dd localdd1 = new dd(localView1);
      localView1.setTag(localdd1);
      localdd2 = localdd1;
    }
    for (View localView2 = localView1; (localView2 == null) || (localdd2 == null); localView2 = paramView)
    {
      return null;
      localdd2 = (dd)paramView.getTag();
    }
    dd.a(localdd2, localCountryCode);
    dd.b(localdd2).setText(this.d.a(localCountryCode.c(), localCountryCode.b()));
    if (localCountryCode.equals(this.b))
    {
      dd.c(localdd2).setBackgroundResource(2130837751);
      return localView2;
    }
    dd.c(localdd2).setBackgroundResource(2130837752);
    return localView2;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.dc
 * JD-Core Version:    0.7.0.1
 */