package com.viber.voip.messages.ui.media;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.location.Address;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.ActionBarSherlock.OnCreateOptionsMenuListener;
import com.actionbarsherlock.ActionBarSherlock.OnOptionsItemSelectedListener;
import com.google.android.maps.GeoPoint;
import com.google.android.maps.MapController;
import com.google.android.maps.MapView;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberMapActivity;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.extras.map.b;
import com.viber.voip.messages.extras.map.c;
import com.viber.voip.messages.extras.map.d;
import com.viber.voip.messages.extras.map.k;
import com.viber.voip.messages.i;
import java.util.List;

public class GoogleApiMapPreViewActivity
  extends ViberMapActivity
  implements ActionBarSherlock.OnCreateOptionsMenuListener, ActionBarSherlock.OnOptionsItemSelectedListener, ac
{
  public static final String a = GoogleApiMapPreViewActivity.class.getSimpleName();
  private MapView b;
  private View c;
  private GeoPoint d;
  private ab e = new ab();
  
  private void a(Address paramAddress, String paramString1, int paramInt1, int paramInt2, long paramLong1, String paramString2, float paramFloat, long paramLong2, String paramString3, boolean paramBoolean)
  {
    k localk = new k();
    this.d = new GeoPoint(paramInt1, paramInt2);
    MapController localMapController;
    if (TextUtils.isEmpty(paramString1))
    {
      localk.c(DateUtils.formatDateTime(this, paramLong1, 341));
      localk.a(new b(this.d.getLatitudeE6(), this.d.getLongitudeE6()));
      localk.e(paramString2);
      if (paramBoolean)
      {
        com.viber.voip.messages.extras.map.a locala = new com.viber.voip.messages.extras.map.a(this, this.b, 2130837719);
        locala.a(localk).a();
        List localList = this.b.getOverlays();
        localList.add(locala);
        localList.add(new c(this.d, this, -1.0F, 2130837719));
      }
      localMapController = this.b.getController();
      if (!paramBoolean) {
        break label253;
      }
    }
    label253:
    for (int i = 16;; i = 10)
    {
      localMapController.setZoom(i);
      localMapController.animateTo(this.d);
      this.b.setBuiltInZoomControls(false);
      this.e.a().setProgressBarIndeterminateVisibility(false);
      if ((paramLong2 > 0L) && (!TextUtils.isEmpty(paramString1)) && (TextUtils.isEmpty(paramString3))) {
        ViberApplication.getInstance().getMessagesManager().c().c(paramLong2, paramString1);
      }
      return;
      paramString2 = paramString1;
      break;
    }
  }
  
  public Activity a()
  {
    return this;
  }
  
  public void a(int paramInt1, int paramInt2, long paramLong1, String paramString1, float paramFloat, long paramLong2, String paramString2, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString2))
    {
      ViberApplication.getInstance().getLocationManager().a(d.a(paramInt1), d.a(paramInt2), new h(this, paramInt1, paramInt2, paramLong1, paramString1, paramFloat, paramLong2, paramString2, paramBoolean));
      return;
    }
    a(null, paramString2, paramInt1, paramInt2, paramLong1, paramString1, paramFloat, paramLong2, paramString2, paramBoolean);
  }
  
  public int b()
  {
    return 2130903237;
  }
  
  public View c()
  {
    this.b = ((MapView)findViewById(2131165884));
    this.c = findViewById(2131165885);
    this.c.setOnClickListener(new g(this));
    return this.b;
  }
  
  protected boolean isRouteDisplayed()
  {
    return false;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.e.a(paramConfiguration);
    super.onConfigurationChanged(paramConfiguration);
  }
  
  public boolean onContextItemSelected(android.view.MenuItem paramMenuItem)
  {
    if (!this.e.a(paramMenuItem)) {
      return super.onContextItemSelected(paramMenuItem);
    }
    return true;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.e.a(this);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    this.e.a(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public boolean onCreateOptionsMenu(android.view.Menu paramMenu)
  {
    return this.e.a(paramMenu);
  }
  
  public boolean onCreateOptionsMenu(com.actionbarsherlock.view.Menu paramMenu)
  {
    return this.e.a(paramMenu);
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    this.e.a(paramIntent);
  }
  
  public boolean onOptionsItemSelected(android.view.MenuItem paramMenuItem)
  {
    return this.e.b(paramMenuItem);
  }
  
  public boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    return this.e.a(paramMenuItem);
  }
  
  protected void onStart()
  {
    this.e.c();
    super.onStart();
  }
  
  protected void onStop()
  {
    this.e.d();
    super.onStop();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.GoogleApiMapPreViewActivity
 * JD-Core Version:    0.7.0.1
 */