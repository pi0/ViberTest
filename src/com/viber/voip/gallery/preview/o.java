package com.viber.voip.gallery.preview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.aw;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.gallery.b.a;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.ui.al;
import com.viber.voip.util.gl;
import com.viber.voip.widget.PhotoDoodleView;

public class o
  extends al
  implements com.viber.voip.widget.s
{
  private static final int a;
  private MenuItem b;
  private ImageView c;
  private PhotoDoodleView d;
  private n e;
  private Uri f;
  private aw g;
  private Handler h;
  private Handler i;
  private t j;
  private u k;
  private boolean l;
  private Context m;
  private View.OnTouchListener n = new p(this);
  private View.OnClickListener o = new q(this);
  
  static
  {
    int i1 = 1280;
    if (h.a(640.0F) <= i1) {
      i1 = h.a(640.0F);
    }
    a = i1;
  }
  
  public static o a(int paramInt1, int paramInt2, String paramString, boolean paramBoolean)
  {
    o localo = new o();
    Bundle localBundle = new Bundle();
    localBundle.putInt("brush_size", paramInt1);
    localBundle.putInt("brush_color", paramInt2);
    localBundle.putString("custom_brush_path", paramString);
    localBundle.putBoolean("clear_doodle", paramBoolean);
    localo.setArguments(localBundle);
    return localo;
  }
  
  public static o a(int paramInt, boolean paramBoolean)
  {
    o localo = new o();
    Bundle localBundle = new Bundle();
    localBundle.putInt("eraser_size", paramInt);
    localBundle.putBoolean("clear_doodle", paramBoolean);
    localo.setArguments(localBundle);
    return localo;
  }
  
  private void a(aw paramaw)
  {
    if (paramaw == null) {}
    boolean bool;
    do
    {
      return;
      bool = a.a(this.f);
      if (bool) {
        this.d.setCanvasDirty(true);
      }
      if (!paramaw.b) {
        break;
      }
      this.d.a(paramaw.a, true);
      this.c.setImageDrawable(null);
      this.d.setVisibility(0);
      this.c.setVisibility(8);
    } while (!bool);
    this.j = new t(this, this.f, this.m);
    this.h.post(this.j);
    return;
    ViewGroup.LayoutParams localLayoutParams = this.c.getLayoutParams();
    localLayoutParams.height = paramaw.d;
    localLayoutParams.width = paramaw.c;
    this.c.setImageBitmap(paramaw.a);
    this.c.setVisibility(0);
    this.d.setVisibility(8);
  }
  
  private void g()
  {
    if (this.k != null)
    {
      this.h.removeCallbacks(this.k);
      this.k = null;
    }
    Bitmap localBitmap1 = this.d.getDoodle();
    Bitmap localBitmap2 = h.a(this.d.getDrawable());
    if ((localBitmap1 == null) || (localBitmap2 == null)) {
      return;
    }
    if (this.e != null) {
      this.e.a();
    }
    this.k = new u(this, this.f, localBitmap1, localBitmap2);
    this.h.post(this.k);
  }
  
  public void a()
  {
    if (this.d != null) {
      this.d.c();
    }
  }
  
  public void a(int paramInt)
  {
    if (this.d != null) {
      this.d.a(paramInt);
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if (this.d != null) {
      this.d.a(paramInt1, paramInt2);
    }
  }
  
  public void a(int paramInt1, String paramString, int paramInt2)
  {
    if (this.d != null) {
      this.d.a(paramInt1, paramString, paramInt2);
    }
  }
  
  void a(Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    this.i.post(new s(this, paramBitmap2, paramBitmap1));
  }
  
  void a(Uri paramUri, Bitmap paramBitmap)
  {
    this.i.post(new r(this, paramUri, paramBitmap));
  }
  
  public void a(Uri paramUri, aw paramaw)
  {
    this.f = paramUri;
    if (this.d == null)
    {
      this.g = paramaw;
      return;
    }
    a(paramaw);
  }
  
  void b()
  {
    if (this.d != null) {
      this.d.f();
    }
  }
  
  public void c()
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (localFragmentActivity != null) {
      localFragmentActivity.supportInvalidateOptionsMenu();
    }
  }
  
  public void d()
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (localFragmentActivity != null) {
      localFragmentActivity.supportInvalidateOptionsMenu();
    }
  }
  
  public void e()
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (localFragmentActivity != null) {
      localFragmentActivity.finish();
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    setHasOptionsMenu(true);
    Bundle localBundle = getArguments();
    if (localBundle == null) {
      throw new IllegalStateException("Fragment requires arguments.");
    }
    int i1 = localBundle.getInt("eraser_size", 0);
    int i2 = localBundle.getInt("brush_color", 0);
    int i3 = localBundle.getInt("brush_size", 0);
    String str = localBundle.getString("custom_brush_path");
    if (paramBundle != null)
    {
      this.l = paramBundle.getBoolean("clear_doodle");
      this.m = getActivity().getApplicationContext();
      this.i = dc.a(dk.a);
      this.h = dc.a(dk.h);
      View localView = getView();
      this.c = ((ImageView)localView.findViewById(2131165997));
      this.d = ((PhotoDoodleView)localView.findViewById(2131166046));
      this.d.setDoodleListener(this);
      this.d.setOnTouchListener(this.n);
      this.d.setPaintColor(i2);
      if (i1 <= 0) {
        break label213;
      }
      this.d.a(i1);
    }
    for (;;)
    {
      a(this.g);
      this.g = null;
      return;
      this.l = localBundle.getBoolean("clear_doodle", false);
      break;
      label213:
      if (TextUtils.isEmpty(str)) {
        this.d.a(i3, i2);
      } else {
        this.d.a(i2, str, i3);
      }
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!n.class.isInstance(paramActivity)) {
      throw new RuntimeException("parent activity must implement PhotoEditController");
    }
    this.e = ((n)paramActivity);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755040, paramMenu);
    this.b = paramMenu.findItem(2131166288);
    MenuItem localMenuItem = this.b;
    if ((this.d != null) && (this.d.e())) {}
    for (boolean bool = true;; bool = false)
    {
      localMenuItem.setVisible(bool);
      gl.a(this.b, 2130837612, 2131494199, this.o);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903293, paramViewGroup, false);
  }
  
  public void onDestroyView()
  {
    this.c.setImageDrawable(null);
    this.d.d();
    this.d = null;
    this.c = null;
    if (this.k != null) {
      this.h.removeCallbacks(this.k);
    }
    if (this.j != null) {
      this.h.removeCallbacks(this.j);
    }
    super.onDestroyView();
  }
  
  public void onDetach()
  {
    this.e = null;
    super.onDetach();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putBoolean("clear_doodle", this.l);
    super.onSaveInstanceState(paramBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.preview.o
 * JD-Core Version:    0.7.0.1
 */