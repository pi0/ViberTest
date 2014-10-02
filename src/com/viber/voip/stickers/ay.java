package com.viber.voip.stickers;

import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.ViberEnv;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.settings.l;
import com.viber.voip.util.ft;
import com.viber.voip.util.http.HttpRequest;
import java.util.List;
import org.json.JSONObject;

public class ay
{
  private static final String a = ay.class.getSimpleName();
  private Handler b;
  private com.viber.voip.stickers.a.a c;
  private boolean d;
  private long e;
  
  public ay(Handler paramHandler, com.viber.voip.stickers.a.a parama)
  {
    this.b = paramHandler;
    this.c = parama;
    this.d = false;
  }
  
  public static String a(int paramInt)
  {
    return new JSONObject(com.viber.voip.billing.a.a(ViberEnv.newHttpRequest(bc.b().B.replaceAll("%PKG%", Integer.toString(paramInt))).getInputStream())).getString("title");
  }
  
  public void a(List<Integer> paramList) {}
  
  public boolean a()
  {
    return ViberApplication.preferences().b("PREF_UPGRADE_STICKER_PACKAGES_NAME", true);
  }
  
  public void b(List<Integer> paramList)
  {
    if ((!this.d) && (!paramList.isEmpty()) && (ft.b(ViberApplication.getInstance())) && (System.currentTimeMillis() - this.e > 600000L))
    {
      this.d = true;
      this.b.post(new az(this, paramList));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.ay
 * JD-Core Version:    0.7.0.1
 */