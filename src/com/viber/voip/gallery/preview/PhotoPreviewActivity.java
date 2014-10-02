package com.viber.voip.gallery.preview;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.as;
import com.viber.voip.ax;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.gallery.GalleryCoach;
import com.viber.voip.gallery.GalleryItem;
import com.viber.voip.gallery.a.f;
import com.viber.voip.messages.conversation.ui.ConversationData;
import com.viber.voip.messages.ui.PositioningAwareFrameLayout;
import com.viber.voip.messages.ui.bb;
import com.viber.voip.messages.ui.bd;
import com.viber.voip.settings.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PhotoPreviewActivity
  extends DoodleBaseActivity
  implements LoaderManager.LoaderCallbacks<ArrayList<GalleryItem>>, ad, n
{
  private ActionBar r;
  private as s;
  private ae t;
  private o u;
  private ArrayList<GalleryItem> v = new ArrayList();
  private bb w;
  private boolean x;
  private ax y = new v(this);
  private TextWatcher z = new y(this);
  
  public static Intent a(ConversationData paramConversationData, ArrayList<GalleryItem> paramArrayList)
  {
    Intent localIntent = new Intent("com.viber.voip.action.PREVIEW_PHOTO_LIST");
    localIntent.putParcelableArrayListExtra("image_list", paramArrayList);
    localIntent.putExtra("extra_conversation_data", paramConversationData);
    return localIntent;
  }
  
  public static Intent a(ConversationData paramConversationData, List<Uri> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(GalleryItem.a((Uri)localIterator.next()));
    }
    return a(paramConversationData, localArrayList);
  }
  
  public static Intent a(ConversationData paramConversationData, Uri... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList(paramVarArgs.length);
    int i = paramVarArgs.length;
    for (int j = 0; j < i; j++) {
      localArrayList.add(GalleryItem.a(paramVarArgs[j]));
    }
    return a(paramConversationData, localArrayList);
  }
  
  private void a(int paramInt, ArrayList<GalleryItem> paramArrayList)
  {
    Context localContext = getApplicationContext();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    Toast.makeText(localContext, getString(2131494432, arrayOfObject), 0).show();
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArrayList("image_uri_list", paramArrayList);
    localBundle.putInt("max_size", paramInt);
    getSupportLoaderManager().initLoader(1, localBundle, this);
  }
  
  private void a(Intent paramIntent)
  {
    ArrayList localArrayList = paramIntent.getParcelableArrayListExtra("image_list");
    if (localArrayList == null) {
      localArrayList = new ArrayList();
    }
    if (localArrayList.size() > 10)
    {
      a();
      a(10, localArrayList);
    }
    for (;;)
    {
      a(this.t, "photo_preview", false);
      return;
      a(localArrayList);
    }
  }
  
  private void a(j paramj)
  {
    if (paramj == j.a)
    {
      this.u.a(paramj.a(this.p));
      return;
    }
    if (paramj == j.b)
    {
      this.u.a(paramj.a(this.o), this.n);
      return;
    }
    this.u.a(this.n, paramj.a(), paramj.a(this.o));
  }
  
  private void a(j paramj, boolean paramBoolean)
  {
    int i = this.t.b();
    if (i < this.v.size()) {
      if (paramj != j.a) {
        break label99;
      }
    }
    label99:
    for (this.u = o.a(paramj.a(this.p), paramBoolean);; this.u = o.a(paramj.a(this.o), this.n, paramj.a(), paramBoolean))
    {
      Uri localUri = ((GalleryItem)this.v.get(i)).b();
      this.u.a(localUri, this.s.a(i, localUri));
      this.s.d(i, localUri);
      b(this.u, "photo_edit", true);
      return;
    }
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    this.f.setEnabled(paramBoolean);
    this.f.setText(paramString);
    this.w.a(this.f, bd.b, false);
    if (!TextUtils.isEmpty(paramString)) {
      this.f.setSelection(paramString.length());
    }
  }
  
  private void g()
  {
    this.r = getSupportActionBar();
    this.f.addTextChangedListener(this.z);
    this.w = new bb(this);
    this.a.setPositioningListener(new w(this));
  }
  
  private void h()
  {
    this.t.a(this.v);
    this.x = true;
    c(this.t.b());
    if (ViberApplication.preferences().b("gallery_coach_show", true))
    {
      startActivity(new Intent(this, GalleryCoach.class));
      ViberApplication.preferences().a("gallery_coach_show", false);
    }
  }
  
  private void i()
  {
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(this.f.getWindowToken(), 0);
  }
  
  private void j()
  {
    int i = this.t.b();
    if (i < this.v.size())
    {
      Uri localUri = ((GalleryItem)this.v.get(i)).a();
      if (this.s.a(i, localUri) == null)
      {
        a();
        this.s.b(i, localUri);
        return;
      }
      h();
      return;
    }
    h();
  }
  
  private boolean k()
  {
    return (this.u != null) && (this.u.isAdded());
  }
  
  public void a()
  {
    super.a();
  }
  
  public void a(int paramInt)
  {
    ActionBar localActionBar = this.r;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    localActionBar.setTitle(getString(2131494431, arrayOfObject));
  }
  
  public void a(Uri paramUri, Bitmap paramBitmap)
  {
    int i = this.t.b();
    if (i < this.v.size())
    {
      ((GalleryItem)this.v.get(i)).b(paramUri);
      this.s.a(i, paramBitmap);
      onBackPressed();
    }
    b();
  }
  
  public void a(Loader<ArrayList<GalleryItem>> paramLoader, ArrayList<GalleryItem> paramArrayList)
  {
    getSupportLoaderManager().destroyLoader(paramLoader.getId());
    a(paramArrayList);
  }
  
  public void a(ArrayList<GalleryItem> paramArrayList)
  {
    this.x = false;
    this.v = paramArrayList;
    j();
  }
  
  public void b()
  {
    super.b();
  }
  
  public void b(int paramInt)
  {
    if (paramInt < this.v.size()) {
      ((GalleryItem)this.v.get(paramInt)).a(this.f.getText().toString().trim());
    }
  }
  
  public void c()
  {
    super.c();
  }
  
  public void c(int paramInt)
  {
    if (paramInt < this.v.size())
    {
      a(((GalleryItem)this.v.get(paramInt)).c(), true);
      return;
    }
    a(null, false);
  }
  
  public void f()
  {
    this.f.setText(null);
    this.f.setEnabled(false);
  }
  
  public void finish()
  {
    i();
    if (this.s != null)
    {
      this.s.b(this.y);
      this.s.b();
    }
    this.t.a(null);
    super.finish();
  }
  
  public void onBackPressed()
  {
    if (!getSupportFragmentManager().popBackStackImmediate())
    {
      b(this.t.b());
      Intent localIntent1 = (Intent)getIntent().getParcelableExtra("open_on_canceled_action");
      if (localIntent1 != null)
      {
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = this.v.iterator();
        while (localIterator.hasNext())
        {
          GalleryItem localGalleryItem = (GalleryItem)localIterator.next();
          if (localGalleryItem.d()) {
            localArrayList.add(localGalleryItem.b());
          }
        }
        if (localArrayList.size() > 0) {
          dc.a(dk.h).post(new a(localArrayList));
        }
        startActivity(localIntent1);
      }
    }
    do
    {
      return;
      Intent localIntent2 = new Intent();
      localIntent2.putParcelableArrayListExtra("image_list", this.v);
      setResult(-1, localIntent2);
      super.onBackPressed();
      return;
      this.u = null;
      c();
    } while (this.x);
    h();
  }
  
  public void onBackgroundChangeClick(View paramView)
  {
    super.onBackgroundChangeClick(paramView);
    if (k()) {
      this.u.b();
    }
  }
  
  public void onBrushSelected(View paramView)
  {
    super.onBrushSelected(paramView);
    if (k()) {
      a(this.q);
    }
  }
  
  public void onBrushSelectorClick(View paramView)
  {
    super.onBrushSelectorClick(paramView);
    if (k())
    {
      a(this.q);
      return;
    }
    a(this.q, false);
  }
  
  public void onBrushSizeSelected(View paramView)
  {
    super.onBrushSizeSelected(paramView);
    if (k()) {
      a(this.q);
    }
  }
  
  public void onClearClick(View paramView)
  {
    super.onClearClick(paramView);
    if (k())
    {
      this.u.a();
      return;
    }
    a(this.q, true);
  }
  
  public void onColorSelected(View paramView)
  {
    super.onColorSelected(paramView);
    if (k()) {
      a(this.q);
    }
  }
  
  public void onColorSelectorClick(View paramView)
  {
    super.onColorSelectorClick(paramView);
    if (k())
    {
      a(this.q);
      return;
    }
    a(this.q, false);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Resources localResources = getResources();
    int i = this.a.getWidth() - (int)(2.0F * localResources.getDimension(2131362203));
    int j = this.a.getHeight() - (int)(localResources.getDimension(2131362205) + localResources.getDimension(2131362204));
    this.s = new as(getApplicationContext(), i, j, 0.5F);
    this.s.a(this.y);
    g();
    FragmentManager localFragmentManager = getSupportFragmentManager();
    this.t = ((ae)localFragmentManager.findFragmentByTag("photo_preview"));
    if (this.t == null) {
      this.t = ae.a((ConversationData)getIntent().getParcelableExtra("extra_conversation_data"));
    }
    this.t.a(this.s);
    if (paramBundle != null)
    {
      this.v = paramBundle.getParcelableArrayList("photo_data_list");
      this.u = ((o)localFragmentManager.findFragmentByTag("photo_edit"));
      a(this.v.size());
      j();
      return;
    }
    a(getIntent());
  }
  
  public Loader<ArrayList<GalleryItem>> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new f(paramBundle.getParcelableArrayList("image_uri_list"), paramBundle.getInt("max_size"), getApplicationContext());
  }
  
  public void onEraserSelectorClick(View paramView)
  {
    super.onEraserSelectorClick(paramView);
    if (k())
    {
      a(j.a);
      return;
    }
    a(j.a, false);
  }
  
  public void onEraserSizeSelected(View paramView)
  {
    super.onEraserSizeSelected(paramView);
    if (k()) {
      a(j.a);
    }
  }
  
  public void onLoaderReset(Loader<ArrayList<GalleryItem>> paramLoader) {}
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return true;
    }
    onBackPressed();
    return true;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("photo_data_list", this.v);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.preview.PhotoPreviewActivity
 * JD-Core Version:    0.7.0.1
 */