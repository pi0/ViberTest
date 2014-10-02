package com.viber.voip.contacts.c.f.a.a;

import android.content.Context;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import android.provider.ContactsContract.Contacts;
import com.viber.provider.contacts.d;
import com.viber.provider.contacts.f;
import com.viber.service.contacts.a.a;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.e.b;
import com.viber.voip.settings.l;
import com.viber.voip.util.fe;

public class n
{
  private static final String[] a = { "_id", "photo_id" };
  private static final String[] b = { "_id", "low_display_name" };
  private static final String[] c = { "_id", "data2" };
  private static final String[] d = { "_id", "data2", "data3" };
  private boolean e;
  private int f;
  private int g;
  private ViberApplication h;
  private fe i;
  
  public n(ViberApplication paramViberApplication)
  {
    this.h = paramViberApplication;
    this.i = b.a(this.h);
    l locall = ViberApplication.preferences();
    this.e = locall.b("need_upgrade_db", false);
    this.f = locall.b("upgrade_old_version_db", -1);
    this.g = locall.b("upgrade_new_version_db", -1);
  }
  
  private void a(int paramInt, aa paramaa)
  {
    o localo = new o(this, paramInt, paramaa);
    if (paramInt > this.g)
    {
      b(paramaa);
      return;
    }
    if (paramInt == 39)
    {
      a(localo);
      return;
    }
    if (paramInt == 43)
    {
      c(localo);
      return;
    }
    if (paramInt == 48)
    {
      d(localo);
      return;
    }
    if (paramInt == 49)
    {
      e(localo);
      return;
    }
    if (paramInt == 52)
    {
      new a().a(this.h);
      localo.a();
      return;
    }
    localo.a();
  }
  
  public static void a(Context paramContext, int paramInt1, int paramInt2)
  {
    ViberApplication.preferences(paramContext).a("need_upgrade_db", true);
    ViberApplication.preferences(paramContext).a("upgrade_old_version_db", paramInt1);
    ViberApplication.preferences(paramContext).a("upgrade_new_version_db", paramInt2);
  }
  
  private void b(aa paramaa)
  {
    this.e = false;
    ViberApplication.preferences().a("need_upgrade_db", false);
    ViberApplication.preferences().a("upgrade_old_version_db", -1);
    ViberApplication.preferences().a("upgrade_new_version_db", -1);
    paramaa.a();
  }
  
  public void a(aa paramaa)
  {
    a(1 + this.f, paramaa);
  }
  
  public void a(z paramz)
  {
    this.i.a(1584, null, d.a, b, null, null, null, new p(this, paramz), false, false);
  }
  
  public boolean a()
  {
    return this.e;
  }
  
  public void b(z paramz)
  {
    this.i.a(1584, null, ContactsContract.CommonDataKinds.Phone.CONTENT_URI, d, null, null, null, new r(this, paramz), false, false);
  }
  
  public void c(z paramz)
  {
    this.i.a(1584, null, d.a, b, null, null, null, new t(this, paramz), false, false);
  }
  
  public void d(z paramz)
  {
    this.i.a(0, null, f.a, c, "phonebookdata.mime_type=0", null, null, new v(this, paramz), false, false);
  }
  
  public void e(z paramz)
  {
    this.i.a(0, null, ContactsContract.Contacts.CONTENT_URI, a, "photo_id>0", null, null, new x(this, paramz), false, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.n
 * JD-Core Version:    0.7.0.1
 */