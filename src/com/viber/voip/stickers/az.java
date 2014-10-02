package com.viber.voip.stickers;

import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;
import com.viber.voip.stickers.a.a;
import com.viber.voip.stickers.c.d;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;

class az
  implements Runnable
{
  az(ay paramay, List paramList) {}
  
  public void run()
  {
    boolean bool = this.b.a();
    Iterator localIterator = this.a.iterator();
    for (;;)
    {
      Integer localInteger;
      if (localIterator.hasNext())
      {
        localInteger = (Integer)localIterator.next();
        if (bool) {}
      }
      try
      {
        if (TextUtils.isEmpty(r.a().b(localInteger.intValue()).f()))
        {
          String str = ay.a(localInteger.intValue());
          ay.a(this.b).a(localInteger.intValue(), str);
        }
      }
      catch (IOException localIOException)
      {
        continue;
        if (this.b.a()) {
          ViberApplication.preferences().a("PREF_UPGRADE_STICKER_PACKAGES_NAME", false);
        }
        ay.a(this.b, System.currentTimeMillis());
        ay.a(this.b, false);
        this.b.a(this.a);
        return;
      }
      catch (JSONException localJSONException) {}
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.az
 * JD-Core Version:    0.7.0.1
 */