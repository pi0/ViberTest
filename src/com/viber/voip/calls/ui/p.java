package com.viber.voip.calls.ui;

import android.content.res.ColorStateList;
import android.net.Uri;
import android.view.View;
import android.widget.Checkable;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.viber.voip.a.k;
import com.viber.voip.a.l;
import com.viber.voip.calls.entities.AggregatedCallEntity;
import com.viber.voip.contacts.b.b;
import com.viber.voip.phone.aa;
import com.viber.voip.util.b.w;
import com.viber.voip.util.gl;
import com.viber.voip.util.gn;
import com.viber.voip.widget.AvatarView;

public class p
  extends q<AggregatedCallEntity>
{
  private static final String m = p.class.getSimpleName();
  private PhoneFragment n;
  private com.viber.voip.calls.a.a o;
  private u p;
  private PhoneFragmentModeManager q;
  
  public p(PhoneFragment paramPhoneFragment, com.viber.voip.calls.a.a parama, u paramu, PhoneFragmentModeManager paramPhoneFragmentModeManager)
  {
    super(paramPhoneFragment, parama);
    this.n = paramPhoneFragment;
    this.o = parama;
    this.p = paramu;
    this.q = paramPhoneFragmentModeManager;
  }
  
  public int a()
  {
    return this.o.b();
  }
  
  public void a(View paramView, AggregatedCallEntity paramAggregatedCallEntity, int paramInt)
  {
    s locals = (s)paramView.getTag();
    if ((paramAggregatedCallEntity == null) || (locals == null)) {
      return;
    }
    b localb = paramAggregatedCallEntity.c();
    paramAggregatedCallEntity.b();
    locals.b(false);
    locals.a(paramAggregatedCallEntity);
    locals.a(localb);
    if (localb != null) {
      locals.c.setText(localb.a());
    }
    String str = aa.a(paramAggregatedCallEntity.f());
    label149:
    ColorStateList localColorStateList;
    label182:
    int i;
    label254:
    View localView1;
    label358:
    int j;
    label386:
    label393:
    View localView2;
    if ((!"-2".equals(str)) && (!"-1".equals(str)))
    {
      if (localb == null) {
        locals.c.setText(str);
      }
      locals.a(paramAggregatedCallEntity.g());
      if (!paramAggregatedCallEntity.n()) {
        break label464;
      }
      locals.d.setText(2131494317);
      locals.a(paramAggregatedCallEntity.k());
      TextView localTextView1 = locals.e;
      if (!paramAggregatedCallEntity.l()) {
        break label510;
      }
      localColorStateList = this.e;
      localTextView1.setTextColor(localColorStateList);
      locals.e.setCompoundDrawablesWithIntrinsicBounds(this.c.a(paramAggregatedCallEntity.j()), 0, 0, 0);
      locals.e.setText(this.c.b(paramAggregatedCallEntity.j()));
      TextView localTextView2 = locals.h;
      if (paramAggregatedCallEntity.a() <= 1) {
        break label519;
      }
      i = 0;
      localTextView2.setVisibility(i);
      TextView localTextView3 = locals.h;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramAggregatedCallEntity.a());
      localTextView3.setText(String.format("(%d)", arrayOfObject));
      if (!this.k) {
        break label526;
      }
      locals.a.setVisibility(8);
      localView1 = (View)locals.b.getParent();
      if (!(localView1 instanceof Checkable)) {
        break label571;
      }
      ((Checkable)localView1).setChecked(this.q.c(Integer.valueOf(paramInt)));
      if (!this.i) {
        break label598;
      }
      RelativeLayout localRelativeLayout = locals.b;
      if (!this.q.c()) {
        break label591;
      }
      j = 2130837709;
      localRelativeLayout.setBackgroundResource(j);
      localView2 = locals.g;
      if (this.q.c()) {
        break label611;
      }
    }
    label464:
    label598:
    label611:
    for (boolean bool = true;; bool = false)
    {
      localView2.setEnabled(bool);
      locals.d.setVisibility(0);
      locals.e.setVisibility(0);
      return;
      if (localb == null) {
        locals.c.setText(2131493744);
      }
      locals.a("");
      break;
      if (paramAggregatedCallEntity.m())
      {
        locals.d.setText(2131494316);
        break label149;
      }
      locals.d.setText(this.c.a(paramAggregatedCallEntity.h()));
      break label149;
      label510:
      localColorStateList = this.f;
      break label182;
      i = 8;
      break label254;
      w localw = this.g;
      if (localb != null) {}
      for (Uri localUri = localb.b();; localUri = null)
      {
        localw.a(localUri, locals.a, this.h);
        break;
      }
      gl.a(localView1, this.q.c(Integer.valueOf(paramInt)));
      break label358;
      j = 2130837708;
      break label386;
      locals.b.setBackgroundResource(2130837709);
      break label393;
    }
  }
  
  public boolean a(int paramInt)
  {
    return ((this.p == null) || (this.p.getCount() == 0)) && (paramInt == -1 + getCount());
  }
  
  public void onClick(View paramView)
  {
    AggregatedCallEntity localAggregatedCallEntity = ((s)paramView.getTag()).a();
    if (localAggregatedCallEntity == null) {}
    String str;
    do
    {
      do
      {
        do
        {
          return;
          str = com.viber.voip.a.a.s.c.a();
          if (paramView.getId() != 2131165425) {
            break;
          }
          if (this.l != null)
          {
            this.l.a(localAggregatedCallEntity.f(), localAggregatedCallEntity.o());
            return;
          }
        } while (!gn.a(this.n.getActivity()));
        a(str, localAggregatedCallEntity.o(), localAggregatedCallEntity.f());
        return;
      } while (paramView.getId() != 2131165398);
      b localb = localAggregatedCallEntity.c();
      if (localb != null)
      {
        gn.a(this.a, localb.getId(), localb.c(), localb.a(), localb.g(), localb.b(), str);
        return;
      }
    } while (localAggregatedCallEntity == null);
    gn.a(this.a, localAggregatedCallEntity.g(), null, null, localAggregatedCallEntity.k(), str);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.ui.p
 * JD-Core Version:    0.7.0.1
 */