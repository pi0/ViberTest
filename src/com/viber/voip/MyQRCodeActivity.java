package com.viber.voip;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.hardware.Camera;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.api.q;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.l;
import com.viber.voip.registration.cp;
import com.viber.voip.registration.dj;
import com.viber.voip.util.b.al;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.gz;
import java.io.File;

public class MyQRCodeActivity
  extends ViberFragmentActivity
  implements View.OnClickListener
{
  private ImageView a;
  private View b;
  private w c;
  private x d;
  private Handler e;
  private final al f = new ap(this);
  
  private void b(String paramString)
  {
    this.e.post(new aq(this, paramString));
  }
  
  private static File c(String paramString)
  {
    return h.a(l.h, paramString, false);
  }
  
  String a()
  {
    return ((ViberApplication)getApplication()).getRegistrationValues().e();
  }
  
  void a(String paramString)
  {
    int i = getResources().getDimensionPixelSize(2131362367);
    Bitmap localBitmap = h.a(q.a(paramString), i);
    h.a(localBitmap, c(paramString), 80, Bitmap.CompressFormat.PNG, false);
    runOnUiThread(new ar(this, localBitmap));
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    gz.a(this);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903277);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    this.c = w.a(this);
    this.d = x.a();
    this.e = dc.a(dk.h);
    this.a = ((ImageView)findViewById(2131166003));
    this.b = findViewById(2131165601);
    View localView = findViewById(2131166002);
    if ((!dj.d()) && (Camera.getNumberOfCameras() > 0))
    {
      localView.setVisibility(0);
      localView.setOnClickListener(this);
    }
    String str;
    for (;;)
    {
      this.b.setVisibility(0);
      str = a();
      File localFile = c(str);
      if ((localFile == null) || (!localFile.exists())) {
        break;
      }
      this.c.a(Uri.fromFile(localFile), this.a, this.d, this.f);
      return;
      localView.setVisibility(4);
    }
    b(str);
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
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.MyQRCodeActivity
 * JD-Core Version:    0.7.0.1
 */