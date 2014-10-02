package com.viber.voip.stickers;

import com.viber.voip.ViberApplication;
import com.viber.voip.billing.bt;
import com.viber.voip.market.y;
import com.viber.voip.stickers.a.a;
import com.viber.voip.stickers.c.e;
import java.io.IOException;
import org.json.JSONException;

class af
  implements Runnable
{
  af(r paramr, int paramInt) {}
  
  public void run()
  {
    if (this.b.e(this.a)) {
      return;
    }
    y localy = y.b(bt.a(this.a));
    String str1;
    if (localy != null)
    {
      str1 = localy.b;
      if (localy != null) {
        break label227;
      }
    }
    for (;;)
    {
      try
      {
        String str3 = ay.a(this.a);
        str2 = str3;
      }
      catch (IOException localIOException)
      {
        str2 = str1;
        continue;
      }
      catch (JSONException localJSONException)
      {
        e locale;
        str2 = str1;
        continue;
        if (!locale.j()) {
          continue;
        }
        locale.b(1 + r.e(this.b));
        locale.d(true);
        locale.a(str2);
        r.a(this.b).a(locale);
        continue;
      }
      locale = (e)this.b.b(this.a);
      if (locale == null)
      {
        locale = new e(this.a, str2);
        locale.b(1 + r.e(this.b));
        locale.a(true);
        r.a(this.b, r.a(this.b, locale, r.f(this.b)));
        r.a(this.b).a(locale);
        this.b.a(locale);
        return;
        str1 = ViberApplication.getInstance().getString(2131494384);
        break;
      }
      label227:
      String str2 = str1;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.af
 * JD-Core Version:    0.7.0.1
 */