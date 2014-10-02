package com.viber.voip.contacts.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.viber.voip.calls.entities.CallEntity;
import com.viber.voip.util.ak;
import java.util.List;

public class i
  extends BaseAdapter
{
  private static final String a = i.class.getName();
  private List<CallEntity> b;
  private Context c;
  private int d;
  private int e;
  
  public i(Context paramContext, List<CallEntity> paramList)
  {
    this.b = paramList;
    this.c = paramContext;
    Resources localResources = paramContext.getResources();
    this.d = localResources.getColor(2131296389);
    this.e = localResources.getColor(2131296390);
  }
  
  private View a(View paramView, int paramInt)
  {
    CallEntity localCallEntity = (CallEntity)this.b.get(paramInt);
    TextView localTextView1 = (TextView)paramView.findViewById(2131165628);
    TextView localTextView2 = (TextView)paramView.findViewById(2131165627);
    TextView localTextView3 = (TextView)paramView.findViewById(2131165626);
    TextView localTextView4 = (TextView)paramView.findViewById(2131165629);
    localTextView1.setText(ak.a(this.c, localCallEntity.h(), true));
    if (localCallEntity.n())
    {
      localTextView4.setVisibility(0);
      localTextView4.setText(2131494317);
      label99:
      if (localCallEntity.j() != 3) {
        break label193;
      }
      localTextView2.setVisibility(8);
    }
    for (;;)
    {
      switch (localCallEntity.j())
      {
      case 4: 
      default: 
        return paramView;
        if (localCallEntity.m())
        {
          localTextView4.setVisibility(0);
          localTextView4.setText(2131494316);
          break label99;
        }
        localTextView4.setVisibility(8);
        break label99;
        label193:
        localTextView2.setVisibility(0);
        if (localCallEntity.n())
        {
          localTextView2.setText(ak.a(localCallEntity.i()));
        }
        else
        {
          if (!localCallEntity.m()) {
            break label246;
          }
          localTextView2.setText(ak.a(0L));
        }
        break;
      }
    }
    label246:
    if (localCallEntity.i() == 0L) {}
    for (String str = this.c.getString(2131493743);; str = ak.a(localCallEntity.i()))
    {
      localTextView2.setText(str);
      break;
    }
    localTextView3.setText(2131493739);
    localTextView3.setTextColor(this.d);
    localTextView3.setText(2131493739);
    localTextView3.setTextColor(this.d);
    return paramView;
    if (localCallEntity.o()) {}
    for (int i = 2131493742;; i = 2131493740)
    {
      localTextView3.setText(i);
      localTextView3.setTextColor(this.d);
      return paramView;
    }
    localTextView3.setText(2131493741);
    localTextView3.setTextColor(this.e);
    return paramView;
  }
  
  private View a(ViewGroup paramViewGroup)
  {
    return LayoutInflater.from(this.c).inflate(2130903152, paramViewGroup, false);
  }
  
  public int getCount()
  {
    return this.b.size();
  }
  
  public Object getItem(int paramInt)
  {
    return this.b.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return ((CallEntity)this.b.get(paramInt)).h();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = a(paramViewGroup);
    }
    a(paramView, paramInt);
    return paramView;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.a.i
 * JD-Core Version:    0.7.0.1
 */