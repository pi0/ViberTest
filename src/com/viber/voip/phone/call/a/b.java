package com.viber.voip.phone.call.a;

import android.content.Intent;
import android.net.Uri;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.j;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.l;
import com.viber.voip.phone.call.n;
import com.viber.voip.util.hd;
import java.util.Observable;
import java.util.Observer;

public class b
  extends PhoneControllerDelegateAdapter
  implements Observer
{
  private final String a = "ConversationPromotionListener";
  private k b;
  
  public b(k paramk)
  {
    this.b = paramk;
  }
  
  private void a(String paramString1, String paramString2, long paramLong1, long paramLong2, Uri paramUri)
  {
    Intent localIntent = j.b(hd.a(ViberApplication.getInstance(), paramString1, paramString1), paramLong1, paramLong2, paramString2, paramUri);
    localIntent.addFlags(268435456);
    ViberApplication.getInstance().startActivity(localIntent);
  }
  
  public void a(n paramn, boolean paramBoolean)
  {
    int i;
    if ((ViberApplication.getInstance().isOnForeground()) && (paramn.o() != 10) && ((paramn.x() != 0L) || (this.b.b() == l.b)))
    {
      i = 1;
      if (i != 0) {
        break label52;
      }
    }
    label52:
    int j;
    do
    {
      return;
      i = 0;
      break;
      com.viber.voip.contacts.b.b localb = this.b.c().c();
      if ((localb != null) && (!this.b.j()) && (!this.b.f()))
      {
        a(this.b.c().b(), this.b.c().a(), localb.getId(), localb.c(), localb.b());
        return;
      }
      if ((!this.b.j()) && (!this.b.f())) {
        break label261;
      }
      if (paramBoolean)
      {
        a(this.b.c().b(), this.b.c().a(), 0L, 0L, null);
        return;
      }
      j = this.b.o();
      if (j == 2147483647) {
        break label236;
      }
    } while (j != 0);
    a(this.b.c().b(), this.b.c().a(), 0L, 0L, null);
    return;
    label236:
    hd.a(ViberApplication.getInstance(), this.b.c().b(), new c(this));
    return;
    label261:
    a(this.b.c().b(), this.b.c().a(), 0L, 0L, null);
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    n localn = (n)paramObject;
    if (localn.c() != 0) {
      return;
    }
    a(localn, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.call.a.b
 * JD-Core Version:    0.7.0.1
 */