package com.viber.voip.contacts.a;

import android.app.Activity;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.a;
import com.viber.voip.contacts.b.e;
import com.viber.voip.contacts.b.f;
import com.viber.voip.contacts.b.i;
import com.viber.voip.contacts.ui.ai;
import com.viber.voip.util.gl;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public class m
  extends v
{
  private Set<String> j;
  private Set<String> k;
  private boolean l;
  private boolean m;
  
  public m(Activity paramActivity, a parama, boolean paramBoolean)
  {
    super(paramActivity, parama);
    this.i = parama;
    this.g = true;
    this.m = paramBoolean;
  }
  
  private void a(e parame, l paraml)
  {
    boolean bool1;
    boolean bool2;
    if (this.j != null)
    {
      Iterator localIterator = parame.h().iterator();
      bool1 = true;
      bool2 = false;
      if (!localIterator.hasNext()) {
        break label121;
      }
      i locali = (i)localIterator.next();
      if (this.j.contains(locali.a())) {
        bool2 = true;
      }
      if ((this.m) || ((!this.k.contains(locali.a())) && ((bool2) || (!this.l)))) {
        break label163;
      }
    }
    label163:
    for (boolean bool3 = false;; bool3 = bool1)
    {
      bool1 = bool3;
      break;
      bool1 = true;
      bool2 = false;
      label121:
      paraml.h.setChecked(bool2);
      paraml.h.setEnabled(bool1);
      paraml.o.setEnabled(bool1);
      paraml.d.setEnabled(bool1);
      paraml.d.setDuplicateParentStateEnabled(bool1);
      return;
    }
  }
  
  protected void a(int paramInt, View paramView, e parame)
  {
    super.a(paramInt, paramView, parame);
    l locall = (l)paramView.getTag();
    locall.h.setVisibility(0);
    if ((parame.p() != null) || (ViberApplication.isTablet())) {
      if (paramInt <= 0) {
        break label211;
      }
    }
    label211:
    for (e locale1 = a(paramInt - 1);; locale1 = null)
    {
      int i = getCount();
      e locale2 = null;
      if (paramInt < i) {
        locale2 = a(paramInt + 1);
      }
      if (((locale1 != null) && (locale1.getId() == parame.getId())) || ((locale2 != null) && (locale2.getId() == parame.getId())))
      {
        if ((ai.a(this.c, parame.p(), parame.q().e()).length() > 0) && (parame.i() != null))
        {
          locall.p.setText(parame.i().a());
          locall.p.setVisibility(0);
          return;
        }
        locall.p.setVisibility(8);
        return;
      }
      locall.p.setVisibility(8);
      return;
    }
  }
  
  public void a(Set<String> paramSet1, Set<String> paramSet2, boolean paramBoolean)
  {
    this.j = paramSet1;
    this.k = paramSet2;
    this.l = paramBoolean;
    notifyDataSetChanged();
  }
  
  protected View b(int paramInt)
  {
    View localView = super.b(paramInt);
    l locall = (l)localView.getTag();
    locall.d.setCompoundDrawablesWithIntrinsicBounds(2130838326, 0, 0, 0);
    locall.d.setCompoundDrawablePadding(this.f.getDimensionPixelSize(2131362265));
    locall.d.setTextColor(this.f.getColorStateList(2131296491));
    boolean bool = locall.h.isChecked();
    int i;
    if (locall.h.isEnabled()) {
      if ((!gl.a(localView, bool)) && (bool)) {
        i = 2130837710;
      }
    }
    for (;;)
    {
      locall.b.setBackgroundResource(i);
      return localView;
      i = 2130837709;
      continue;
      i = 17170445;
    }
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    l locall = (l)localView.getTag();
    a(this.i.b(paramInt), locall);
    return localView;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.a.m
 * JD-Core Version:    0.7.0.1
 */