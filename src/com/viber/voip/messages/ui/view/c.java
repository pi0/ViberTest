package com.viber.voip.messages.ui.view;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.util.b.aa;
import com.viber.voip.util.b.b.b;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;

public class c
{
  private static final String a = c.class.getSimpleName();
  private View b;
  private LayoutInflater c;
  private com.viber.voip.messages.conversation.h d;
  private Context e;
  private BaseAdapter f;
  private x g;
  private w h;
  private g i;
  
  public c(Context paramContext)
  {
    this.e = paramContext;
    this.c = ((LayoutInflater)this.e.getSystemService("layout_inflater"));
    this.f = new f(this, null);
    this.i = new g(this, null);
    this.b = a(this.c, null, 5, null);
    this.g = new z().a(aa.b).a(new b(this.e)).b();
    this.h = w.a(this.e);
  }
  
  private View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if (paramView != null) {
      return paramView;
    }
    return paramLayoutInflater.inflate(2130903055, null);
  }
  
  private View a(LayoutInflater paramLayoutInflater, View paramView, int paramInt, com.viber.voip.messages.conversation.h paramh)
  {
    int j = 1;
    View localView5;
    String str1;
    String str2;
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      View localView6 = a(paramLayoutInflater, paramView);
      localView6.findViewById(2131165354).setVisibility(8);
      localView6.findViewById(2131165355).setVisibility(8);
      ((TextView)localView6.findViewById(2131165352)).setText(c());
      ((TextView)localView6.findViewById(2131165353)).setText(2131494034);
      localView6.setTag(Integer.valueOf(0));
      return localView6;
    case 4: 
      localView5 = a(paramLayoutInflater, paramView);
      localView5.findViewById(2131165354).setVisibility(8);
      localView5.findViewById(2131165355).setVisibility(8);
      if (this.d != null)
      {
        int i4 = this.d.m();
        ((TextView)localView5.findViewById(2131165352)).setText(2131494420);
        str1 = this.e.getString(2131494423);
        if (i4 != j) {
          break label269;
        }
        Context localContext2 = this.e;
        Object[] arrayOfObject2 = new Object[j];
        arrayOfObject2[0] = Integer.valueOf(i4);
        str2 = localContext2.getString(2131494422, arrayOfObject2);
      }
      break;
    }
    for (;;)
    {
      ((TextView)localView5.findViewById(2131165353)).setText(str2);
      localView5.setTag(Integer.valueOf(4));
      return localView5;
      int i5 = 0;
      break;
      label269:
      if (i5 > j)
      {
        Context localContext1 = this.e;
        Object[] arrayOfObject1 = new Object[j];
        arrayOfObject1[0] = Integer.valueOf(i5);
        str2 = localContext1.getString(2131494421, arrayOfObject1);
        continue;
        View localView4 = a(paramLayoutInflater, paramView);
        localView4.findViewById(2131165355).setVisibility(8);
        ((TextView)localView4.findViewById(2131165352)).setText(2131494027);
        if (paramh != null)
        {
          if (!TextUtils.isEmpty(paramh.g())) {
            break label415;
          }
          ((TextView)localView4.findViewById(2131165353)).setText(2131494029);
          localView4.findViewById(2131165354).setVisibility(8);
          localView4.findViewById(2131165351).setVisibility(8);
        }
        for (;;)
        {
          localView4.setTag(Integer.valueOf(j));
          return localView4;
          label415:
          ((TextView)localView4.findViewById(2131165353)).setText(2131494028);
          localView4.findViewById(2131165354).setVisibility(0);
          localView4.findViewById(2131165351).setVisibility(0);
          try
          {
            if (com.viber.voip.messages.extras.image.h.b())
            {
              e locale = new e(this, (ImageView)localView4.findViewById(2131165354));
              this.h.a(Uri.parse((String)f().first), this.g, locale);
            }
          }
          catch (Exception localException) {}
        }
        View localView3 = a(paramLayoutInflater, paramView);
        boolean bool = d();
        localView3.findViewById(2131165354).setVisibility(8);
        TextView localTextView1 = (TextView)localView3.findViewById(2131165352);
        TextView localTextView2 = (TextView)localView3.findViewById(2131165353);
        CheckBox localCheckBox = (CheckBox)localView3.findViewById(2131165355);
        localTextView1.setText(2131494035);
        int m;
        if (bool)
        {
          m = 2131494037;
          localTextView2.setText(m);
          localCheckBox.setChecked(bool);
          if (e()) {
            break label673;
          }
          int n = j;
          label615:
          localTextView1.setEnabled(n);
          if (e()) {
            break label679;
          }
          int i2 = j;
          label633:
          localTextView2.setEnabled(i2);
          if (e()) {
            break label685;
          }
        }
        for (;;)
        {
          localCheckBox.setEnabled(j);
          localView3.setTag(Integer.valueOf(2));
          return localView3;
          m = 2131494036;
          break;
          label673:
          int i1 = 0;
          break label615;
          label679:
          int i3 = 0;
          break label633;
          label685:
          int k = 0;
        }
        View localView2 = a(paramLayoutInflater, paramView);
        localView2.findViewById(2131165354).setVisibility(8);
        ((TextView)localView2.findViewById(2131165352)).setText(2131494472);
        ((TextView)localView2.findViewById(2131165353)).setText(2131494577);
        ((CheckBox)localView2.findViewById(2131165355)).setChecked(e());
        localView2.setTag(Integer.valueOf(3));
        return localView2;
        View localView1 = paramLayoutInflater.inflate(2130903280, null);
        localView1.setTag(Integer.valueOf(5));
        return localView1;
      }
      else
      {
        str2 = str1;
      }
    }
  }
  
  private void b(String paramString) {}
  
  private boolean d()
  {
    if (this.i.a == null) {
      this.i.a = Boolean.valueOf(this.d.s());
    }
    return this.i.a.booleanValue();
  }
  
  private boolean e()
  {
    if (this.i.b == null) {
      this.i.b = Boolean.valueOf(this.d.o());
    }
    return this.i.b.booleanValue();
  }
  
  private Pair<String, String> f()
  {
    if (this.d == null) {
      return new Pair("", "");
    }
    if (this.i.c == null) {
      return new Pair(this.d.g(), this.d.f());
    }
    if (((String)this.i.c.first).equals(this.d.g()))
    {
      this.i.c = null;
      return new Pair(this.d.g(), this.d.f());
    }
    return this.i.c;
  }
  
  public View a()
  {
    return this.b;
  }
  
  public void a(com.viber.voip.messages.conversation.h paramh)
  {
    b("setConversation");
    this.d = paramh;
    this.b = a(this.c, this.b, 5, this.d);
    this.i.a = null;
    this.i.b = null;
  }
  
  public void a(String paramString)
  {
    b("onGroupNameChanged");
    this.i.d = paramString;
  }
  
  public void a(String paramString1, String paramString2)
  {
    b("onBackgroundImageChanged");
    this.i.c = new Pair(paramString1, paramString2);
  }
  
  public void a(boolean paramBoolean)
  {
    b("onSmartNotificationChanged");
    this.i.a = Boolean.valueOf(paramBoolean);
  }
  
  public BaseAdapter b()
  {
    return this.f;
  }
  
  public void b(boolean paramBoolean)
  {
    b("onGroupMute isMuteOn:" + paramBoolean);
    this.i.b = Boolean.valueOf(paramBoolean);
  }
  
  public String c()
  {
    if (this.d == null) {
      return "";
    }
    if ((this.d.l()) && (this.i.d == null))
    {
      if (TextUtils.isEmpty(this.d.c())) {
        return this.e.getString(2131494051);
      }
      return this.d.c();
    }
    if ((this.d.l()) && (this.i.d.equals(this.d.c())))
    {
      this.i.d = null;
      if (TextUtils.isEmpty(this.d.c())) {
        return this.e.getString(2131494051);
      }
      return this.d.c();
    }
    if (this.d.l()) {
      return this.i.d;
    }
    if (TextUtils.isEmpty(this.d.p())) {
      return this.d.q();
    }
    return this.d.p();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.view.c
 * JD-Core Version:    0.7.0.1
 */