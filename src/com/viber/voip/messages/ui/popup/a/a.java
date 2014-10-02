package com.viber.voip.messages.ui.popup.a;

import android.app.Activity;
import android.content.Context;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.m;
import com.viber.voip.a.n;
import com.viber.voip.messages.adapters.MediaLayout;
import com.viber.voip.messages.conversation.a.a.a.t;
import com.viber.voip.messages.conversation.a.b.e;
import com.viber.voip.messages.conversation.a.u;
import com.viber.voip.messages.conversation.ai;
import com.viber.voip.messages.conversation.an;
import com.viber.voip.messages.ui.bb;
import com.viber.voip.messages.ui.bd;
import com.viber.voip.util.gj;
import com.viber.voip.util.gn;
import com.viber.voip.util.hv;
import com.viber.voip.widget.PttLayout;

public class a
  extends l
  implements e
{
  private View.OnClickListener a;
  private boolean b;
  private bb c;
  private LayoutInflater d;
  private View e;
  private m f = com.viber.voip.a.a.n;
  
  public a(Activity paramActivity, ai paramai)
  {
    super(paramActivity, paramai, true);
    this.d = LayoutInflater.from(paramActivity);
    this.c = new bb(g());
    b();
  }
  
  public static void a(View paramView)
  {
    if ((paramView.getTag() instanceof d))
    {
      d locald = (d)paramView.getTag();
      an localan = locald.a();
      if ("sticker".equals(localan.e())) {
        locald.f.a((int)localan.w());
      }
    }
  }
  
  private void b(View paramView, int paramInt)
  {
    an localan1 = f().e(paramInt);
    f localf = new f(this, paramView, paramInt, localan1, null);
    paramView.setTag(localf);
    if (!this.b)
    {
      String str = localan1.ak();
      localf.e.setText(g().getString(2131494179) + " " + str);
      return;
    }
    an localan2 = localf.a();
    localf.e.setText(localan2.p());
    this.c.a(localf.e, bd.c, false);
  }
  
  private void c(View paramView, int paramInt)
  {
    boolean bool1 = true;
    an localan = f().e(paramInt);
    d locald = new d(this, paramView, paramInt, localan, null);
    paramView.setTag(locald);
    String str1 = localan.e();
    boolean bool2;
    boolean bool3;
    int i;
    label135:
    int j;
    label149:
    int k;
    label171:
    PttLayout localPttLayout;
    int m;
    if (("image".equals(str1)) || ("video".equals(str1)) || ("animated_message".equals(str1)))
    {
      locald.f.a(localan, false, false, bool1);
      if (!TextUtils.isEmpty(localan.q()))
      {
        bool2 = bool1;
        locald.h.setText(localan.q());
        this.c.a(locald.h, bd.c, false);
        bool3 = bool1;
        bool1 = bool2;
        i = 0;
        TextView localTextView = locald.h;
        if (!bool1) {
          break label524;
        }
        j = 0;
        localTextView.setVisibility(j);
        MediaLayout localMediaLayout = locald.f;
        if (!bool3) {
          break label531;
        }
        k = 0;
        localMediaLayout.setVisibility(k);
        localPttLayout = locald.g;
        m = 0;
        if (i == 0) {
          break label538;
        }
      }
    }
    for (;;)
    {
      localPttLayout.setVisibility(m);
      return;
      bool2 = false;
      break;
      if ("sticker".equals(str1))
      {
        locald.f.a((int)localan.w());
        bool3 = bool1;
        i = 0;
        bool1 = false;
        break label135;
      }
      if ("location".equals(str1))
      {
        locald.f.a(localan, bool1);
        if (TextUtils.isEmpty(localan.I())) {}
        for (String str3 = locald.h.getContext().getString(2131493920);; str3 = localan.I())
        {
          locald.h.setText(str3);
          bool3 = bool1;
          i = 0;
          break;
        }
      }
      if ("sound".equals(str1))
      {
        locald.g.a(new u(localan));
        new t(locald.g, this).a(new u(localan), null);
        i = bool1;
        bool3 = false;
        bool1 = false;
        break label135;
      }
      if ("formatted_follow".equals(str1))
      {
        locald.f.a(hv.b(localan.H()), 2130838346);
        StringBuilder localStringBuilder = new StringBuilder(localan.p()).append("\n");
        Activity localActivity = g();
        Object[] arrayOfObject = new Object[bool1];
        arrayOfObject[0] = gj.a(localan.h());
        String str2 = localActivity.getString(2131494514, arrayOfObject) + "\n" + g().getString(2131494587);
        locald.h.setText(str2);
        this.c.a(locald.h, bd.c, false);
      }
      bool3 = bool1;
      i = 0;
      break label135;
      label524:
      j = 8;
      break label149;
      label531:
      k = 8;
      break label171;
      label538:
      m = 8;
    }
  }
  
  public View a()
  {
    return this.e;
  }
  
  public View a(View paramView, int paramInt)
  {
    if ((!this.b) || (d(paramInt) != 2))
    {
      this.e = this.d.inflate(2130903228, null);
      b(this.e, paramInt);
    }
    for (;;)
    {
      return this.e;
      this.e = this.d.inflate(2130903227, null);
      c(this.e, paramInt);
    }
  }
  
  public an a(ViewPager paramViewPager, Activity paramActivity)
  {
    for (int i = 0; i < paramViewPager.getChildCount(); i++)
    {
      c localc = (c)paramViewPager.getChildAt(i).getTag();
      if (localc.b() == paramViewPager.getCurrentItem()) {
        return localc.a();
      }
    }
    return null;
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    this.a = paramOnClickListener;
  }
  
  public void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public boolean b()
  {
    return true;
  }
  
  public int c()
  {
    return f().getCount();
  }
  
  public void g(com.viber.voip.messages.conversation.a.a.a parama)
  {
    bc localbc = bc.a();
    m localm = this.f;
    n localn;
    ViberApplication localViberApplication;
    boolean bool1;
    String str;
    if (parama.p())
    {
      localn = n.b;
      localbc.a(localm.a(localn));
      localViberApplication = ViberApplication.getInstance();
      bool1 = parama.S();
      str = this.f.a();
      if (parama.T()) {
        break label88;
      }
    }
    label88:
    for (boolean bool2 = true;; bool2 = false)
    {
      gn.a(localViberApplication, parama, bool1, str, bool2);
      return;
      localn = n.a;
      break;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.a.a
 * JD-Core Version:    0.7.0.1
 */