package com.viber.voip.backgrounds.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.q;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.backgrounds.m;
import com.viber.voip.backgrounds.o;
import com.viber.voip.messages.controller.GroupController;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.extras.image.g;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.l;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.util.at;
import com.viber.voip.util.b.w;
import com.viber.voip.util.ft;
import com.viber.voip.util.gj;
import com.viber.voip.widget.MessageBar;
import java.util.ArrayList;

public class BackgroundGalleryActivity
  extends ViberActivity
  implements AdapterView.OnItemClickListener
{
  protected Uri a;
  protected com.viber.voip.backgrounds.a.a b;
  private ProgressBar c;
  private View d;
  private TextView e;
  private GridView f;
  private ActionBar g;
  private ConversationEntityImpl h;
  private w i;
  private MenuItem j;
  private com.viber.voip.backgrounds.a k;
  private q l = new q();
  private MessageBar m;
  private m n = new a(this);
  private AsyncTask<Object, Object, Object> o = new d(this);
  
  private void a()
  {
    this.f = ((GridView)findViewById(2131165598));
    this.f.setClipToPadding(false);
    this.f.setOnItemClickListener(this);
    this.c = ((ProgressBar)findViewById(2131165601));
    this.d = findViewById(2131165599);
    this.e = ((TextView)findViewById(2131165600));
  }
  
  private void a(Intent paramIntent)
  {
    if (paramIntent.getExtras() != null)
    {
      long l1 = paramIntent.getExtras().getLong("thread_id", -1L);
      if (l1 != -1L) {
        ViberApplication.getInstance().getMessagesManager().c().a(l1, new b(this, l1));
      }
    }
    else
    {
      return;
    }
    this.h = null;
  }
  
  private void a(Uri paramUri1, Uri paramUri2)
  {
    if (this.h == null) {
      a("saveBitmapToConversation :: mConvesationEntity == null => callback init");
    }
    while ((paramUri1 == null) || (paramUri2 == null)) {
      return;
    }
    ViberApplication.getInstance().getMessagesManager().d().a(this.h.getId(), paramUri1.toString(), paramUri2.toString());
  }
  
  private void a(ConversationEntityImpl paramConversationEntityImpl, long paramLong)
  {
    this.h = paramConversationEntityImpl;
    a("onConversationReady:" + this.h);
    runOnUiThread(new c(this));
  }
  
  private boolean b()
  {
    return ((this.h != null) && (!gj.c(this.h.getBackgroundPortrait()))) || (c());
  }
  
  private boolean c()
  {
    Intent localIntent = getIntent();
    boolean bool1 = false;
    if (localIntent != null)
    {
      Bundle localBundle = getIntent().getExtras();
      bool1 = false;
      if (localBundle != null)
      {
        boolean bool2 = getIntent().getExtras().getBoolean("has_background", false);
        bool1 = false;
        if (bool2) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  private void d()
  {
    this.b.c(null);
    this.k.g();
  }
  
  protected void a(String paramString)
  {
    ViberApplication.log(3, "BackgroundGalleryActivity", paramString);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
          } while (paramIntent.getData() == null);
          Uri localUri3 = paramIntent.getData();
          a("uriFromIntent = " + localUri3);
          if (!localUri3.equals(this.a)) {
            h.c(this, this.a);
          }
          startActivityForResult(g.b(this, localUri3), 2004);
          return;
        } while (this.a == null);
        startActivityForResult(g.b(this, this.a), 2004);
        return;
      } while (paramIntent.getExtras() == null);
      setResult(-1, paramIntent);
      Uri localUri1 = Uri.parse(paramIntent.getAction());
      Uri localUri2 = Uri.parse(paramIntent.getStringExtra("landscapeUri"));
      a("onActivityResult: action(portrait img uri): " + localUri1 + ", landscape img uri: " + localUri2);
      a(localUri1, localUri2);
      finish();
    } while (this.a == null);
    this.a = null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getSherlock().requestFeature(5);
    setContentView(2130903143);
    this.g = getSupportActionBar();
    this.g.setDisplayShowHomeEnabled(false);
    this.g.setDisplayHomeAsUpEnabled(true);
    this.g.setBackgroundDrawable(getResources().getDrawable(2131296361));
    this.g.setTitle(2131494397);
    this.i = w.a(this);
    getSherlock().setProgressBarIndeterminateVisibility(false);
    a(getIntent());
    a();
    this.k = com.viber.voip.backgrounds.a.a();
    o localo = this.k.a(10000100);
    this.k.a(this.n);
    this.b = new com.viber.voip.backgrounds.a.a(this, localo);
    this.f.setAdapter(this.b);
    this.f.setOnScrollListener(this.b);
    this.m = new MessageBar(this);
    if (localo != null)
    {
      if (this.k.a(localo) != localo.a().size())
      {
        a("BackgroundGalleryActivity onCreate: backrounds sizes are not equal. Reloading backgrounds");
        d();
      }
      this.d.setVisibility(8);
    }
    for (;;)
    {
      if (paramBundle != null) {
        this.a = ((Uri)paramBundle.getParcelable("temp_uri_key"));
      }
      return;
      if ((ft.c(this)) && (h.a(true))) {
        this.d.setVisibility(0);
      }
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getSupportMenuInflater().inflate(2131755018, paramMenu);
    this.j = paramMenu.findItem(2131166299);
    if (!b()) {
      paramMenu.removeItem(2131166299);
    }
    paramMenu.removeItem(2131166300);
    return true;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    com.viber.voip.backgrounds.a.a().b(this.n);
    if (this.b != null) {
      this.b.a();
    }
    GridView localGridView = this.f;
    int i1 = localGridView.getChildCount();
    for (int i2 = 0; i2 < i1; i2++)
    {
      ImageView localImageView = (ImageView)localGridView.getChildAt(i2);
      if ((localImageView != null) && (localImageView.getDrawable() != null)) {
        localImageView.getDrawable().setCallback(null);
      }
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (this.o.getStatus() == AsyncTask.Status.PENDING)
    {
      paramView.setBackgroundResource(2130837506);
      AsyncTask localAsyncTask = this.o;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.b.a(paramInt);
      localAsyncTask.execute(arrayOfObject);
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 16908332: 
      finish();
    }
    for (;;)
    {
      return true;
      Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
      this.a = h.a(l.b, null);
      localIntent.putExtra("output", this.a);
      startActivityForResult(localIntent, 2002);
      continue;
      startActivityForResult(at.a(new Intent().setType("image/*").setAction("android.intent.action.GET_CONTENT"), getString(2131493914), new Intent[0]), 2001);
      continue;
      setResult(-1, new Intent("remove_conversation_background"));
      finish();
      continue;
      d();
    }
  }
  
  protected void onPause()
  {
    this.i.a(false);
    super.onPause();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putParcelable("temp_uri_key", this.a);
    super.onSaveInstanceState(paramBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.backgrounds.ui.BackgroundGalleryActivity
 * JD-Core Version:    0.7.0.1
 */