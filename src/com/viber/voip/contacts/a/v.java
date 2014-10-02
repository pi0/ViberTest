package com.viber.voip.contacts.a;

import android.app.Activity;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.e;
import com.viber.voip.contacts.c.d.b;
import com.viber.voip.ui.ak;

public class v
  extends k
{
  private static final String j = v.class.getSimpleName();
  protected com.viber.voip.contacts.a i;
  private int k;
  private int l;
  private CharSequence m;
  private Character[] n;
  private c<e> o;
  
  public v(Activity paramActivity, com.viber.voip.contacts.a parama)
  {
    super(paramActivity, parama);
    this.i = parama;
    this.m = paramActivity.getString(2131494842);
    this.k = this.f.getDimensionPixelSize(2131362118);
    this.l = this.f.getDimensionPixelSize(2131362119);
    b();
  }
  
  private void a(View paramView, int paramInt)
  {
    l locall = (l)paramView.getTag();
    if ((locall.f.getVisibility() == 0) && (this.n != null))
    {
      int i1 = getSectionForPosition(paramInt);
      locall.f.setText(Character.toString(this.n[i1].charValue()));
    }
  }
  
  private void b()
  {
    a locala = ViberApplication.getInstance().getContactManager().h();
    this.n = locala.b();
    this.m = locala.a();
    this.o = new w(this, this.i, this.m, locala.c());
  }
  
  private String d(int paramInt)
  {
    if (this.n != null) {
      return Character.toString(this.n[paramInt].charValue());
    }
    return "";
  }
  
  protected void a(int paramInt, View paramView, e parame)
  {
    super.a(paramInt, paramView, parame);
    a(paramView, paramInt);
  }
  
  protected View b(int paramInt)
  {
    View localView = super.b(paramInt);
    l locall = (l)localView.getTag();
    if (this.g)
    {
      locall.b.setPadding(0, 0, 0, 0);
      a(locall, this.k, this.l);
    }
    return localView;
  }
  
  public boolean c(int paramInt)
  {
    int i1 = getSectionForPosition(paramInt);
    if (paramInt > 0) {}
    for (int i2 = getSectionForPosition(paramInt - 1); i1 != i2; i2 = -1) {
      return true;
    }
    return false;
  }
  
  public int getPositionForSection(int paramInt)
  {
    return this.o.getPositionForSection(paramInt);
  }
  
  public int getSectionForPosition(int paramInt)
  {
    return this.o.getSectionForPosition(paramInt);
  }
  
  public Object[] getSections()
  {
    return this.o.getSections();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i1 = -1;
    if (paramView == null) {
      paramView = a();
    }
    l locall = (l)paramView.getTag();
    int i2 = getSectionForPosition(paramInt);
    int i3;
    int i4;
    label71:
    View localView2;
    if (paramInt >= 0)
    {
      i3 = getSectionForPosition(paramInt + 1);
      if (paramInt > 0) {
        i1 = getSectionForPosition(paramInt - 1);
      }
      View localView1 = locall.e;
      if (i2 == i1) {
        break label172;
      }
      i4 = 0;
      localView1.setVisibility(i4);
      localView2 = locall.i;
      if (i2 == i3) {
        break label179;
      }
    }
    label172:
    label179:
    for (int i5 = 4;; i5 = 0)
    {
      localView2.setVisibility(i5);
      ak localak = (ak)paramView.getTag(2131165340);
      localak.b(true);
      boolean bool = false;
      if (i2 != i1) {
        bool = true;
      }
      localak.a(bool);
      localak.a(d(i2));
      localak.b("");
      return super.getView(paramInt, paramView, paramViewGroup);
      i3 = i1;
      break;
      i4 = 8;
      break label71;
    }
  }
  
  public void notifyDataSetChanged()
  {
    b();
    super.notifyDataSetChanged();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.a.v
 * JD-Core Version:    0.7.0.1
 */