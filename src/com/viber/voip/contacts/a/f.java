package com.viber.voip.contacts.a;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.viber.voip.contacts.d.a;
import com.viber.voip.contacts.d.b;
import java.util.List;

public class f
  extends BaseAdapter
{
  public static final String a = f.class.getSimpleName();
  private static final int e = com.viber.voip.messages.extras.image.h.a(48.0F);
  private static final int f = com.viber.voip.messages.extras.image.h.a(64.0F);
  private List<a> b;
  private Context c;
  private LayoutInflater d;
  
  public f(Context paramContext, List<a> paramList)
  {
    this.c = paramContext;
    this.b = paramList;
    this.d = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  private String a(b paramb)
  {
    switch (g.a[paramb.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("Uknown entry type");
    case 1: 
      return this.c.getString(2131494364);
    case 2: 
      return this.c.getString(2131493632);
    case 3: 
      return this.c.getString(2131493633);
    case 4: 
      return this.c.getString(2131493663);
    case 5: 
      return this.c.getString(2131493637);
    case 6: 
      return this.c.getString(2131493634);
    case 7: 
      return this.c.getString(2131493638);
    case 8: 
      return this.c.getString(2131493635);
    case 9: 
      return this.c.getString(2131493636);
    }
    return "";
  }
  
  private void a(View paramView, int paramInt)
  {
    a locala = (a)this.b.get(paramInt);
    h localh = (h)paramView.getTag();
    int i;
    if (b.l.equals(locala.a))
    {
      i = 0;
      if (b.l.equals(locala.a)) {
        break label106;
      }
    }
    label106:
    for (int j = 0;; j = 8)
    {
      localh.e.setVisibility(i);
      localh.c.setVisibility(j);
      localh.f.setVisibility(j);
      if (!b.l.equals(locala.a)) {
        break label113;
      }
      return;
      i = 8;
      break;
    }
    label113:
    localh.b.setText(locala.f);
    ImageView localImageView = localh.c;
    label192:
    label237:
    String str;
    if (locala.g != 0)
    {
      localImageView.setVisibility(0);
      localImageView.setImageResource(locala.g);
      localImageView.setPadding(0, 0, 0, 0);
      if (!b.a.equals(locala.a)) {
        break label293;
      }
      localh.d.setVisibility(0);
      localImageView.setVisibility(8);
      if ((!b.c.equals(locala.a)) && (!b.a.equals(locala.a))) {
        break label306;
      }
      h.a(localh).setLayoutParams(new LinearLayout.LayoutParams(-1, e));
      str = locala.e;
      if (!TextUtils.isEmpty(str)) {
        break label328;
      }
      localh.a.setVisibility(8);
    }
    for (;;)
    {
      localImageView.setOnClickListener(locala.h);
      b(paramView, paramInt);
      return;
      localImageView.setVisibility(8);
      localImageView.setImageResource(0);
      break;
      label293:
      localh.d.setVisibility(8);
      break label192;
      label306:
      h.a(localh).setLayoutParams(new LinearLayout.LayoutParams(-1, f));
      break label237;
      label328:
      localh.a.setVisibility(0);
      localh.a.setText(str.toUpperCase());
    }
  }
  
  private void b(View paramView, int paramInt)
  {
    b localb = ((a)this.b.get(paramInt)).a;
    h localh = (h)paramView.getTag();
    if ((b.k.equals(localb)) || (b.l.equals(localb)))
    {
      localh.a(8);
      h.b(localh).setVisibility(8);
      if (!b.a.equals(localb)) {
        break label234;
      }
    }
    label234:
    for (int i = this.c.getResources().getColor(2131296442);; i = this.c.getResources().getColor(2131296356))
    {
      h.d(localh).setBackgroundColor(i);
      h.c(localh).setTextColor(i);
      return;
      if (paramInt > 0)
      {
        if (((a)this.b.get(paramInt - 1)).a.equals(localb))
        {
          localh.a(8);
          h.b(localh).setVisibility(0);
          break;
        }
        localh.a(0);
        h.b(localh).setVisibility(8);
        String str2 = a(localb);
        h.c(localh).setText(str2.toUpperCase());
        break;
      }
      localh.a(0);
      h.b(localh).setVisibility(8);
      String str1 = a(localb);
      h.c(localh).setText(str1.toUpperCase());
      break;
    }
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
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView != null) {}
    for (h localh = (h)paramView.getTag();; localh = null)
    {
      if (localh == null)
      {
        paramView = this.d.inflate(2130903157, paramViewGroup, false);
        paramView.setTag(new h(paramView));
      }
      a(paramView, paramInt);
      return paramView;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.a.f
 * JD-Core Version:    0.7.0.1
 */