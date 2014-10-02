package com.viber.voip.api;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.connection.ConnectionDelegate;
import com.viber.jni.connection.ConnectionListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.registration.ActivationController;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class ViberUrlHandlerActivity
  extends SherlockFragmentActivity
{
  private static final Pattern a = Pattern.compile("(?i)http://viber.com/client/");
  private static final Pattern b = Pattern.compile("(?i)viber://");
  private List<aa> c;
  private boolean d = ViberApplication.isTablet();
  
  private void a(Intent paramIntent)
  {
    Uri localUri = paramIntent.getData();
    if (localUri == null)
    {
      finish();
      return;
    }
    String str1 = localUri.getScheme();
    String str2 = "";
    if ("http".equals(str1)) {
      str2 = a.pattern();
    }
    c localc;
    for (;;)
    {
      String[] arrayOfString = localUri.toString().replaceFirst(str2, "").toLowerCase().split("/");
      localc = new c(this, this.c.iterator(), arrayOfString, localUri);
      PhoneControllerWrapper localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(false);
      if ((localPhoneControllerWrapper.isInitialized()) || (!ViberApplication.isActivated())) {
        break;
      }
      ViberApplication.getInstance().startService(new Intent("com.viber.voip.action.VIBER_SERVICE"));
      localPhoneControllerWrapper.addInitializedListener(new d(this, localc));
      return;
      if ("viber".equals(str1)) {
        str2 = b.pattern();
      }
    }
    localc.a(1, null);
  }
  
  private static void a(z paramz)
  {
    PhoneControllerWrapper localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(false);
    ConnectionListener localConnectionListener = localPhoneControllerWrapper.getDelegatesManager().getConnectionListener();
    l locall = new l(localPhoneControllerWrapper, localConnectionListener, paramz);
    if (localPhoneControllerWrapper.isConnected())
    {
      paramz.a(localPhoneControllerWrapper);
      return;
    }
    f().postDelayed(locall, 3000L);
    localConnectionListener.registerDelegate(new ConnectionDelegate[] { locall });
  }
  
  public static boolean a(Uri paramUri)
  {
    return (paramUri != null) && ("viber".equals(paramUri.getScheme()));
  }
  
  private static void b(String paramString, w paramw, y paramy)
  {
    a(new j(paramw, paramString, paramy));
  }
  
  private static void b(String paramString, x paramx, y paramy)
  {
    a(new h(paramString, paramx, paramy));
  }
  
  private void c()
  {
    if (isFinishing()) {
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2131494638);
    localBuilder.setMessage(2131494639);
    localBuilder.setCancelable(false);
    localBuilder.setPositiveButton(2131493557, new f(this));
    localBuilder.create().show();
  }
  
  private void d()
  {
    if (isFinishing()) {
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setMessage(2131493759);
    localBuilder.setCancelable(false);
    localBuilder.setPositiveButton(2131493557, new g(this));
    localBuilder.create().show();
  }
  
  private static ActivationController e()
  {
    return ViberApplication.getInstance().getActivationController();
  }
  
  private static Handler f()
  {
    return dc.a(dk.g);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.c = new ArrayList();
    this.c.add(new m());
    this.c.add(new q());
    this.c.add(new o(this));
    this.c.add(new t(this));
    a(getIntent());
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    a(paramIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.ViberUrlHandlerActivity
 * JD-Core Version:    0.7.0.1
 */