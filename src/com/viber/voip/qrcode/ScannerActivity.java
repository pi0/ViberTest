package com.viber.voip.qrcode;

import android.annotation.SuppressLint;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.Display;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.viber.dexshared.ZXing.Result;
import com.viber.voip.BaseAddFriendActivity;
import com.viber.voip.BaseAddFriendActivity.ContactDetails;
import com.viber.voip.ViberApplication;
import com.viber.voip.api.ViberUrlHandlerActivity;
import com.viber.voip.ui.a.a;
import com.viber.voip.ui.a.c;
import com.viber.voip.user.UserData;
import com.viber.voip.util.gl;
import com.viber.voip.util.gn;
import com.viber.voip.util.gv;
import com.viber.voip.util.gx;
import com.viber.voip.v;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

public class ScannerActivity
  extends BaseAddFriendActivity
  implements SurfaceHolder.Callback, View.OnClickListener, v
{
  private SurfaceView a;
  private ViewFinder b;
  private e c;
  private h d;
  private boolean e;
  private s f;
  private Uri g;
  private a h;
  
  private a a(String paramString, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    a locala = (a)getSupportFragmentManager().findFragmentByTag(paramString);
    if (locala != null)
    {
      locala.a(paramOnCancelListener);
      locala.b(paramOnClickListener2);
      locala.a(paramOnClickListener1);
      return locala;
    }
    return null;
  }
  
  private void a(SurfaceHolder paramSurfaceHolder)
  {
    if (paramSurfaceHolder == null) {
      throw new IllegalStateException("No SurfaceHolder provided");
    }
    if (this.c.a()) {}
    for (;;)
    {
      return;
      try
      {
        Rect localRect = g();
        this.c.a(localRect.width(), localRect.height());
        this.c.a(paramSurfaceHolder);
        if (this.f == null)
        {
          this.f = new s(this, this.c);
          if (this.h == null)
          {
            e();
            return;
          }
        }
      }
      catch (IOException localIOException)
      {
        h();
        return;
      }
      catch (RuntimeException localRuntimeException)
      {
        h();
      }
    }
  }
  
  private void a(a parama, String paramString)
  {
    FragmentManager localFragmentManager = getSupportFragmentManager();
    FragmentTransaction localFragmentTransaction = localFragmentManager.beginTransaction();
    Fragment localFragment = localFragmentManager.findFragmentByTag(paramString);
    if (localFragment != null) {
      localFragmentTransaction.remove(localFragment);
    }
    parama.show(localFragmentTransaction, paramString);
  }
  
  private void f()
  {
    o localo = new o(this, null);
    q localq = new q(this, null);
    this.h = a("camera_init_error", localo, null, localo);
    if (this.h != null) {}
    do
    {
      do
      {
        return;
        this.h = a("scan_error", localq, null, localq);
      } while (this.h != null);
      this.h = a("not_viber_uri", new r(this, new Intent("android.intent.action.VIEW", this.g), new n(this)), localq, localq);
      if (this.h == null) {
        break;
      }
    } while (this.g != null);
    this.h.dismiss();
    this.h = a("update_details", new p(this, null), localq, localq);
  }
  
  @SuppressLint({"NewApi"})
  private Rect g()
  {
    Rect localRect = new Rect();
    Display localDisplay = ((WindowManager)getSystemService("window")).getDefaultDisplay();
    Point localPoint = new Point();
    if (gl.d()) {
      localDisplay.getSize(localPoint);
    }
    for (;;)
    {
      int i = Math.round(0.7F * localPoint.x);
      localRect.set(0, 0, i, i);
      return localRect;
      localPoint.set(localDisplay.getWidth(), localDisplay.getHeight());
    }
  }
  
  private void h()
  {
    o localo = new o(this, null);
    this.h = new c(getApplicationContext()).a(2131493805).b(2131494636).a(2131493557, localo).a(localo).a();
    a(this.h, "camera_init_error");
  }
  
  private void i()
  {
    q localq = new q(this, null);
    this.h = new c(getApplicationContext()).a(2131494633).b(2131494634).a(2131493557, localq).a(localq).a();
    a(this.h, "scan_error");
  }
  
  public void a()
  {
    i();
  }
  
  public void a(int paramInt, String paramString)
  {
    switch (paramInt)
    {
    default: 
      i();
      return;
    }
    gv.a(this, paramString);
    finish();
  }
  
  public void a(ZXing.Result paramResult, Bitmap paramBitmap, float paramFloat)
  {
    this.d.a();
    Uri localUri = Uri.parse(paramResult.getText());
    if (ViberUrlHandlerActivity.a(localUri))
    {
      String str = com.viber.voip.api.q.a(localUri);
      if (TextUtils.isEmpty(str))
      {
        startActivity(new Intent("android.intent.action.VIEW", localUri));
        finish();
        return;
      }
      if (!str.startsWith("+")) {
        str = "+" + str;
      }
      a(str, false, this);
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW", localUri);
    if (getPackageManager().queryIntentActivities(localIntent, 65536).size() > 0)
    {
      this.g = localUri;
      q localq = new q(this, null);
      this.h = new c(getApplicationContext()).a(2131494635).b(localUri.toString()).a(2131493557, new r(this, localIntent, new m(this))).b(2131493558, localq).a(localq).a();
      a(this.h, "not_viber_uri");
      return;
    }
    i();
  }
  
  public void a(String paramString, BaseAddFriendActivity.ContactDetails paramContactDetails)
  {
    if (paramContactDetails.a()) {
      gn.a(this, ViberApplication.isTablet(), paramContactDetails.c(), paramContactDetails.b(), paramContactDetails.d(), paramContactDetails.e(), paramContactDetails.f(), null);
    }
    for (;;)
    {
      finish();
      return;
      try
      {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(com.viber.voip.api.q.a(URLEncoder.encode(paramString, "UTF-8")))));
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    }
  }
  
  Handler b()
  {
    return this.f;
  }
  
  e c()
  {
    return this.c;
  }
  
  void d()
  {
    this.b.invalidate();
  }
  
  void e()
  {
    if (this.f != null) {
      this.f.sendEmptyMessage(2131165311);
    }
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    if ((TextUtils.isEmpty(UserData.getViberName())) || (TextUtils.isEmpty(UserData.getViberImage())))
    {
      if (this.f != null) {
        this.f.sendEmptyMessage(2131165309);
      }
      q localq = new q(this, null);
      this.h = new c(getApplicationContext()).a(2131494615).b(2131494616).a(2131493557, new p(this, null)).b(2131493558, localq).a(localq).a();
      a(this.h, "update_details");
      return;
    }
    gx.a(this);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().addFlags(128);
    requestWindowFeature(9L);
    setContentView(2130903322);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    if (paramBundle != null)
    {
      this.g = ((Uri)paramBundle.getParcelable("not_viber_uri"));
      f();
    }
    this.e = false;
    this.d = new h(this);
    this.a = ((SurfaceView)findViewById(2131166116));
    this.b = ((ViewFinder)findViewById(2131166117));
    findViewById(2131166119).setOnClickListener(this);
  }
  
  protected void onDestroy()
  {
    this.d.d();
    super.onDestroy();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    onBackPressed();
    return true;
  }
  
  protected void onPause()
  {
    if (this.f != null)
    {
      this.f.a();
      this.f = null;
    }
    this.d.b();
    this.c.b();
    if (!this.e) {
      this.a.getHolder().removeCallback(this);
    }
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    this.c = new e(getApplication());
    this.b.setCameraManager(this.c);
    SurfaceHolder localSurfaceHolder = this.a.getHolder();
    if (this.e) {
      a(localSurfaceHolder);
    }
    for (;;)
    {
      this.d.c();
      return;
      localSurfaceHolder.addCallback(this);
      if (!gl.b()) {
        localSurfaceHolder.setType(3);
      }
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putParcelable("not_viber_uri", this.g);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    if ((paramSurfaceHolder != null) || (!this.e))
    {
      this.e = true;
      a(paramSurfaceHolder);
    }
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    this.e = false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.qrcode.ScannerActivity
 * JD-Core Version:    0.7.0.1
 */