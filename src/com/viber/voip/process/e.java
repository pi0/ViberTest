package com.viber.voip.process;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.viber.voip.ViberApplication;
import com.viber.voip.stickers.c.a;
import com.viber.voip.stickers.c.d;
import com.viber.voip.stickers.d.b;
import java.util.HashMap;

public class e
  implements b
{
  private static final String b = e.class.getSimpleName();
  private static String c = "method";
  private static String d = "package_id";
  private static String e = "package_title";
  private static String f = "percent";
  private static String g = "critical_error";
  private static e i;
  HashMap<i, BroadcastReceiver> a = new HashMap();
  private Context h;
  
  private e(Context paramContext)
  {
    this.h = paramContext;
  }
  
  private Intent a(h paramh, d paramd)
  {
    Intent localIntent = new Intent("RemoteStickerDeploymentReceiver.action");
    localIntent.putExtra(c, paramh.ordinal());
    localIntent.putExtra(d, paramd.e());
    localIntent.putExtra(e, paramd.f());
    return localIntent;
  }
  
  public static e a()
  {
    if (i == null) {
      i = new e(ViberApplication.getInstance());
    }
    return i;
  }
  
  private void a(BroadcastReceiver paramBroadcastReceiver)
  {
    a("unregisterReceiver()");
    this.h.unregisterReceiver(paramBroadcastReceiver);
  }
  
  private void a(Intent paramIntent)
  {
    this.h.sendBroadcast(paramIntent);
  }
  
  protected static void a(String paramString) {}
  
  private BroadcastReceiver c(i parami)
  {
    a("registerReceiver()");
    f localf = new f(this, parami);
    this.h.registerReceiver(localf, new IntentFilter("RemoteStickerDeploymentReceiver.action"));
    return localf;
  }
  
  public void a(i parami)
  {
    if (!this.a.containsKey(parami))
    {
      BroadcastReceiver localBroadcastReceiver = c(parami);
      this.a.put(parami, localBroadcastReceiver);
      a("+++ RemoteStickerDeploymentListener(" + this.a.size() + "): " + parami);
    }
  }
  
  public void a(a parama) {}
  
  public void a(d paramd)
  {
    a(a(h.b, paramd));
  }
  
  public void a(d paramd, int paramInt)
  {
    Intent localIntent = a(h.d, paramd);
    localIntent.putExtra(f, paramInt);
    a(localIntent);
  }
  
  public void a(boolean paramBoolean, d paramd)
  {
    Intent localIntent = a(h.e, paramd);
    localIntent.putExtra(g, paramBoolean);
    a(localIntent);
  }
  
  public void b(i parami)
  {
    BroadcastReceiver localBroadcastReceiver = (BroadcastReceiver)this.a.get(parami);
    if (localBroadcastReceiver != null)
    {
      this.a.remove(parami);
      a(localBroadcastReceiver);
      a("--- RemoteStickerDeploymentListener(" + this.a.size() + "): " + parami);
    }
  }
  
  public void b(d paramd)
  {
    a(a(h.c, paramd));
  }
  
  public void c(d paramd)
  {
    a(a(h.a, paramd));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.process.e
 * JD-Core Version:    0.7.0.1
 */