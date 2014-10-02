package com.viber.voip.messages.ui.media;

import android.content.Intent;
import android.content.res.Configuration;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.Toast;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.ActionBarSherlock.OnCreateOptionsMenuListener;
import com.actionbarsherlock.ActionBarSherlock.OnOptionsItemSelectedListener;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.internal.view.menu.ActionMenuItemView;
import com.actionbarsherlock.internal.widget.CapitalizingButton;
import com.actionbarsherlock.view.MenuInflater;
import com.viber.dexshared.GMaps.BitmapDescriptor;
import com.viber.dexshared.GMaps.BitmapDescriptorFactory;
import com.viber.dexshared.GMaps.CameraPosition;
import com.viber.dexshared.GMaps.Factory;
import com.viber.dexshared.GMaps.GoogleMap;
import com.viber.dexshared.GMaps.GroundOverlay;
import com.viber.dexshared.GMaps.GroundOverlayOptions;
import com.viber.dexshared.GMaps.LatLng;
import com.viber.dexshared.GMaps.Marker;
import com.viber.dexshared.GMaps.MarkerOptions;
import com.viber.dexshared.GMaps.NotAvailableException;
import com.viber.dexshared.GMaps.UiSettings;
import com.viber.voip.ViberApplication;
import com.viber.voip.ViberEnv;
import com.viber.voip.a.a;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.extras.a.b;
import com.viber.voip.messages.extras.map.BalloonView;
import com.viber.voip.messages.extras.map.d;
import com.viber.voip.messages.extras.map.i;
import com.viber.voip.messages.extras.map.k;
import com.viber.voip.messages.extras.map.l;
import com.viber.voip.messages.extras.map.n;
import com.viber.voip.util.ao;
import com.viber.voip.util.gl;

public class LocationMessageActivityV2
  extends FragmentActivity
  implements ActionBarSherlock.OnCreateOptionsMenuListener, ActionBarSherlock.OnOptionsItemSelectedListener, b, i
{
  GMaps.GroundOverlay a;
  private GMaps.Factory b = ViberEnv.getGMapsFactory();
  private com.viber.voip.a.m c = a.n;
  private l d;
  private GMaps.MarkerOptions e;
  private GMaps.MarkerOptions f;
  private GMaps.Marker g;
  private GMaps.GoogleMap h;
  private k i;
  private d j;
  private Handler k;
  private aa l;
  private BalloonView m;
  private ImageView n;
  private n o;
  private View p;
  private boolean q;
  private ActionMenuItemView r;
  private ActionBarSherlock s = ActionBarSherlock.wrap(this);
  
  private void a()
  {
    this.h = this.d.getMap();
    this.e = this.b.newMarkerOptions();
    this.e.anchor(0.5F, 0.5F);
    this.e.icon(this.b.getBitmapDescriptorFactory().fromResource(2130838368));
    this.f = this.b.newMarkerOptions();
    this.f.icon(this.b.getBitmapDescriptorFactory().fromResource(2130837719));
    this.h.getUiSettings().setZoomControlsEnabled(false);
    this.h.getUiSettings().setMyLocationButtonEnabled(true);
    this.m = ((BalloonView)findViewById(2131165888));
    this.n = ((ImageView)findViewById(2131165889));
    this.h.setOnCameraChangeListener(new u(this));
    this.o = new v(this);
    this.d.a().setMapTouchCallback(this.o);
    this.p = findViewById(2131165885);
    this.p.setOnClickListener(new w(this));
  }
  
  private void a(GMaps.LatLng paramLatLng)
  {
    synchronized (this.i)
    {
      this.i = new k();
      this.i.a(null);
      this.i.b(null);
      this.i.e("");
      this.i.a(paramLatLng);
      return;
    }
  }
  
  private void a(Runnable paramRunnable)
  {
    FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
    this.d = new t(this, paramRunnable);
    localFragmentTransaction.add(2131165887, this.d.getFragment());
    localFragmentTransaction.commit();
  }
  
  private void a(String paramString) {}
  
  private void a(boolean paramBoolean)
  {
    a("onOrientationChanged isPortrait:" + paramBoolean);
    if (!paramBoolean)
    {
      getWindow().setFlags(1024, 1024);
      return;
    }
    getWindow().clearFlags(1024);
  }
  
  private boolean a(Object paramObject)
  {
    boolean bool = false;
    if (paramObject == null)
    {
      Toast.makeText(this, "The system could not identify your location", 0).show();
      finish();
      bool = true;
    }
    return bool;
  }
  
  private void b(Location paramLocation)
  {
    runOnUiThread(new x(this, paramLocation));
  }
  
  private void b(boolean paramBoolean)
  {
    int i1 = 8;
    ImageButton localImageButton;
    CapitalizingButton localCapitalizingButton;
    if (this.r != null)
    {
      localImageButton = (ImageButton)this.r.findViewById(2131165496);
      localCapitalizingButton = (CapitalizingButton)this.r.findViewById(2131165497);
      if ((localImageButton != null) && (localCapitalizingButton != null)) {
        if (!paramBoolean) {
          break label99;
        }
      }
    }
    label99:
    for (int i2 = 0;; i2 = i1)
    {
      localImageButton.setVisibility(i2);
      if (paramBoolean) {
        i1 = 0;
      }
      localCapitalizingButton.setVisibility(i1);
      ActionMenuItemView localActionMenuItemView = this.r;
      int i3 = 0;
      if (paramBoolean) {
        i3 = 2130837536;
      }
      localActionMenuItemView.setBackgroundResource(i3);
      return;
    }
  }
  
  private boolean b()
  {
    double d1 = Math.abs(this.g.getPosition().getLatitude() - this.h.getCameraPosition().getTarget().getLatitude());
    double d2 = Math.abs(this.g.getPosition().getLongitude() - this.h.getCameraPosition().getTarget().getLongitude());
    return (d1 >= 0.0009D) || (d2 >= 0.0009D);
  }
  
  private void c(Location paramLocation)
  {
    if (this.a != null) {
      this.a.remove();
    }
    GMaps.BitmapDescriptor localBitmapDescriptor = this.b.getBitmapDescriptorFactory().fromResource(2130838359);
    this.a = this.h.addGroundOverlay(this.b.newGroundOverlayOptions().image(localBitmapDescriptor).transparency(0.0F).position(this.b.newLatLng(paramLocation.getLatitude(), paramLocation.getLongitude()), 2.0F * paramLocation.getAccuracy(), 2.0F * paramLocation.getAccuracy()));
  }
  
  public void a(Location paramLocation)
  {
    a("onLocationReady oun location = " + paramLocation);
    if (a(paramLocation)) {
      return;
    }
    runOnUiThread(new y(this, paramLocation));
  }
  
  public void a(k paramk)
  {
    for (;;)
    {
      synchronized (this.i)
      {
        this.i = paramk;
        if (TextUtils.isEmpty(paramk.f()))
        {
          str = getString(2131493920);
          paramk.e(str);
          this.m.a(paramk);
          this.m.setVisibility(0);
          this.n.setVisibility(0);
          return;
        }
      }
      String str = paramk.f();
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    int i1 = 1;
    if (paramConfiguration.orientation == i1) {}
    for (;;)
    {
      a(i1);
      super.onConfigurationChanged(paramConfiguration);
      return;
      int i2 = 0;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      this.b.initialize(getApplicationContext());
      setContentView(2130903239);
      this.j = new d(null, this);
      this.l = new aa(this, null);
      this.i = new k();
      a(new s(this));
      boolean bool = getIntent().getBooleanExtra("fromConversation", false);
      ActionBar localActionBar = this.s.getActionBar();
      if (bool) {}
      for (int i1 = 2131494151;; i1 = 2131494541)
      {
        localActionBar.setTitle(i1);
        this.s.getActionBar().setDisplayShowHomeEnabled(false);
        this.s.getActionBar().setDisplayHomeAsUpEnabled(true);
        a(ao.b(this));
        this.k = dc.a(dk.a);
        return;
      }
      String str;
      return;
    }
    catch (GMaps.NotAvailableException localNotAvailableException)
    {
      str = ViberApplication.getInstance().getString(2131493847);
      ViberApplication.getInstance().showToast(str);
      finish();
    }
  }
  
  public boolean onCreateOptionsMenu(android.view.Menu paramMenu)
  {
    return this.s.dispatchCreateOptionsMenu(paramMenu);
  }
  
  public boolean onCreateOptionsMenu(com.actionbarsherlock.view.Menu paramMenu)
  {
    this.s.getMenuInflater().inflate(2131755029, paramMenu);
    boolean bool = getIntent().getBooleanExtra("fromConversation", false);
    com.actionbarsherlock.view.MenuItem localMenuItem = paramMenu.findItem(2131166326);
    if (bool) {}
    for (int i1 = 2131493707;; i1 = 2131494012)
    {
      this.r = gl.a(localMenuItem, 2130837612, i1, new z(this));
      if ((this.g == null) || (this.g.getPosition().getLatitude() == 0.0D)) {
        break;
      }
      b(true);
      return true;
    }
    b(false);
    return true;
  }
  
  public boolean onOptionsItemSelected(android.view.MenuItem paramMenuItem)
  {
    return this.s.dispatchOptionsItemSelected(paramMenuItem);
  }
  
  public boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    this.k.removeCallbacks(this.l);
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    finish();
    return true;
  }
  
  protected void onPause()
  {
    super.onPause();
    ViberApplication.getInstance().notifyActivityOnForeground(false, getClass().getSimpleName());
  }
  
  protected void onResume()
  {
    super.onResume();
    ViberApplication.getInstance().notifyActivityOnForeground(true, getClass().getSimpleName());
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.LocationMessageActivityV2
 * JD-Core Version:    0.7.0.1
 */