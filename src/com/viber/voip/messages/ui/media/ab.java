package com.viber.voip.messages.ui.media;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.res.Configuration;
import android.location.Address;
import android.location.Geocoder;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.app.ActionBar;
import com.viber.jni.LocationInfo;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.av;
import com.viber.voip.a.bc;
import com.viber.voip.a.y;
import com.viber.voip.a.z;
import com.viber.voip.util.ao;
import com.viber.voip.util.bd;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

public class ab
{
  public static final String a = ab.class.getSimpleName();
  protected ActionBarSherlock b;
  protected av c;
  private Activity d;
  private View e;
  private int f;
  private int g;
  private boolean h = true;
  private ac i;
  
  private void a(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  private void a(boolean paramBoolean)
  {
    a("onOrientationChanged isPortrait:" + paramBoolean);
    if (!paramBoolean)
    {
      this.d.getWindow().setFlags(1024, 1024);
      return;
    }
    this.d.getWindow().clearFlags(1024);
  }
  
  private void b(Intent paramIntent)
  {
    a("resolveIntent: " + paramIntent);
    this.b.setProgressBarIndeterminateVisibility(true);
    Bundle localBundle = paramIntent.getExtras();
    this.c = new av();
    bc.a().a(this.c.a());
    this.f = localBundle.getInt("user_lat");
    this.g = localBundle.getInt("user_lng");
    long l1 = localBundle.getLong("location_date");
    String str1 = localBundle.getString("user_name");
    String str2 = localBundle.getString("bucket_text");
    long l2 = localBundle.getLong("message_id");
    this.h = localBundle.getBoolean("show_bucket", true);
    this.b.getActionBar().setTitle(str1);
    this.i.a(this.f / 10, this.g / 10, l1, str1, -1.0F, l2, str2, this.h);
  }
  
  private String f()
  {
    LocationInfo localLocationInfo = new LocationInfo(this.f, this.g);
    return localLocationInfo.lat() + "," + localLocationInfo.lng();
  }
  
  public ActionBarSherlock a()
  {
    return this.b;
  }
  
  public void a(Intent paramIntent)
  {
    a("onNewIntent");
    b(paramIntent);
  }
  
  public void a(Configuration paramConfiguration)
  {
    int j = 1;
    if (paramConfiguration.orientation == j) {}
    for (;;)
    {
      a(j);
      return;
      int k = 0;
    }
  }
  
  public void a(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    View localView = LayoutInflater.from(this.d).inflate(2130903151, null);
    ((TextView)localView.findViewById(2131165356)).setText(2131493927);
    ((ImageView)localView.findViewById(2131165398)).setImageResource(2130838236);
    paramContextMenu.setHeaderView(localView);
    this.d.getMenuInflater().inflate(2131755027, paramContextMenu);
  }
  
  protected void a(ac paramac)
  {
    this.i = paramac;
    this.d = this.i.a();
    this.b = ActionBarSherlock.wrap(this.d);
    this.b.requestFeature(5);
    this.b.setContentView(this.i.b());
    this.b.getActionBar().setDisplayShowHomeEnabled(false);
    this.b.getActionBar().setDisplayHomeAsUpEnabled(true);
    this.e = this.i.c();
    b(this.d.getIntent());
    a(ao.b(this.d));
  }
  
  public boolean a(android.view.Menu paramMenu)
  {
    return this.b.dispatchCreateOptionsMenu(paramMenu);
  }
  
  public boolean a(android.view.MenuItem paramMenuItem)
  {
    Intent localIntent2;
    String str;
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    case 2131166322: 
      if (f() != null)
      {
        localIntent2 = new Intent("android.intent.action.VIEW");
        StringBuilder localStringBuilder = new StringBuilder().append("http://maps.google.com/maps?q=loc:").append(f()).append(" (You)");
        if (!this.h) {
          break label136;
        }
        str = "";
        localIntent2.setData(Uri.parse(str));
      }
      break;
    }
    for (;;)
    {
      try
      {
        this.d.startActivity(localIntent2);
        bc.a().a(this.c.c());
        return true;
        label136:
        str = "&z=10";
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        localActivityNotFoundException.printStackTrace();
        continue;
      }
      e();
      bc.a().a(this.c.d());
      continue;
      bc.a().a(a.p.a(z.e));
      Intent localIntent1 = new Intent("com.viber.voip.action.ACTION_FORWARD");
      localIntent1.putExtra("is_forward_only_locations", true);
      localIntent1.putExtra("forward_locations_lat", this.f);
      localIntent1.putExtra("forward_locations_lng", this.g);
      this.d.startActivity(localIntent1);
    }
  }
  
  public boolean a(com.actionbarsherlock.view.Menu paramMenu)
  {
    this.b.getMenuInflater().inflate(2131755014, paramMenu);
    return true;
  }
  
  public boolean a(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    case 16908332: 
      this.d.finish();
      return true;
    }
    this.d.registerForContextMenu(this.e);
    this.d.openContextMenu(this.e);
    this.d.unregisterForContextMenu(this.e);
    return true;
  }
  
  public String b()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("http://maps.google.com/maps?q=loc:").append(f()).append(" (You)");
    if (this.h) {}
    for (String str = "";; str = "&z=10") {
      return Uri.parse(str).toString();
    }
  }
  
  public boolean b(android.view.MenuItem paramMenuItem)
  {
    return this.b.dispatchOptionsItemSelected(paramMenuItem);
  }
  
  protected void c()
  {
    a("onStart");
    bc.a().a(this.d);
  }
  
  protected void d()
  {
    a("onStop");
    bc.a().b(this.d);
  }
  
  public void e()
  {
    Geocoder localGeocoder = new Geocoder(this.d, Locale.getDefault());
    try
    {
      LocationInfo localLocationInfo = new LocationInfo(this.f, this.g);
      List localList = localGeocoder.getFromLocation(localLocationInfo.getLatitude(), localLocationInfo.getLongitude(), 1);
      StringBuilder localStringBuilder = new StringBuilder();
      if (localList.size() > 0)
      {
        Address localAddress = (Address)localList.get(0);
        j = localAddress.getMaxAddressLineIndex();
        if (j >= 0)
        {
          if (localAddress.getAddressLine(j) == null) {
            break label280;
          }
          localStringBuilder.append(localAddress.getAddressLine(j));
          if (j <= 0) {
            break label280;
          }
          localStringBuilder.append(" / ");
          break label280;
        }
      }
      String str3 = localStringBuilder.toString();
      str1 = str3;
      String str2 = this.d.getString(2131493932) + "<br/>" + str1 + "<br/>" + "<a href=\"" + "http://maps.google.com/maps?q=loc:" + f() + "\">" + this.d.getString(2131493933) + "</a>";
      bd.b(this.d.getString(2131493931), str2, null);
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        int j;
        a("sendLocationByMail " + localIOException.getMessage());
        String str1 = "";
        continue;
        label280:
        j--;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.ab
 * JD-Core Version:    0.7.0.1
 */