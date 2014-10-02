package com.viber.voip.calls.ui;

import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.viber.voip.a.k;
import com.viber.voip.a.l;
import com.viber.voip.contacts.b.b;
import com.viber.voip.contacts.b.f;
import com.viber.voip.contacts.b.i;
import com.viber.voip.phone.aa;
import com.viber.voip.util.b.w;
import com.viber.voip.util.gn;
import com.viber.voip.widget.AvatarView;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public class u
  extends q<b>
{
  private static final String m = u.class.getSimpleName();
  private PhoneFragment n;
  private com.viber.voip.contacts.e.a o;
  private String p;
  
  public u(PhoneFragment paramPhoneFragment, com.viber.voip.contacts.e.a parama)
  {
    super(paramPhoneFragment, parama);
    this.n = paramPhoneFragment;
    this.o = parama;
  }
  
  public int a()
  {
    return this.o.d();
  }
  
  public void a(View paramView, b paramb, int paramInt)
  {
    Object localObject1 = null;
    s locals = (s)paramView.getTag();
    if ((paramb == null) || (locals == null)) {
      return;
    }
    locals.b(true);
    locals.a(paramb);
    if (paramb != null) {
      locals.c.setText(paramb.a());
    }
    Object localObject4;
    Object localObject5;
    Object localObject6;
    Object localObject2;
    if (!TextUtils.isEmpty(this.p))
    {
      Iterator localIterator = paramb.j().entrySet().iterator();
      for (localObject4 = null; localIterator.hasNext(); localObject4 = localObject6)
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (!((String)localEntry.getKey()).contains(this.p)) {
          break label485;
        }
        localObject5 = (f)localEntry.getValue();
        localObject6 = paramb.b((String)localEntry.getKey());
        localObject1 = localObject5;
      }
      localObject2 = localObject1;
    }
    for (Object localObject3 = localObject4;; localObject3 = null)
    {
      TreeMap localTreeMap;
      if (localObject2 == null)
      {
        localTreeMap = paramb.j();
        localObject3 = paramb.i();
        if ((localObject3 != null) && (!TextUtils.isEmpty(((i)localObject3).a()))) {
          localObject2 = (f)localTreeMap.get(((i)localObject3).a());
        }
      }
      else
      {
        if (localObject2 == null) {
          break label416;
        }
        String str = aa.a(((f)localObject2).a());
        if (paramb == null) {
          locals.c.setText(str);
        }
        locals.a(((f)localObject2).b());
        if (localObject3 == null) {
          break label407;
        }
        locals.a(true);
        label282:
        locals.d.setVisibility(8);
        locals.e.setVisibility(8);
        locals.h.setVisibility(8);
        if (!this.i) {
          break label440;
        }
        locals.b.setBackgroundResource(2130837708);
        locals.c.setTextColor(this.j.getColor(2131296344));
        locals.h.setTextColor(this.j.getColor(2131296344));
      }
      for (;;)
      {
        if (!this.k) {
          break label453;
        }
        locals.a.setVisibility(8);
        return;
        if (localTreeMap.size() <= 0) {
          break;
        }
        localObject2 = (f)localTreeMap.get(localTreeMap.firstKey());
        break;
        label407:
        locals.a(false);
        break label282;
        label416:
        locals.a("");
        if (paramb != null) {
          break label282;
        }
        locals.c.setText(2131493744);
        break label282;
        label440:
        locals.b.setBackgroundResource(2130837709);
      }
      label453:
      locals.a.setVisibility(0);
      this.g.a(paramb.b(), locals.a, this.h);
      return;
      label485:
      localObject5 = localObject1;
      localObject6 = localObject4;
      break;
      localObject2 = null;
    }
  }
  
  public void a(String paramString)
  {
    this.p = paramString;
  }
  
  public boolean a(int paramInt)
  {
    return paramInt == -1 + getCount();
  }
  
  public void onClick(View paramView)
  {
    boolean bool1 = true;
    s locals = (s)paramView.getTag();
    b localb = locals.b();
    String str1 = locals.c();
    if (localb == null) {}
    String str2;
    label156:
    do
    {
      do
      {
        do
        {
          return;
          if (!localb.e()) {
            break;
          }
          str2 = com.viber.voip.a.a.s.a.a();
          if (paramView.getId() != 2131165425) {
            break label156;
          }
        } while (TextUtils.isEmpty(str1));
        if (this.l != null)
        {
          r localr = this.l;
          if (!locals.d()) {}
          for (boolean bool2 = bool1;; bool2 = false)
          {
            localr.a(str1, bool2);
            return;
            str2 = com.viber.voip.a.a.s.b.a();
            break;
          }
        }
      } while (!gn.a(this.n.getActivity()));
      if (!locals.d()) {}
      for (;;)
      {
        a(str2, bool1, str1);
        return;
        bool1 = false;
      }
    } while (paramView.getId() != 2131165398);
    gn.a(this.a, localb.getId(), localb.c(), localb.a(), localb.g(), localb.b(), str2);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.ui.u
 * JD-Core Version:    0.7.0.1
 */