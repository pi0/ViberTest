package com.viber.voip.messages.ui.media;

import android.content.Intent;
import android.content.UriMatcher;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.am;
import com.viber.voip.a.bc;
import com.viber.voip.a.c;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.messages.extras.image.b;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.l;
import com.viber.voip.util.gl;
import com.viber.voip.util.upload.ac;
import com.viber.voip.w;

public class SendMediaActivity
  extends ViberActivity
{
  private EditText a;
  private ImageButton b;
  private ImageView c;
  private ProgressBar d;
  private Uri e;
  private ActionBar f;
  private int g = 1;
  private SendMediaDataContainer h;
  private am i = new am();
  private boolean j = false;
  private TextWatcher k = new ae(this);
  private View.OnClickListener l = new af(this);
  
  private void a()
  {
    ImageButton localImageButton = this.b;
    if (!b()) {}
    for (boolean bool = true;; bool = false)
    {
      localImageButton.setEnabled(bool);
      return;
    }
  }
  
  private void a(Intent paramIntent)
  {
    if ((paramIntent.hasExtra("media_uri")) && (!TextUtils.isEmpty(paramIntent.getStringExtra("media_uri"))))
    {
      this.e = Uri.parse(paramIntent.getStringExtra("media_uri"));
      String str = paramIntent.getStringExtra("camera_image");
      a("handleIntent.originalFileUri: " + this.e + ", mimeType = " + str);
      if (str == null)
      {
        Toast.makeText(this, "handleIntent.mimeType can't be null", 1).show();
        a("handleIntent.mimeType can't be null");
        finish();
      }
      for (;;)
      {
        int m = (int)(System.currentTimeMillis() / 1000L);
        ag localag = new ag(this, m, paramIntent, str);
        b.a().a(localag);
        b localb = b.a();
        Uri[] arrayOfUri = new Uri[1];
        arrayOfUri[0] = this.e;
        localb.a(m, this, arrayOfUri, str, l.d, 256000);
        return;
        if (str.equals("image"))
        {
          int n;
          if (w.C.match(this.e) != -1)
          {
            n = 1;
            label191:
            if (n == 0) {
              break label247;
            }
          }
          label247:
          for (int i1 = 2;; i1 = 1)
          {
            this.g = i1;
            bc.a().a(a.m.a.a());
            this.f.setTitle(2131493922);
            this.a.setHint(2131494216);
            break;
            n = 0;
            break label191;
          }
        }
        if (!str.equals("video")) {
          break;
        }
        this.g = 3;
        bc.a().a(a.m.b.a());
        this.f.setTitle(2131493924);
        this.a.setHint(2131494217);
      }
      Toast.makeText(this, "not supported format!!!", 1).show();
      return;
    }
    a("intent without thread id or media uri! finish activity!");
    finish();
  }
  
  private void a(Uri paramUri, boolean paramBoolean)
  {
    if (paramUri == null)
    {
      ImageView localImageView = this.c;
      if (paramBoolean) {}
      for (int m = 2130838258;; m = 2130838257)
      {
        localImageView.setImageResource(m);
        return;
      }
    }
    try
    {
      this.c.setImageBitmap(h.a(this, paramUri, 1280, 1280, true));
      return;
    }
    catch (Exception localException)
    {
      a("Set image to preview:" + Log.getStackTraceString(localException));
      return;
    }
    catch (OutOfMemoryError localOutOfMemoryError) {}
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, "SendMediaActivity", paramString);
  }
  
  private boolean b()
  {
    return TextUtils.isEmpty(this.a.getText().toString().trim());
  }
  
  private void c()
  {
    if (this.h != null)
    {
      d();
      return;
    }
    this.j = true;
  }
  
  private void d()
  {
    bc localbc = bc.a();
    this.h.e = this.a.getText().toString().trim();
    if (this.h.d.equals("image")) {
      if (this.h.e.length() == 0) {
        localbc.a(this.i.c());
      }
    }
    for (;;)
    {
      Drawable localDrawable = this.c.getDrawable();
      if (localDrawable != null) {
        localDrawable.setCallback(null);
      }
      ViberApplication.log(3, "sendMediaMessage", "setResultIntentAndFinishActivity send mediaDataContainer : " + this.h);
      Intent localIntent = new Intent();
      localIntent.putExtra("data_container", this.h);
      setResult(-1, localIntent);
      finish();
      return;
      localbc.a(this.i.a(this.h.e.length()));
      continue;
      if (this.h.d.equals("video")) {
        if (this.h.e.length() == 0) {
          localbc.a(this.i.d());
        } else {
          localbc.a(this.i.b(this.h.e.length()));
        }
      }
    }
  }
  
  private void e()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("media_source", this.g);
    setResult(0, localIntent);
    if (this.h != null)
    {
      ac.a(this.h.b);
      h.c(this, this.h.c);
      if (this.h.d.equals("image")) {
        h.c(this, this.h.b);
      }
    }
  }
  
  private void f()
  {
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(this.a.getWindowToken(), 0);
  }
  
  public void finish()
  {
    f();
    super.finish();
  }
  
  public void onBackPressed()
  {
    e();
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903327);
    this.a = ((EditText)findViewById(2131166122));
    this.b = ((ImageButton)findViewById(2131165917));
    this.b.setImageResource(2130838047);
    this.c = ((ImageView)findViewById(2131165296));
    this.d = ((ProgressBar)findViewById(2131165601));
    this.f = getSupportActionBar();
    this.f.setDisplayShowHomeEnabled(false);
    this.f.setDisplayHomeAsUpEnabled(true);
    this.f.setBackgroundDrawable(getResources().getDrawable(2131296360));
    a(getIntent());
    this.b.setOnClickListener(this.l);
    a();
    this.a.addTextChangedListener(this.k);
    this.a.setOnEditorActionListener(new ad(this));
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getSupportMenuInflater().inflate(2131755029, paramMenu);
    gl.a(paramMenu.findItem(2131166326), 2130837612, 2131493707, this.l);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return true;
    }
    e();
    finish();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.SendMediaActivity
 * JD-Core Version:    0.7.0.1
 */