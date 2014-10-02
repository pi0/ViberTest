package com.viber.voip.messages.ui.media;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.location.Address;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.ActionBarSherlock.OnCreateOptionsMenuListener;
import com.actionbarsherlock.ActionBarSherlock.OnOptionsItemSelectedListener;
import com.viber.dexshared.GMaps.BitmapDescriptorFactory;
import com.viber.dexshared.GMaps.CameraPosition;
import com.viber.dexshared.GMaps.CameraUpdateFactory;
import com.viber.dexshared.GMaps.Factory;
import com.viber.dexshared.GMaps.GoogleMap;
import com.viber.dexshared.GMaps.GoogleMap.OnMapClickListener;
import com.viber.dexshared.GMaps.LatLng;
import com.viber.dexshared.GMaps.Marker;
import com.viber.dexshared.GMaps.MarkerOptions;
import com.viber.dexshared.GMaps.UiSettings;
import com.viber.voip.ViberApplication;
import com.viber.voip.ViberEnv;
import com.viber.voip.messages.controller.x;
import java.util.ArrayList;
import java.util.Iterator;

public class GoogleApiMapPreviewActivityV2
  extends FragmentActivity
  implements ActionBarSherlock.OnCreateOptionsMenuListener, ActionBarSherlock.OnOptionsItemSelectedListener, GMaps.GoogleMap.OnMapClickListener, ac
{
  private GMaps.Factory a = ViberEnv.getGMapsFactory();
  private com.viber.voip.messages.extras.map.l b;
  private GMaps.GoogleMap c;
  private View d;
  private View e;
  private GMaps.MarkerOptions f;
  private GMaps.Marker g;
  private ab h = new ab();
  private n i;
  private ArrayList<Runnable> j = new ArrayList();
  
  private void a(Address paramAddress, String paramString1, int paramInt1, int paramInt2, long paramLong1, String paramString2, float paramFloat, long paramLong2, String paramString3, boolean paramBoolean)
  {
    com.viber.voip.messages.extras.map.k localk = new com.viber.voip.messages.extras.map.k();
    GMaps.LatLng localLatLng1 = this.a.newLatLng(paramInt1 / 1000000.0D, paramInt2 / 1000000.0D);
    GMaps.Factory localFactory;
    GMaps.LatLng localLatLng2;
    if (TextUtils.isEmpty(paramString1))
    {
      localk.c(DateUtils.formatDateTime(this, paramLong1, 341));
      localk.a(localLatLng1);
      localk.e(paramString2);
      localFactory = this.a;
      localLatLng2 = this.a.newLatLng(paramInt1 / 1000000.0D, paramInt2 / 1000000.0D);
      if (!paramBoolean) {
        break label364;
      }
    }
    label364:
    for (float f1 = 16.0F;; f1 = 10.0F)
    {
      GMaps.CameraPosition localCameraPosition = localFactory.newCameraPosition(localLatLng2, f1, 0.0F, 0.0F);
      if (paramBoolean)
      {
        this.f = this.a.newMarkerOptions();
        this.f.icon(this.a.getBitmapDescriptorFactory().fromResource(2130837719));
        this.f.title(localk.g());
        this.f.snippet(localk.e());
        this.f.position(this.a.newLatLng(localCameraPosition.getTarget().getLatitude(), localCameraPosition.getTarget().getLongitude()));
        this.g = this.c.addMarker(this.f);
        this.g.showInfoWindow();
      }
      this.c.animateCamera(this.a.getCameraUpdateFactory().newCameraPosition(localCameraPosition));
      this.c.getUiSettings().setZoomControlsEnabled(false);
      this.h.a().setProgressBarIndeterminateVisibility(false);
      if ((paramLong2 > 0L) && (!TextUtils.isEmpty(paramString1)) && (TextUtils.isEmpty(paramString3))) {
        ViberApplication.getInstance().getMessagesManager().c().c(paramLong2, paramString1);
      }
      return;
      paramString2 = paramString1;
      break;
    }
  }
  
  private void a(Runnable paramRunnable)
  {
    FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
    this.b = new j(this, paramRunnable);
    localFragmentTransaction.add(2131165887, this.b.getFragment());
    localFragmentTransaction.commit();
  }
  
  private void b(Runnable paramRunnable)
  {
    if (this.j != null)
    {
      this.j.add(paramRunnable);
      return;
    }
    paramRunnable.run();
  }
  
  private void d()
  {
    this.c = this.b.getMap();
    this.i = new n(this, getLayoutInflater());
    this.c.setInfoWindowAdapter(this.i);
    this.c.setOnMapClickListener(this);
    this.d = findViewById(2131165885);
    this.d.setOnClickListener(new k(this));
  }
  
  private void e()
  {
    Iterator localIterator = this.j.iterator();
    while (localIterator.hasNext()) {
      ((Runnable)localIterator.next()).run();
    }
    this.j = null;
  }
  
  public Activity a()
  {
    return this;
  }
  
  public void a(int paramInt1, int paramInt2, long paramLong1, String paramString1, float paramFloat, long paramLong2, String paramString2, boolean paramBoolean)
  {
    b(new l(this, paramString2, paramInt1, paramInt2, paramLong1, paramString1, paramFloat, paramLong2, paramBoolean));
  }
  
  public int b()
  {
    return 2130903238;
  }
  
  public View c()
  {
    this.d = findViewById(2131165885);
    this.e = findViewById(2131165886);
    a(new i(this));
    return this.e;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.h.a(paramConfiguration);
    super.onConfigurationChanged(paramConfiguration);
  }
  
  public boolean onContextItemSelected(android.view.MenuItem paramMenuItem)
  {
    if (!this.h.a(paramMenuItem)) {
      return super.onContextItemSelected(paramMenuItem);
    }
    return true;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.h.a(this);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    this.h.a(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public boolean onCreateOptionsMenu(android.view.Menu paramMenu)
  {
    return this.h.a(paramMenu);
  }
  
  public boolean onCreateOptionsMenu(com.actionbarsherlock.view.Menu paramMenu)
  {
    return this.h.a(paramMenu);
  }
  
  public void onMapClick(GMaps.LatLng paramLatLng)
  {
    if (this.g != null) {
      this.g.showInfoWindow();
    }
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    this.h.a(paramIntent);
  }
  
  public boolean onOptionsItemSelected(android.view.MenuItem paramMenuItem)
  {
    return this.h.b(paramMenuItem);
  }
  
  public boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    return this.h.a(paramMenuItem);
  }
  
  protected void onStart()
  {
    this.h.c();
    super.onStart();
  }
  
  protected void onStop()
  {
    this.h.d();
    super.onStop();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.GoogleApiMapPreviewActivityV2
 * JD-Core Version:    0.7.0.1
 */