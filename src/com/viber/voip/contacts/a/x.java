package com.viber.voip.contacts.a;

import android.app.Activity;
import android.net.Uri;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.a;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.cx;
import com.viber.voip.messages.controller.dg;
import com.viber.voip.messages.i;
import com.viber.voip.registration.cp;
import com.viber.voip.ui.ak;
import com.viber.voip.user.UserData;
import java.util.Set;

public class x
  extends k
  implements dg
{
  public static long i = -2L;
  private static final String j = x.class.getSimpleName();
  private static a l = new y();
  private i k;
  
  public x(Activity paramActivity, i parami, a parama)
  {
    super(paramActivity, parama);
    this.k = parami;
    d();
  }
  
  private void a(View paramView, int paramInt)
  {
    int m = this.a.getCount();
    String str1 = this.c.getString(2131494204).toUpperCase();
    if (m == 1) {}
    Activity localActivity;
    Object[] arrayOfObject;
    for (String str2 = this.c.getString(2131494333);; str2 = localActivity.getString(2131494334, arrayOfObject))
    {
      l locall = (l)paramView.getTag();
      locall.q = true;
      locall.o.setDuplicateParentStateEnabled(true);
      locall.i.setVisibility(8);
      locall.e.setVisibility(0);
      locall.f.setText(str1);
      locall.g.setText(str2);
      locall.d.setVisibility(8);
      ak localak = (ak)paramView.getTag(2131165340);
      localak.b(true);
      localak.a(true);
      localak.a(str1);
      localak.b(str2);
      return;
      localActivity = this.c;
      arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(m);
    }
  }
  
  private boolean d()
  {
    com.viber.voip.contacts.b.b.e locale = (com.viber.voip.contacts.b.b.e)a(0);
    locale.a(ViberApplication.getInstance().getRegistrationValues().f());
    Uri localUri = UserData.getImage();
    String str = UserData.getName();
    boolean bool1;
    if ((localUri == locale.b()) && ((localUri == null) || (localUri.equals(locale.b()))) && (str == locale.a()))
    {
      bool1 = false;
      if (str != null)
      {
        boolean bool2 = str.equals(locale.a());
        bool1 = false;
        if (bool2) {}
      }
    }
    else
    {
      bool1 = true;
    }
    locale.h(str);
    locale.a(localUri);
    return bool1;
  }
  
  private void e()
  {
    if (d()) {
      notifyDataSetChanged();
    }
  }
  
  public com.viber.voip.contacts.b.e a(int paramInt)
  {
    return l.b(paramInt);
  }
  
  public void b()
  {
    this.k.b().a(this);
    e();
  }
  
  public void c()
  {
    this.k.b().b(this);
  }
  
  public int getCount()
  {
    if ((!this.h) || (this.a.getCount() == 0) || (this.a.d_())) {
      return 0;
    }
    return l.getCount();
  }
  
  public long getItemId(int paramInt)
  {
    return i;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    a(localView, paramInt);
    return localView;
  }
  
  public void onChange(Set<Long> paramSet, boolean paramBoolean) {}
  
  public void onChangeOwner()
  {
    dc.a(dk.a).post(new aa(this));
  }
  
  public void onInitCache() {}
  
  public void onNewInfo(Set<Long> paramSet, boolean paramBoolean) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.a.x
 * JD-Core Version:    0.7.0.1
 */