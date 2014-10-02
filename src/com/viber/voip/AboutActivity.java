package com.viber.voip;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.a.ba;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.messages.extras.fb.ad;
import com.viber.voip.messages.extras.fb.ae;
import com.viber.voip.messages.extras.fb.ah;
import com.viber.voip.messages.extras.fb.al;
import com.viber.voip.messages.extras.fb.s;
import com.viber.voip.messages.extras.twitter.l;
import com.viber.voip.util.ft;
import com.viber.voip.util.hb;

public class AboutActivity
  extends ViberActivity
  implements View.OnClickListener, ae
{
  private final s a = ViberApplication.getInstance().getFacebookManager();
  private ad b;
  private TextView c;
  
  private void a()
  {
    String str = w.c();
    this.c.setText(str);
  }
  
  private void b()
  {
    this.b = new a(this);
    if (this.a.b() == ah.c)
    {
      c();
      return;
    }
    if (this.a.b() == ah.b)
    {
      this.a.a(this, this.b);
      return;
    }
    this.a.a(this, this.b, true);
  }
  
  private void c()
  {
    if (ft.c(this)) {
      new al(this.a, this, this).execute(new Void[0]);
    }
  }
  
  private void d()
  {
    l locall = ViberApplication.getInstance().getTwitterManager();
    locall.a(this, new c(this, locall));
  }
  
  public void onBackPressed()
  {
    if (isTaskRoot())
    {
      startActivity(new Intent("com.viber.voip.action.YOU"));
      finish();
      return;
    }
    super.onBackPressed();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131165881: 
      hb.a(this);
      return;
    case 2131165491: 
      startActivity(new Intent("android.intent.action.VIEW", Uri.parse(bc.b().T)));
      return;
    case 2131165493: 
      b();
      return;
    }
    d();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (ViberApplication.isTablet())
    {
      setTheme(2131558709);
      getSupportActionBar().setDisplayShowHomeEnabled(false);
      getSupportActionBar().setDisplayHomeAsUpEnabled(true);
      getSupportActionBar().setTitle(2131494122);
    }
    setContentView(2130903099);
    this.c = ((TextView)findViewById(2131165490));
    a();
    findViewById(2131165881).setOnClickListener(this);
    findViewById(2131165491).setOnClickListener(this);
    findViewById(2131165492).setOnClickListener(this);
    findViewById(2131165493).setOnClickListener(this);
  }
  
  public void onFacebookValidationError()
  {
    this.a.a(this, this.b, true);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    onBackPressed();
    return true;
  }
  
  protected void onStart()
  {
    super.onStart();
    com.viber.voip.a.bc.a().a(com.viber.voip.a.a.h.a.a());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.AboutActivity
 * JD-Core Version:    0.7.0.1
 */