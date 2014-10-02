package com.viber.voip.messages.adapters;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.jni.OnlineContactInfo;
import com.viber.voip.a.c;
import com.viber.voip.messages.a.a;
import com.viber.voip.messages.a.b;
import com.viber.voip.messages.conversation.ap;
import com.viber.voip.messages.conversation.ar;
import com.viber.voip.util.b.x;

public class l
  extends BaseAdapter
{
  private static final String a = l.class.getSimpleName();
  private Context b;
  private LayoutInflater c;
  private com.viber.voip.util.b.w d;
  private x e;
  private ap f;
  private OnlineContactInfo[] g;
  private c h;
  private boolean i = true;
  
  public l(Context paramContext, ap paramap)
  {
    this(paramContext, paramap, true);
  }
  
  public l(Context paramContext, ap paramap, boolean paramBoolean)
  {
    this.c = LayoutInflater.from(paramContext);
    this.d = com.viber.voip.util.b.w.a(paramContext);
    this.e = x.a(paramContext);
    this.b = paramContext;
    this.f = paramap;
    this.i = paramBoolean;
  }
  
  private OnlineContactInfo a(String paramString)
  {
    if ((this.g != null) && (this.g.length > 0)) {
      for (OnlineContactInfo localOnlineContactInfo : this.g)
      {
        if (!localOnlineContactInfo.contactPhone.startsWith("+")) {
          localOnlineContactInfo.contactPhone = ("+" + localOnlineContactInfo.contactPhone);
        }
        if (localOnlineContactInfo.contactPhone.equals(paramString)) {
          return localOnlineContactInfo;
        }
      }
    }
    return null;
  }
  
  public View a()
  {
    View localView = this.c.inflate(2130903281, null);
    localView.setTag(new o(localView));
    return localView;
  }
  
  public ar a(int paramInt)
  {
    if (this.i)
    {
      if (paramInt == 0) {
        return null;
      }
      return this.f.e(paramInt - 1);
    }
    return this.f.e(paramInt);
  }
  
  public void a(View paramView)
  {
    TextView localTextView = ((n)paramView.getTag()).a;
    Context localContext = this.b;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.f.getCount());
    localTextView.setText(localContext.getString(2131494042, arrayOfObject).toUpperCase());
  }
  
  public void a(View paramView, ar paramar)
  {
    o localo = (o)paramView.getTag();
    if (paramar.o())
    {
      String str = paramar.n();
      if (!TextUtils.isEmpty(str))
      {
        localo.c.setText(this.b.getString(2131494049, new Object[] { str }));
        localo.b.setVisibility(8);
        localo.d.setVisibility(8);
      }
    }
    for (;;)
    {
      localo.a.setVisibility(0);
      long l1 = paramar.b();
      boolean bool1 = paramar.m();
      long l2 = paramar.g();
      com.viber.voip.util.b.w localw = this.d;
      a locala = b.d();
      boolean bool2;
      if (!bool1)
      {
        boolean bool3 = l2 < 0L;
        bool2 = false;
        if (!bool3) {}
      }
      else
      {
        bool2 = true;
      }
      localw.a(locala.a(l1, bool2), localo.a, this.e);
      if (localo.b.getVisibility() == 0) {
        localo.b.setOnClickListener(new m(this, paramar));
      }
      return;
      localo.c.setText(this.b.getString(2131494050));
      break;
      localo.c.setText(paramar.n());
      ImageView localImageView = localo.b;
      if (paramar.l()) {}
      for (int j = 0;; j = 8)
      {
        localImageView.setVisibility(j);
        OnlineContactInfo localOnlineContactInfo = a(paramar.h());
        if (localOnlineContactInfo == null) {
          break label288;
        }
        localo.d.setText(com.viber.voip.util.w.a(localOnlineContactInfo.isOnLine, localOnlineContactInfo.time));
        localo.d.setVisibility(0);
        break;
      }
      label288:
      localo.d.setVisibility(8);
    }
  }
  
  public void a(OnlineContactInfo[] paramArrayOfOnlineContactInfo)
  {
    this.g = paramArrayOfOnlineContactInfo;
    notifyDataSetChanged();
  }
  
  public View b()
  {
    View localView = this.c.inflate(2130903092, null);
    localView.setTag(new n(localView));
    return localView;
  }
  
  public int getCount()
  {
    int j = this.f.getCount();
    if (j > 0)
    {
      if (this.i) {
        j++;
      }
      return j;
    }
    return 0;
  }
  
  public long getItemId(int paramInt)
  {
    return this.f.a_(paramInt);
  }
  
  public int getItemViewType(int paramInt)
  {
    if ((paramInt == 0) && (this.i)) {
      return 0;
    }
    return 1;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int j = getItemViewType(paramInt);
    if (j == 0)
    {
      if (paramView == null) {
        paramView = b();
      }
      a(paramView);
    }
    while (j != 1) {
      return paramView;
    }
    ar localar = a(paramInt);
    if (paramView == null) {
      paramView = a();
    }
    a(paramView, localar);
    return paramView;
  }
  
  public int getViewTypeCount()
  {
    if (this.i) {
      return 2;
    }
    return 1;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return getItemViewType(paramInt) != 0;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.adapters.l
 * JD-Core Version:    0.7.0.1
 */