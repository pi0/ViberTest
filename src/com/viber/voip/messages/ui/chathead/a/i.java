package com.viber.voip.messages.ui.chathead.a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.adapters.a;
import com.viber.voip.messages.adapters.a.a.b;
import com.viber.voip.messages.ui.MessagesFragment;
import com.viber.voip.util.gn;

public abstract class i
  extends MessagesFragment
{
  private TextView f;
  private TextView g;
  
  public abstract void c(int paramInt);
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    LinearLayout localLinearLayout = (LinearLayout)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    View localView = paramLayoutInflater.inflate(2130903299, localLinearLayout, false);
    localLinearLayout.addView(localView, 0);
    ((ListView)localLinearLayout.findViewById(16908298)).setOnItemLongClickListener(new j(this));
    this.f = ((TextView)localView.findViewById(2131165494));
    this.g = ((TextView)localView.findViewById(2131165495));
    this.f.setText(2131493554);
    this.g.setVisibility(8);
    k localk = new k(this);
    localLinearLayout.findViewById(2131166053).setOnClickListener(localk);
    localLinearLayout.findViewById(2131166056).setOnClickListener(localk);
    localLinearLayout.findViewById(2131166055).setOnClickListener(localk);
    return localLinearLayout;
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    a locala = (a)((b)paramView.getTag()).c();
    gn.a(ViberApplication.getInstance(), locala.a(), true);
  }
  
  public void t()
  {
    e();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.a.i
 * JD-Core Version:    0.7.0.1
 */