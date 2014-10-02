package com.viber.voip.settings.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.user.YouFragment.PreferenceItem;
import java.util.List;

public class bz
  extends ArrayAdapter<YouFragment.PreferenceItem>
{
  private final int a;
  
  public bz(Context paramContext, List<YouFragment.PreferenceItem> paramList, int paramInt)
  {
    super(paramContext, 0, paramList);
    this.a = paramInt;
  }
  
  public long getItemId(int paramInt)
  {
    return ((YouFragment.PreferenceItem)getItem(paramInt)).id;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = LayoutInflater.from(getContext()).inflate(this.a, paramViewGroup, false);
    }
    ((ImageView)paramView.findViewById(2131165398)).setImageResource(((YouFragment.PreferenceItem)getItem(paramInt)).icon);
    ((TextView)paramView.findViewById(16908310)).setText(((YouFragment.PreferenceItem)getItem(paramInt)).title);
    return paramView;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.bz
 * JD-Core Version:    0.7.0.1
 */