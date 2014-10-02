package com.viber.voip.messages.ui.media;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.Toast;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.Menu;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.v;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.extras.doodle.DoodleDrawingPanel;
import com.viber.voip.messages.extras.image.g;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.extras.image.l;
import com.viber.voip.util.ao;
import com.viber.voip.util.at;
import com.viber.voip.util.gl;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class DoodleActivity
  extends ViberActivity
  implements View.OnClickListener, View.OnTouchListener, com.viber.voip.messages.extras.doodle.b
{
  protected static int a = 0;
  private static int c = -1;
  private static final Integer[] d;
  private static final int[][] e = { { -1, -86767, -73967, -15616996, -11356709 }, { -16777216, -8947849, -5804073, -8695395, -50384 } };
  private boolean A = false;
  private Runnable B = new e(this);
  public com.actionbarsherlock.view.MenuItem b;
  private DoodleDrawingPanel f;
  private View g;
  private View h;
  private View i;
  private View j;
  private View k;
  private ImageView l;
  private LayerDrawable m;
  private ViewGroup n;
  private ViewGroup o;
  private ViewGroup p;
  private int q = c;
  private View[] r;
  private int s = 2;
  private int t = 2;
  private int u = -8695395;
  private f v = f.b;
  private Uri w;
  private Handler x = new Handler();
  private ProgressDialog y;
  private boolean z;
  
  static
  {
    Integer[] arrayOfInteger = new Integer[5];
    arrayOfInteger[0] = Integer.valueOf(4);
    arrayOfInteger[1] = Integer.valueOf(3);
    arrayOfInteger[2] = Integer.valueOf(2);
    arrayOfInteger[3] = Integer.valueOf(1);
    arrayOfInteger[4] = Integer.valueOf(0);
    d = arrayOfInteger;
  }
  
  private View a(View paramView)
  {
    paramView.setOnClickListener(this);
    return paramView;
  }
  
  private View a(View paramView, Object paramObject)
  {
    paramView.setTag(paramObject);
    return paramView;
  }
  
  private void a(int paramInt)
  {
    if (1 < this.m.getNumberOfLayers()) {
      this.m.getDrawable(1).setColorFilter(paramInt, PorterDuff.Mode.SRC_ATOP);
    }
  }
  
  private void a(Context paramContext, Bitmap paramBitmap, boolean paramBoolean, Runnable paramRunnable)
  {
    dc.a(dk.d).post(new c(this, paramBitmap, paramContext, paramBoolean, paramRunnable));
  }
  
  private void a(Uri paramUri)
  {
    if (gl.e(this))
    {
      this.z = true;
      startActivityForResult(g.a(paramUri, a, 720, false), 663);
      return;
    }
    this.z = false;
    startActivityForResult(g.a(paramUri, 720, a, false), 663);
  }
  
  private void a(Bundle paramBundle)
  {
    if (paramBundle != null) {}
    for (int i1 = paramBundle.getInt("menu_id");; i1 = c) {
      switch (i1)
      {
      default: 
        return;
      }
    }
    View localView3 = this.g;
    ViewGroup localViewGroup3 = this.n;
    Object[] arrayOfObject3 = new Object[2];
    arrayOfObject3[0] = Integer.valueOf(this.s);
    arrayOfObject3[1] = this.v.toString();
    a(localView3, localViewGroup3, arrayOfObject3, false);
    return;
    View localView2 = this.h;
    ViewGroup localViewGroup2 = this.o;
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(this.t);
    a(localView2, localViewGroup2, arrayOfObject2, false);
    return;
    View localView1 = this.i;
    ViewGroup localViewGroup1 = this.p;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(this.u);
    a(localView1, localViewGroup1, arrayOfObject1, false);
  }
  
  private void a(View paramView1, View paramView2, boolean paramBoolean)
  {
    if (paramView1.getVisibility() == 0) {}
    do
    {
      return;
      paramView1.setVisibility(0);
      paramView2.setSelected(true);
    } while (!paramBoolean);
    Animation localAnimation = AnimationUtils.loadAnimation(this, 2130968590);
    localAnimation.setDuration(100L);
    paramView1.startAnimation(localAnimation);
  }
  
  private void a(ViewGroup paramViewGroup)
  {
    for (int i1 = 0; i1 < paramViewGroup.getChildCount(); i1++)
    {
      View localView1 = paramViewGroup.getChildAt(i1);
      localView1.setSelected(false);
      if ((localView1 instanceof ViewGroup)) {
        for (int i2 = 0; i2 < ((ViewGroup)localView1).getChildCount(); i2++)
        {
          View localView2 = ((ViewGroup)localView1).getChildAt(i2);
          localView2.setSelected(false);
          if ((localView2 instanceof ViewGroup)) {
            a((ViewGroup)localView2);
          }
        }
      }
    }
  }
  
  private void a(ViewGroup paramViewGroup, Object[] paramArrayOfObject)
  {
    a(paramViewGroup);
    int i1 = paramArrayOfObject.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      Object localObject = paramArrayOfObject[i2];
      if (paramViewGroup.findViewWithTag(localObject) != null) {
        paramViewGroup.findViewWithTag(localObject).setSelected(true);
      }
    }
  }
  
  private void a(f paramf)
  {
    if (paramf == f.b)
    {
      this.f.a(paramf.a(this.s), this.u);
      return;
    }
    this.f.a(this.u, paramf.a(), paramf.a(this.s));
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, "DoodleActivity", paramString);
  }
  
  private boolean a(View paramView, ViewGroup paramViewGroup, Object[] paramArrayOfObject, boolean paramBoolean)
  {
    if (paramViewGroup.getVisibility() == 0)
    {
      this.q = c;
      b(paramViewGroup, paramView, paramBoolean);
      return false;
    }
    this.q = paramView.getId();
    a(paramViewGroup, paramView, paramBoolean);
    a(paramViewGroup, paramArrayOfObject);
    return true;
  }
  
  private void b(Uri paramUri)
  {
    this.f.a(BitmapFactory.decodeFile(paramUri.getPath()), this.z);
    h.c(this, paramUri);
  }
  
  private void b(View paramView1, View paramView2, boolean paramBoolean)
  {
    if (paramView1.getVisibility() == 4) {}
    do
    {
      return;
      paramView1.setVisibility(4);
      paramView2.setSelected(false);
    } while (!paramBoolean);
    Animation localAnimation = AnimationUtils.loadAnimation(this, 2130968591);
    localAnimation.setDuration(100L);
    paramView1.startAnimation(localAnimation);
  }
  
  private void b(f paramf)
  {
    ViewGroup localViewGroup = this.n;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.s);
    arrayOfObject[1] = this.v.toString();
    a(localViewGroup, arrayOfObject);
  }
  
  private void d()
  {
    this.f.setPaintColor(this.u);
    this.f.setOnTouchListener(this);
    this.f.a(720, a, false);
    a(this.v);
  }
  
  @SuppressLint({"NewApi"})
  private void e()
  {
    this.g = a(findViewById(2131165774));
    this.h = a(findViewById(2131165775));
    this.i = a(findViewById(2131165776));
    this.j = a(findViewById(2131165778));
    this.l = ((ImageView)this.i);
    this.m = ((LayerDrawable)this.l.getDrawable());
    this.n = ((ViewGroup)findViewById(2131165389));
    this.o = ((ViewGroup)findViewById(2131165390));
    this.p = ((ViewGroup)findViewById(2131165388));
    this.k = a(findViewById(2131165777));
    registerForContextMenu(this.k);
    this.f = ((DoodleDrawingPanel)findViewById(2131165386));
    this.f.setDrawListener(this);
    f();
    g();
    h();
  }
  
  private void f()
  {
    this.r = new View[5];
    this.r[0] = a(this.n.findViewById(2131165361), d[0]);
    this.r[1] = a(this.n.findViewById(2131165364), d[1]);
    this.r[2] = a(this.n.findViewById(2131165367), d[2]);
    this.r[3] = a(this.n.findViewById(2131165370), d[3]);
    this.r[4] = a(this.n.findViewById(2131165373), d[4]);
    a(this.n.findViewById(2131165375), f.g.toString());
    a(this.n.findViewById(2131165374), f.e.toString());
    a(this.n.findViewById(2131165372), f.d.toString());
    a(this.n.findViewById(2131165371), f.h.toString());
    a(this.n.findViewById(2131165369), f.f.toString());
    a(this.n.findViewById(2131165368), f.k.toString());
    a(this.n.findViewById(2131165366), f.c.toString());
    a(this.n.findViewById(2131165365), f.i.toString());
    a(this.n.findViewById(2131165363), f.j.toString());
    a(this.n.findViewById(2131165362), f.b.toString());
    b(this.v);
  }
  
  private void g()
  {
    this.h.getViewTreeObserver().addOnPreDrawListener(new d(this));
    ArrayList localArrayList = new ArrayList(Arrays.asList(d));
    if (!ao.b(this)) {
      Collections.reverse(localArrayList);
    }
    for (int i1 = 0; i1 < this.o.getChildCount(); i1++) {
      a(this.o.getChildAt(i1), localArrayList.get(i1));
    }
  }
  
  private void h()
  {
    if (ao.b(this)) {}
    int i2;
    int i3;
    for (int i1 = -1;; i1 = getResources().getDisplayMetrics().heightPixels)
    {
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)this.p.getLayoutParams();
      localLayoutParams.width = i1;
      this.p.setLayoutParams(localLayoutParams);
      a(this.u);
      i2 = 0;
      i3 = 0;
      if (i2 >= this.p.getChildCount()) {
        break label176;
      }
      View localView = this.p.getChildAt(i2);
      if (!(localView instanceof ViewGroup)) {
        break label177;
      }
      for (int i5 = 0; i5 < ((ViewGroup)localView).getChildCount(); i5++)
      {
        ImageView localImageView = (ImageView)((ViewGroup)localView).getChildAt(i5);
        localImageView.setColorFilter(e[i3][i5]);
        a(a(localImageView), Integer.valueOf(e[i3][i5]));
      }
    }
    label176:
    label177:
    for (int i4 = 1;; i4 = i3)
    {
      i2++;
      i3 = i4;
      break;
      return;
    }
  }
  
  private void i()
  {
    this.q = c;
    b(this.o, this.h, true);
    b(this.n, this.g, true);
    b(this.p, this.i, true);
  }
  
  public void a()
  {
    this.j.setEnabled(true);
    supportInvalidateOptionsMenu();
  }
  
  public void a(boolean paramBoolean)
  {
    supportInvalidateOptionsMenu();
  }
  
  public void b()
  {
    this.j.setEnabled(false);
    supportInvalidateOptionsMenu();
  }
  
  public void c()
  {
    finish();
  }
  
  public void finish()
  {
    super.finish();
    ViberApplication.log(3, "DoodleActivity", "finish()");
    if (this.f != null)
    {
      this.f.c();
      this.f = null;
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (-1 == paramInt2)
    {
      switch (paramInt1)
      {
      default: 
        return;
      case 123: 
      case 443: 
        Uri localUri2;
        if ((paramIntent != null) && (paramIntent.getData() != null))
        {
          localUri2 = paramIntent.getData();
          a("uriFromIntent = " + localUri2);
          if (!localUri2.equals(this.w)) {
            h.c(this, this.w);
          }
        }
        for (;;)
        {
          a(localUri2);
          return;
          Uri localUri1 = this.w;
          localUri2 = null;
          if (localUri1 != null) {
            localUri2 = this.w;
          }
        }
      }
      if (paramIntent.getExtras() != null) {
        b(Uri.parse(paramIntent.getAction()));
      }
      h.c(this, this.w);
      return;
    }
    h.c(this, this.w);
  }
  
  public void onBackPressed()
  {
    if (this.q != c)
    {
      i();
      return;
    }
    if (this.A)
    {
      super.onBackPressed();
      return;
    }
    Toast.makeText(this, getString(2131494379), 0).show();
    this.x.removeCallbacks(this.B);
    this.x.postDelayed(this.B, 1000L);
    this.A = true;
  }
  
  public void onBrushSelected(View paramView)
  {
    this.v = f.valueOf((String)paramView.getTag());
    b(this.v);
    a(this.v);
  }
  
  public void onBrushSizeSelected(View paramView)
  {
    int i1 = ((Integer)paramView.getTag()).intValue();
    bc.a().a(com.viber.voip.a.a.B.a(this.v.a(i1)));
    this.s = i1;
    ViewGroup localViewGroup = this.n;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.s);
    arrayOfObject[1] = this.v.toString();
    a(localViewGroup, arrayOfObject);
    a(this.v);
  }
  
  public void onClick(View paramView)
  {
    Bitmap localBitmap;
    switch (paramView.getId())
    {
    default: 
      localBitmap = this.f.getDoodle();
      if (localBitmap == null)
      {
        finish();
        return;
      }
      break;
    case 2131165774: 
      bc.a().a(com.viber.voip.a.a.B.a);
      View localView3 = this.g;
      ViewGroup localViewGroup3 = this.n;
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = Integer.valueOf(this.s);
      arrayOfObject3[1] = this.v.toString();
      a(localView3, localViewGroup3, arrayOfObject3, true);
      a(this.v);
      b(this.p, this.i, true);
      b(this.o, this.h, true);
      return;
    case 2131165775: 
      bc.a().a(com.viber.voip.a.a.B.b);
      View localView2 = this.h;
      ViewGroup localViewGroup2 = this.o;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(this.t);
      a(localView2, localViewGroup2, arrayOfObject2, true);
      this.f.a(f.a.a(this.t));
      b(this.p, this.i, true);
      b(this.n, this.g, true);
      return;
    case 2131165776: 
      View localView1 = this.i;
      ViewGroup localViewGroup1 = this.p;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(this.u);
      a(localView1, localViewGroup1, arrayOfObject1, true);
      b(this.o, this.h, true);
      b(this.n, this.g, true);
      return;
    case 2131165777: 
      i();
      openContextMenu(paramView);
      return;
    case 2131165778: 
      i();
      at.a(this, 2131494368, 2131494369, new a(this), null, false);
      return;
    case 2131165376: 
    case 2131165377: 
    case 2131165378: 
    case 2131165379: 
    case 2131165380: 
    case 2131165381: 
    case 2131165382: 
    case 2131165383: 
    case 2131165384: 
    case 2131165385: 
      i();
      this.u = ((Integer)paramView.getTag()).intValue();
      a(this.u);
      this.i.setSelected(false);
      a(this.v);
      return;
    }
    this.y.show();
    a(getApplicationContext(), localBitmap, this.f.a(), new b(this));
  }
  
  public boolean onContextItemSelected(android.view.MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onContextItemSelected(paramMenuItem);
      bc.a().a(com.viber.voip.a.a.B.e);
      this.f.b();
      continue;
      bc.a().a(com.viber.voip.a.a.B.d);
      startActivityForResult(at.a(new Intent().setType("image/*").setAction("android.intent.action.GET_CONTENT"), getString(2131493914), new Intent[0]), 123);
      continue;
      bc.a().a(com.viber.voip.a.a.B.c);
      this.w = h.a(l.d, null);
      Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
      localIntent.putExtra("output", this.w);
      startActivityForResult(localIntent, 443);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    int i1 = 2;
    super.onCreate(paramBundle);
    ActionBar localActionBar = getSupportActionBar();
    localActionBar.setDisplayShowHomeEnabled(false);
    localActionBar.setDisplayHomeAsUpEnabled(true);
    setContentView(2130903063);
    boolean bool;
    int i2;
    label62:
    int i3;
    label98:
    f localf;
    if (paramBundle != null)
    {
      bool = paramBundle.getBoolean("cropped_for_landscape", false);
      this.z = bool;
      if (paramBundle == null) {
        break label211;
      }
      i2 = paramBundle.getInt("bsize");
      this.s = i2;
      if (paramBundle != null) {
        i1 = paramBundle.getInt("er_size");
      }
      this.t = i1;
      if (paramBundle == null) {
        break label217;
      }
      i3 = paramBundle.getInt("color");
      this.u = i3;
      if (paramBundle == null) {
        break label224;
      }
      localf = f.valueOf(paramBundle.getString("brush_id"));
      label120:
      this.v = localf;
      if (paramBundle == null) {
        break label232;
      }
    }
    label211:
    label217:
    label224:
    label232:
    for (Uri localUri = (Uri)paramBundle.getParcelable("temp_uri");; localUri = null)
    {
      this.w = localUri;
      this.y = new ProgressDialog(this);
      this.y.setMessage(getString(2131493613));
      this.y.setCancelable(false);
      e();
      a(paramBundle);
      if (a == 0) {
        a = g.c(this);
      }
      return;
      bool = false;
      break;
      i2 = i1;
      break label62;
      i3 = -8695395;
      break label98;
      localf = f.b;
      break label120;
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    getMenuInflater().inflate(2131755024, paramContextMenu);
    if (this.f.a())
    {
      paramContextMenu.setHeaderTitle(2131494375);
      return;
    }
    paramContextMenu.removeItem(2131166317);
    paramContextMenu.setHeaderTitle(2131494376);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getSupportMenuInflater().inflate(2131755029, paramMenu);
    this.b = paramMenu.findItem(2131166326);
    com.actionbarsherlock.view.MenuItem localMenuItem = this.b;
    if ((this.f != null) && ((this.f.e()) || (this.f.a()))) {}
    for (boolean bool = true;; bool = false)
    {
      localMenuItem.setVisible(bool);
      gl.a(this.b, 2130837612, 2131493707, this);
      return true;
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (this.y.isShowing()) {
      this.y.dismiss();
    }
    this.y = null;
  }
  
  public void onEraserSizeSelected(View paramView)
  {
    int i1 = ((Integer)paramView.getTag()).intValue();
    bc.a().a(com.viber.voip.a.a.B.b(this.v.a(i1)));
    this.t = i1;
    ViewGroup localViewGroup = this.o;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.t);
    a(localViewGroup, arrayOfObject);
    this.f.a(f.a.a(this.t));
  }
  
  public boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    finish();
    return true;
  }
  
  protected void onResume()
  {
    super.onResume();
    d();
    if (getIntent().getData() != null)
    {
      a(getIntent().getData());
      setIntent(getIntent().setData(null));
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putBoolean("cropped_for_landscape", this.z);
    paramBundle.putInt("color", this.u);
    paramBundle.putInt("bsize", this.s);
    paramBundle.putInt("er_size", this.t);
    paramBundle.putString("brush_id", this.v.toString());
    paramBundle.putInt("menu_id", this.q);
    paramBundle.putParcelable("temp_uri", this.w);
    super.onSaveInstanceState(paramBundle);
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (this.q != c) {
      i();
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.DoodleActivity
 * JD-Core Version:    0.7.0.1
 */