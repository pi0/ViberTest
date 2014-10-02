package com.viber.voip.viberout.promotion.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.as;
import com.viber.voip.a.at;
import com.viber.voip.a.bc;
import com.viber.voip.settings.l;

public class VOGrowPromotionScreen
  extends Activity
  implements View.OnClickListener
{
  private static final String a = VOGrowPromotionScreen.class.getSimpleName();
  private b b;
  private boolean c;
  
  private static Intent a(Context paramContext, b paramb)
  {
    Intent localIntent = new Intent(paramContext, VOGrowPromotionScreen.class);
    localIntent.putExtra(c.a.name(), paramb.ordinal());
    localIntent.setFlags(268435456);
    return localIntent;
  }
  
  private void a() {}
  
  public static void a(Context paramContext)
  {
    paramContext.startActivity(a(paramContext, b.b));
  }
  
  private void a(String paramString) {}
  
  private void a(boolean paramBoolean)
  {
    if (this.c)
    {
      a("close(), already closed");
      return;
    }
    a("close()");
    this.c = true;
    if (paramBoolean) {
      switch (a.a[this.b.ordinal()])
      {
      }
    }
    for (;;)
    {
      finish();
      return;
      bc.a().a(a.k.d.i());
      continue;
      bc.a().a(a.k.d.k());
    }
  }
  
  private void b()
  {
    Intent localIntent = getIntent();
    this.b = b.values()[localIntent.getIntExtra(c.a.name(), 0)];
    a("setupPromoScreen, action:" + this.b);
    switch (a.a[this.b.ordinal()])
    {
    default: 
      finish();
      return;
    }
    for (int i = 2130903374;; i = 2130903375)
    {
      setContentView(i);
      if (this.b == b.a)
      {
        String str1 = getIntent().getStringExtra(c.c.name());
        String str2 = getIntent().getStringExtra(c.b.name());
        ((TextView)findViewById(2131166258)).setText(getString(2131494301, new Object[] { str1, str2 }));
      }
      View localView1 = findViewById(2131166261);
      if (localView1 != null) {
        localView1.setOnClickListener(this);
      }
      Button localButton = (Button)findViewById(2131166259);
      if (localButton != null) {
        localButton.setOnClickListener(this);
      }
      View localView2 = findViewById(2131166263);
      if (localView2 == null) {
        break;
      }
      localView2.setOnClickListener(this);
      return;
    }
  }
  
  private void c()
  {
    View localView1 = findViewById(2131165359);
    View localView2 = findViewById(2131166260);
    View localView3 = findViewById(2131166261);
    int[] arrayOfInt1 = new int[2];
    int[] arrayOfInt2 = new int[2];
    localView1.getLocationInWindow(arrayOfInt1);
    localView2.getLocationInWindow(arrayOfInt2);
    int i = arrayOfInt2[0] - arrayOfInt1[0];
    int j = arrayOfInt2[1] - arrayOfInt1[1];
    int k = i + localView2.getWidth() / 2;
    int m = j + localView2.getHeight() / 2;
    int n = k - localView3.getWidth() / 2;
    int i1 = m - localView3.getHeight() / 2;
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView3.getLayoutParams();
    localLayoutParams.leftMargin = n;
    localLayoutParams.topMargin = i1;
    localView3.requestLayout();
  }
  
  private void d()
  {
    switch (a.a[this.b.ordinal()])
    {
    }
    for (;;)
    {
      ViberApplication.preferences().a("contacts_filter", 2);
      startActivity(new Intent("com.viber.voip.action.CONTACTS"));
      return;
      bc.a().a(a.k.d.h());
      continue;
      bc.a().a(a.k.d.j());
    }
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    a(true);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131166260: 
    case 2131166262: 
    default: 
      return;
    case 2131166261: 
      a(true);
      return;
    case 2131166263: 
      a(true);
      return;
    }
    a(false);
    d();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b();
    a();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    a(false);
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    setIntent(paramIntent);
    b();
    a();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    if (paramBoolean) {
      c();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.promotion.ui.VOGrowPromotionScreen
 * JD-Core Version:    0.7.0.1
 */