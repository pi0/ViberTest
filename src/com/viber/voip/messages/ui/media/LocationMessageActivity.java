package com.viber.voip.messages.ui.media;

import android.content.Intent;
import android.content.res.Configuration;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.Toast;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.ActionBarSherlock.OnCreateOptionsMenuListener;
import com.actionbarsherlock.ActionBarSherlock.OnOptionsItemSelectedListener;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuInflater;
import com.google.android.maps.GeoPoint;
import com.google.android.maps.MapController;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.al;
import com.viber.voip.a.bc;
import com.viber.voip.a.m;
import com.viber.voip.app.ViberMapActivity;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.extras.map.c;
import com.viber.voip.messages.extras.map.d;
import com.viber.voip.messages.extras.map.i;
import com.viber.voip.messages.extras.map.k;
import com.viber.voip.messages.ui.view.ViberMapView;
import com.viber.voip.util.ao;
import com.viber.voip.util.gl;
import java.util.List;

public class LocationMessageActivity
  extends ViberMapActivity
  implements ActionBarSherlock.OnCreateOptionsMenuListener, ActionBarSherlock.OnOptionsItemSelectedListener, com.viber.voip.messages.extras.a.b, i
{
  private ActionBarSherlock a = ActionBarSherlock.wrap(this);
  private ViberMapView b;
  private View c;
  private GeoPoint d;
  private com.viber.voip.messages.extras.map.a e;
  private c f;
  private d g;
  private k h;
  private Handler i;
  private r j;
  private m k = com.viber.voip.a.a.n;
  
  private void a()
  {
    this.c = findViewById(2131165885);
    this.c.setOnClickListener(new o(this));
    this.b = ((ViberMapView)findViewById(2131165884));
    this.b.setWillNotDraw(false);
    this.b.getController().setZoom(16);
    this.b.setMapMoveListener(new p(this));
  }
  
  private void a(GeoPoint paramGeoPoint)
  {
    this.b.getController().animateTo(paramGeoPoint);
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
  
  private void b()
  {
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      String str = localBundle.getString("prev_action");
      if (com.viber.voip.a.a.n.a().equals(str)) {
        this.k = com.viber.voip.a.a.n;
      }
    }
    else
    {
      return;
    }
    this.k = com.viber.voip.a.a.o;
  }
  
  private void b(GeoPoint paramGeoPoint)
  {
    synchronized (this.h)
    {
      this.h = new k();
      this.h.a(null);
      this.h.b(null);
      this.h.a(new com.viber.voip.messages.extras.map.b(paramGeoPoint.getLatitudeE6(), paramGeoPoint.getLongitudeE6()));
      return;
    }
  }
  
  public void a(Location paramLocation)
  {
    a("onLocationReady oun location = " + paramLocation);
    if (a(paramLocation)) {
      return;
    }
    GeoPoint localGeoPoint = new GeoPoint(d.a(paramLocation.getLatitude()), d.a(paramLocation.getLongitude()));
    this.f = new c(localGeoPoint, this, paramLocation.getAccuracy(), 2130838368);
    this.b.getOverlays().add(this.f);
    this.d = localGeoPoint;
    b(localGeoPoint);
    this.b.getOverlays().add(this.e);
    a(localGeoPoint);
  }
  
  public void a(k paramk)
  {
    for (;;)
    {
      synchronized (this.h)
      {
        this.h = paramk;
        if (TextUtils.isEmpty(paramk.f()))
        {
          str = getString(2131493920);
          paramk.e(str);
          this.e.a(paramk);
          return;
        }
      }
      String str = paramk.f();
    }
  }
  
  protected boolean isRouteDisplayed()
  {
    return false;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    int m = 1;
    if (paramConfiguration.orientation == m) {}
    for (;;)
    {
      a(m);
      super.onConfigurationChanged(paramConfiguration);
      return;
      int n = 0;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    bc.a().a(com.viber.voip.a.a.l.a());
    this.a.setContentView(2130903326);
    boolean bool = getIntent().getBooleanExtra("fromConversation", false);
    ActionBar localActionBar = this.a.getActionBar();
    if (bool) {}
    for (int m = 2131494151;; m = 2131494541)
    {
      localActionBar.setTitle(m);
      this.a.getActionBar().setDisplayShowHomeEnabled(false);
      this.a.getActionBar().setDisplayHomeAsUpEnabled(true);
      b();
      a();
      this.g = new d(null, this);
      this.e = new com.viber.voip.messages.extras.map.a(this, this.b, 2130837719);
      this.h = new k();
      this.i = dc.a(dk.a);
      this.j = new r(this, null);
      ViberApplication.getInstance().getLocationManager().a(this);
      a(ao.b(this));
      return;
    }
  }
  
  public boolean onCreateOptionsMenu(android.view.Menu paramMenu)
  {
    return this.a.dispatchCreateOptionsMenu(paramMenu);
  }
  
  public boolean onCreateOptionsMenu(com.actionbarsherlock.view.Menu paramMenu)
  {
    this.a.getMenuInflater().inflate(2131755029, paramMenu);
    boolean bool = getIntent().getBooleanExtra("fromConversation", false);
    com.actionbarsherlock.view.MenuItem localMenuItem = paramMenu.findItem(2131166326);
    if (bool) {}
    for (int m = 2131493707;; m = 2131494012)
    {
      gl.a(localMenuItem, 2130837612, m, new q(this));
      return true;
    }
  }
  
  public boolean onOptionsItemSelected(android.view.MenuItem paramMenuItem)
  {
    return this.a.dispatchOptionsItemSelected(paramMenuItem);
  }
  
  public boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    this.i.removeCallbacks(this.j);
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    finish();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.LocationMessageActivity
 * JD-Core Version:    0.7.0.1
 */