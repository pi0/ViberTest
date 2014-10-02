package com.viber.voip.gallery.preview;

import android.annotation.SuppressLint;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.EditText;
import com.actionbarsherlock.view.MenuItem;
import com.nineoldandroids.animation.AnimatorSet;
import com.nineoldandroids.animation.ObjectAnimator;
import com.nineoldandroids.view.ViewHelper;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.messages.ui.PositioningAwareFrameLayout;
import com.viber.voip.util.gl;
import java.util.ArrayList;
import java.util.List;

public abstract class DoodleBaseActivity
  extends ViberFragmentActivity
{
  private static final int[][] r = { { -3005654, -217285, -69120, -12538039, -16732689 }, { -16777216, -1, -7500403, -3113249, -8958055 } };
  private static final Integer[] s;
  protected PositioningAwareFrameLayout a;
  protected View b;
  protected View c;
  protected View d;
  protected View e;
  protected EditText f;
  protected View g;
  protected View h;
  protected View i;
  protected View j;
  protected View k;
  protected View l;
  protected GradientDrawable m;
  protected int n = -8958055;
  protected int o = 2;
  protected int p = 2;
  protected j q = j.b;
  private i t;
  private l u;
  private k v;
  private int w = -1;
  
  static
  {
    Integer[] arrayOfInteger = new Integer[5];
    arrayOfInteger[0] = Integer.valueOf(4);
    arrayOfInteger[1] = Integer.valueOf(3);
    arrayOfInteger[2] = Integer.valueOf(2);
    arrayOfInteger[3] = Integer.valueOf(1);
    arrayOfInteger[4] = Integer.valueOf(0);
    s = arrayOfInteger;
  }
  
  protected static View a(View paramView, Object paramObject)
  {
    paramView.setTag(paramObject);
    return paramView;
  }
  
  @SuppressLint({"NewApi"})
  private void a(int paramInt, boolean paramBoolean)
  {
    this.w = paramInt;
    String str;
    Object localObject;
    switch (paramInt)
    {
    default: 
      str = null;
      localObject = null;
    }
    while (localObject == null)
    {
      return;
      this.g.setSelected(true);
      localObject = this.t;
      str = "brush_menu";
      continue;
      this.h.setSelected(true);
      localObject = this.u;
      str = "eraser_menu";
      continue;
      this.i.setSelected(true);
      localObject = this.v;
      str = "color_menu";
    }
    h();
    getSupportFragmentManager().beginTransaction().replace(2131165387, (Fragment)localObject, str).commit();
    this.c.setVisibility(0);
    if (paramBoolean)
    {
      ViewHelper.setAlpha(this.c, 0.0F);
      if (Build.VERSION.SDK_INT >= 11) {
        this.c.setLayerType(2, null);
      }
      gl.a(this.c, new h(this));
      return;
    }
    ViewHelper.setTranslationY(this.c, 0.0F);
  }
  
  static void a(ViewGroup paramViewGroup)
  {
    int i1 = paramViewGroup.getChildCount();
    for (int i2 = 0; i2 < i1; i2++)
    {
      View localView1 = paramViewGroup.getChildAt(i2);
      localView1.setSelected(false);
      if ((localView1 instanceof ViewGroup)) {
        for (int i3 = 0; i3 < ((ViewGroup)localView1).getChildCount(); i3++)
        {
          View localView2 = ((ViewGroup)localView1).getChildAt(i3);
          localView2.setSelected(false);
          if ((localView2 instanceof ViewGroup)) {
            a((ViewGroup)localView2);
          }
        }
      }
    }
  }
  
  static void a(ViewGroup paramViewGroup, Object[] paramArrayOfObject)
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
  
  private void f()
  {
    FragmentManager localFragmentManager = getSupportFragmentManager();
    this.t = ((i)localFragmentManager.findFragmentByTag("brush_menu"));
    if (this.t == null) {
      this.t = new i();
    }
    this.t.c = this.o;
    this.t.d = this.q;
    this.u = ((l)localFragmentManager.findFragmentByTag("eraser_menu"));
    if (this.u == null) {
      this.u = new l();
    }
    this.u.b = this.p;
    this.v = ((k)localFragmentManager.findFragmentByTag("color_menu"));
    if (this.v == null) {
      this.v = new k();
    }
    this.v.b = this.n;
  }
  
  private void g()
  {
    this.a = ((PositioningAwareFrameLayout)findViewById(2131165313));
    this.d = findViewById(2131165601);
    this.b = findViewById(2131165771);
    this.c = findViewById(2131165387);
    this.e = findViewById(2131165772);
    this.f = ((EditText)findViewById(2131165773));
    this.g = findViewById(2131165774);
    this.h = findViewById(2131165775);
    this.i = findViewById(2131165776);
    this.m = new GradientDrawable();
    getResources().getColor(2131296407);
    this.m.setColor(this.n);
    this.l = findViewById(2131165776);
    gl.a(this.l, this.m);
    this.j = findViewById(2131165778);
    this.k = findViewById(2131165777);
  }
  
  private void h()
  {
    switch (this.w)
    {
    default: 
      return;
    case 2131165774: 
      ((ViewGroup.MarginLayoutParams)this.c.getLayoutParams()).leftMargin = 0;
      return;
    case 2131165775: 
      ((ViewGroup.MarginLayoutParams)this.c.getLayoutParams()).leftMargin = this.h.getLeft();
      return;
    }
    int i1 = k.a(getApplicationContext());
    int i2 = 0;
    if (i1 != -1) {
      i2 = (getResources().getDisplayMetrics().widthPixels - i1) / 2;
    }
    ((ViewGroup.MarginLayoutParams)this.c.getLayoutParams()).leftMargin = i2;
  }
  
  protected void a()
  {
    if (this.d.getVisibility() == 0) {}
    do
    {
      return;
      ViewHelper.setAlpha(this.d, 1.0F);
      this.d.setVisibility(0);
      this.a.setVisibility(8);
      this.e.setVisibility(8);
      this.b.setVisibility(8);
    } while (this.w == -1);
    this.c.setVisibility(8);
  }
  
  protected final void a(Fragment paramFragment, String paramString, boolean paramBoolean)
  {
    FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
    localFragmentTransaction.setTransition(0);
    localFragmentTransaction.add(2131165313, paramFragment, paramString);
    if (paramBoolean) {
      localFragmentTransaction.addToBackStack(null);
    }
    localFragmentTransaction.commit();
  }
  
  protected void a(Runnable paramRunnable)
  {
    if (this.w != -1)
    {
      i1 = this.w;
      this.w = -1;
      ViewHelper.setTranslationY(this.c, 0.0F);
      localView = this.c;
      arrayOfFloat = new float[1];
      arrayOfFloat[0] = this.c.getHeight();
      localObjectAnimator = ObjectAnimator.ofFloat(localView, "translationY", arrayOfFloat);
      localObjectAnimator.setDuration(100L);
      localObjectAnimator.addListener(new g(this, i1, paramRunnable));
      localObjectAnimator.start();
    }
    while (paramRunnable == null)
    {
      int i1;
      View localView;
      float[] arrayOfFloat;
      ObjectAnimator localObjectAnimator;
      return;
    }
    paramRunnable.run();
  }
  
  protected void b()
  {
    if (this.d.getVisibility() != 0) {
      return;
    }
    this.a.setVisibility(0);
    this.e.setVisibility(0);
    this.b.setVisibility(8);
    this.f.requestFocus();
    ViewHelper.setAlpha(this.d, 1.0F);
    ViewHelper.setAlpha(this.a, 0.0F);
    ViewHelper.setAlpha(this.e, 0.0F);
    ViewHelper.setAlpha(this.b, 0.0F);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(ObjectAnimator.ofFloat(this.d, "alpha", new float[] { 0.0F }));
    localArrayList.add(ObjectAnimator.ofFloat(this.a, "alpha", new float[] { 1.0F }));
    localArrayList.add(ObjectAnimator.ofFloat(this.e, "alpha", new float[] { 1.0F }));
    localArrayList.add(ObjectAnimator.ofFloat(this.b, "alpha", new float[] { 1.0F }));
    if (this.w != -1)
    {
      this.c.setVisibility(0);
      ViewHelper.setAlpha(this.c, 0.0F);
      localArrayList.add(ObjectAnimator.ofFloat(this.c, "alpha", new float[] { 1.0F }));
    }
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.playTogether(localArrayList);
    localAnimatorSet.setDuration(1000L);
    localAnimatorSet.addListener(new f(this));
    localAnimatorSet.start();
  }
  
  protected final void b(Fragment paramFragment, String paramString, boolean paramBoolean)
  {
    FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
    localFragmentTransaction.setTransition(0);
    localFragmentTransaction.replace(2131165313, paramFragment, paramString);
    if (paramBoolean) {
      localFragmentTransaction.addToBackStack(null);
    }
    localFragmentTransaction.commit();
  }
  
  protected void c()
  {
    a(null);
  }
  
  public void finish()
  {
    c();
    super.finish();
  }
  
  public void onBackgroundChangeClick(View paramView)
  {
    c();
  }
  
  public void onBrushSelected(View paramView)
  {
    this.q = j.valueOf((String)paramView.getTag());
    this.t.a(this.q);
  }
  
  public void onBrushSelectorClick(View paramView)
  {
    int i1 = this.w;
    this.t.c = this.o;
    this.t.d = this.q;
    if (i1 != paramView.getId()) {}
    for (c localc = new c(this, paramView);; localc = null)
    {
      a(localc);
      return;
    }
  }
  
  public void onBrushSizeSelected(View paramView)
  {
    int i1 = ((Integer)paramView.getTag()).intValue();
    this.o = i1;
    this.t.a(i1);
  }
  
  public void onClearClick(View paramView)
  {
    c();
  }
  
  public void onColorSelected(View paramView)
  {
    c();
    this.n = ((Integer)paramView.getTag()).intValue();
    this.m.setColor(this.n);
    this.l.setSelected(false);
  }
  
  public void onColorSelectorClick(View paramView)
  {
    int i1 = this.w;
    this.v.b = this.n;
    if (i1 != paramView.getId()) {}
    for (e locale = new e(this, paramView);; locale = null)
    {
      a(locale);
      return;
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    c();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903189);
    if (paramBundle != null)
    {
      DoodleBaseActivity.SavedState localSavedState = (DoodleBaseActivity.SavedState)paramBundle.getParcelable("doodle_saved_state");
      this.n = localSavedState.a;
      this.o = localSavedState.b;
      this.p = localSavedState.c;
      this.w = localSavedState.e;
      this.q = localSavedState.d;
    }
    g();
    f();
    a(this.w, false);
    if ((paramBundle != null) && (this.w != -1)) {
      gl.a(this.b, new b(this));
    }
  }
  
  public void onEraserSelectorClick(View paramView)
  {
    int i1 = this.w;
    this.u.b = this.p;
    if (i1 != paramView.getId()) {}
    for (d locald = new d(this, paramView);; locald = null)
    {
      a(locald);
      return;
    }
  }
  
  public void onEraserSizeSelected(View paramView)
  {
    int i1 = ((Integer)paramView.getTag()).intValue();
    this.p = i1;
    this.u.a(i1);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      onBackPressed();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    DoodleBaseActivity.SavedState localSavedState = new DoodleBaseActivity.SavedState();
    localSavedState.a = this.n;
    localSavedState.b = this.o;
    localSavedState.c = this.p;
    localSavedState.e = this.w;
    localSavedState.d = this.q;
    paramBundle.putParcelable("doodle_saved_state", localSavedState);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.preview.DoodleBaseActivity
 * JD-Core Version:    0.7.0.1
 */