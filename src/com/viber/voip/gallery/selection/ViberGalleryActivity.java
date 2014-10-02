package com.viber.voip.gallery.selection;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.Toast;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.gallery.GalleryItem;
import com.viber.voip.gallery.animation.SwipeableHorizontalScrollView;
import com.viber.voip.gallery.animation.b;
import com.viber.voip.messages.conversation.ui.ConversationData;
import com.viber.voip.util.b.ab;
import com.viber.voip.util.b.ad;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public abstract class ViberGalleryActivity
  extends ViberFragmentActivity
  implements b, i
{
  Handler a;
  private ad b;
  private x c;
  private boolean d;
  private SwipeableHorizontalScrollView e;
  private ArrayList<GalleryItem> f = new ArrayList();
  private h g;
  private q h;
  private int i;
  private int j;
  private int k;
  private a l;
  private Animation m;
  private Animation n;
  
  public static void a(Context paramContext, ConversationData paramConversationData)
  {
    if (com.viber.voip.messages.extras.image.h.c())
    {
      Intent localIntent = new Intent("com.viber.voip.action.SELECTION_GALLERY");
      localIntent.putExtra("extra_conversation_data", paramConversationData);
      if (!(paramContext instanceof Activity)) {
        localIntent.addFlags(268435456);
      }
      paramContext.startActivity(localIntent);
    }
  }
  
  private void a(Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    if ((localBundle == null) || (!localBundle.containsKey("extra_selected_images"))) {
      return;
    }
    a(localBundle);
  }
  
  private void a(GalleryItem... paramVarArgs)
  {
    int i1 = paramVarArgs.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      GalleryItem localGalleryItem = paramVarArgs[i2];
      ImageView localImageView = new ImageView(this);
      localImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
      this.b.a(localGalleryItem.b(), localImageView, this.c);
      this.e.a(localImageView, localGalleryItem, this.i, this.i, this.j, this.k, this.j, 0);
    }
  }
  
  private void b(boolean paramBoolean)
  {
    this.d = true;
    this.l.b();
    this.g.a();
    this.h.b();
    this.e.setVisibility(0);
    if (paramBoolean) {
      this.e.startAnimation(this.m);
    }
  }
  
  private void c()
  {
    this.g = ((h)getSupportFragmentManager().findFragmentByTag("gallery_tag"));
    if (this.g == null) {
      this.g = new h();
    }
    this.h = ((q)getSupportFragmentManager().findFragmentByTag("images_tag"));
    if (this.h == null) {
      this.h = new q();
    }
  }
  
  private void c(boolean paramBoolean)
  {
    this.d = false;
    this.l.c();
    this.g.b();
    this.h.c();
    if (paramBoolean)
    {
      this.n.setAnimationListener(new u(this));
      this.e.startAnimation(this.n);
      return;
    }
    this.e.setVisibility(8);
  }
  
  private void d()
  {
    this.l.b(this.f.size());
  }
  
  void a(Bundle paramBundle)
  {
    this.d = paramBundle.getBoolean("extra_multiple_selection", false);
    this.f = paramBundle.getParcelableArrayList("extra_selected_images");
    if (this.f == null) {
      this.f = new ArrayList();
    }
    d();
    if (this.d)
    {
      b(false);
      a((GalleryItem[])this.f.toArray(new GalleryItem[this.f.size()]));
    }
    if (this.h.isAdded()) {
      this.h.a();
    }
  }
  
  public void a(View paramView, Object paramObject, int paramInt)
  {
    if ((paramObject != null) && (this.f.remove(paramObject)))
    {
      this.h.a();
      GalleryItem localGalleryItem = (GalleryItem)paramObject;
      Handler localHandler = this.a;
      Uri[] arrayOfUri = new Uri[1];
      arrayOfUri[0] = localGalleryItem.b();
      localHandler.post(new com.viber.voip.gallery.preview.a(arrayOfUri));
      d();
      if ((!a()) && (this.f.isEmpty())) {
        supportInvalidateOptionsMenu();
      }
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("extra_bucket_id", paramString1);
    localBundle.putString("extra_bucket_name", paramString2);
    this.h.setArguments(localBundle);
    if (this.d) {
      this.h.b();
    }
    getSupportFragmentManager().beginTransaction().setCustomAnimations(2130968587, 2130968588, 2130968587, 2130968588).replace(2131165332, this.h, "images_tag").addToBackStack(null).commit();
  }
  
  protected abstract void a(ArrayList<GalleryItem> paramArrayList);
  
  protected void a(List<GalleryItem> paramList) {}
  
  void a(boolean paramBoolean)
  {
    this.f.clear();
    this.e.a();
    c(false);
    d();
    if ((paramBoolean) && (this.h.isAdded())) {
      this.h.a();
    }
  }
  
  protected boolean a()
  {
    return false;
  }
  
  public boolean a(GalleryItem paramGalleryItem)
  {
    return this.f.contains(paramGalleryItem);
  }
  
  public boolean a(GalleryItem paramGalleryItem, boolean paramBoolean)
  {
    if (!this.f.contains(paramGalleryItem)) {}
    for (int i1 = 1; !new File(com.viber.voip.messages.extras.image.h.a(this, paramGalleryItem.b())).exists(); i1 = 0)
    {
      Toast.makeText(this, 2131493953, 1).show();
      return false;
    }
    if ((!this.d) && (!paramBoolean))
    {
      b(paramGalleryItem);
      return false;
    }
    if ((i1 != 0) && (this.f.size() >= 10))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(10);
      Toast.makeText(this, getString(2131494428, arrayOfObject), 0).show();
      return false;
    }
    if (i1 != 0)
    {
      this.f.add(paramGalleryItem);
      a(new GalleryItem[] { paramGalleryItem });
      d();
      if (this.d) {
        break label219;
      }
      b(true);
    }
    for (;;)
    {
      return true;
      this.f.remove(paramGalleryItem);
      this.e.a(paramGalleryItem);
      Handler localHandler = this.a;
      Uri[] arrayOfUri = new Uri[1];
      arrayOfUri[0] = paramGalleryItem.b();
      localHandler.post(new com.viber.voip.gallery.preview.a(arrayOfUri));
      break;
      label219:
      if ((!a()) && (((i1 == 0) && (this.f.isEmpty())) || ((i1 != 0) && (this.f.size() == 1)))) {
        supportInvalidateOptionsMenu();
      }
    }
  }
  
  public void b()
  {
    this.l.a();
  }
  
  public void b(View paramView, Object paramObject, int paramInt) {}
  
  protected void b(GalleryItem paramGalleryItem) {}
  
  public void b(String paramString1, String paramString2)
  {
    this.l.a(paramString2);
  }
  
  public void onBackPressed()
  {
    if (!getSupportFragmentManager().popBackStackImmediate())
    {
      a(this.f);
      super.onBackPressed();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903047);
    this.m = AnimationUtils.loadAnimation(this, 2130968592);
    this.n = AnimationUtils.loadAnimation(this, 2130968594);
    this.a = dc.a(dk.h);
    this.l = new a(this, new s(this), new t(this));
    this.l.a(10);
    this.l.a(a());
    c();
    this.i = getResources().getDimensionPixelSize(2131362213);
    this.j = getResources().getDimensionPixelSize(2131362214);
    this.k = ((getResources().getDimensionPixelSize(2131362212) - this.i) / 2);
    this.b = ab.a(getApplicationContext(), getSupportFragmentManager());
    this.c = new z().a(this.i, this.i).b();
    this.e = ((SwipeableHorizontalScrollView)findViewById(2131165333));
    this.e.setViewRemoveListener(this);
    if (paramBundle == null)
    {
      a(getIntent());
      getSupportFragmentManager().beginTransaction().add(2131165332, this.g, "gallery_tag").commit();
      return;
    }
    a(paramBundle);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return this.l.a(paramMenu);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    this.g.d();
    this.h.e();
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
  
  protected void onPause()
  {
    super.onPause();
    this.g.c();
    this.h.d();
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return this.l.b(paramMenu);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putBoolean("extra_multiple_selection", this.d);
    paramBundle.putParcelableArrayList("extra_selected_images", this.f);
    super.onSaveInstanceState(paramBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.selection.ViberGalleryActivity
 * JD-Core Version:    0.7.0.1
 */