package com.viber.voip.messages.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Handler;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.market.MarketActivity;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.ui.a.b;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.stickers.c.d;
import com.viber.voip.stickers.c.e;
import com.viber.voip.stickers.e.c;
import com.viber.voip.stickers.r;
import com.viber.voip.util.ft;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class aj
  extends k
  implements View.OnClickListener, b, bn, eh, com.viber.voip.stickers.d.a
{
  private static final String i = aj.class.getSimpleName();
  private boolean j = false;
  private TabListIndicator k;
  private View l;
  private Button m;
  private View n;
  private TextView o;
  private Context p;
  private az q;
  private aw r;
  private r s;
  private ay t;
  private ProgressDialog u;
  private com.viber.voip.stickers.al v = new ak(this);
  private BroadcastReceiver w = new al(this);
  private Runnable x = new at(this);
  
  public aj(Context paramContext, View paramView, u paramu, p paramp, int paramInt)
  {
    super(paramContext, paramView, paramu, paramp, paramInt);
    this.p = paramContext;
    this.q = new az(this, paramContext, null);
    this.r = new aw(this, paramContext, null);
    this.m = ((Button)paramView.findViewById(2131165703));
    this.m.setOnClickListener(this);
    this.o = ((TextView)paramView.findViewById(2131165704));
    this.p.registerReceiver(this.w, new IntentFilter("com.viber.voip.stickers.notification.UPDATE_STICKER_PACKAGES_COUNT_ACTION"));
    a(c.a());
    this.n = paramView.findViewById(2131165700);
    this.j = ViberApplication.preferences().b("pref_menu_emoticons_stickers_switch", false);
    this.u = new ProgressDialog(this.p);
    this.u.setMessage("Checking the package");
    this.u.setProgressStyle(0);
    this.u.setCancelable(false);
  }
  
  private StateListDrawable a(Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    BitmapDrawable localBitmapDrawable1 = new BitmapDrawable(this.p.getResources(), paramBitmap1);
    BitmapDrawable localBitmapDrawable2 = new BitmapDrawable(this.p.getResources(), paramBitmap2);
    StateListDrawable localStateListDrawable = new StateListDrawable();
    localStateListDrawable.addState(new int[] { 16842913 }, localBitmapDrawable2);
    localStateListDrawable.addState(new int[] { 16842919 }, localBitmapDrawable2);
    localStateListDrawable.addState(new int[0], localBitmapDrawable1);
    return localStateListDrawable;
  }
  
  private ei a(int paramInt1, int paramInt2, boolean paramBoolean, Drawable paramDrawable)
  {
    ei localei = new ei(this.p, 2130903337);
    localei.setPackageId(paramInt1);
    localei.setIconDrawable(paramDrawable);
    localei.setFocusable(true);
    return localei;
  }
  
  private void a(int paramInt)
  {
    if (paramInt > 0)
    {
      this.o.setVisibility(0);
      this.o.setText(String.valueOf(paramInt));
      return;
    }
    this.o.setVisibility(8);
  }
  
  private void a(int paramInt, List<d> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    SparseArray localSparseArray = l();
    Iterator localIterator = paramList.iterator();
    int i1 = 0;
    d locald;
    if (localIterator.hasNext())
    {
      locald = (d)localIterator.next();
      if (locald.e() != paramInt) {
        break label223;
      }
    }
    label223:
    for (int i2 = localArrayList.size();; i2 = i1)
    {
      StateListDrawable localStateListDrawable = b(locald.e(), locald.j());
      if (localStateListDrawable != null) {
        a(localSparseArray, localArrayList, locald.e(), locald.e(), locald.d(), locald.j(), locald.j(), localStateListDrawable);
      }
      for (;;)
      {
        i1 = i2;
        break;
        this.s.h(locald.e());
      }
      this.k.a((ei[])localArrayList.toArray(new ei[localArrayList.size()]), i1);
      b(paramList.size());
      if (this.j) {
        c();
      }
      for (;;)
      {
        this.n.setVisibility(0);
        return;
        d();
      }
    }
  }
  
  private void a(SparseArray<ei> paramSparseArray, List<ei> paramList, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, Drawable paramDrawable)
  {
    ei localei = (ei)paramSparseArray.get(paramInt1);
    if ((localei == null) || (!localei.a()) || (localei.getPackageId() != paramInt1)) {
      localei = a(paramInt1, paramInt2, paramBoolean2, paramDrawable);
    }
    a(localei, paramBoolean1, paramBoolean2, paramBoolean3);
    paramList.add(localei);
  }
  
  private void a(ei paramei, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    paramei.setShowNewPackageStatus(paramBoolean1);
    paramei.setIgnorePress(paramBoolean3);
    paramei.setPromotion(paramBoolean2);
  }
  
  private void a(String paramString) {}
  
  private void a(boolean paramBoolean)
  {
    dc.a(dk.a).post(new as(this, paramBoolean));
  }
  
  private StateListDrawable b(int paramInt, boolean paramBoolean)
  {
    if ((paramInt == 400) || (paramInt == 2) || (paramInt == 1)) {
      try
      {
        AssetManager localAssetManager = ViberApplication.getInstance().getAssets();
        StateListDrawable localStateListDrawable = a(h.b(BitmapFactory.decodeStream(localAssetManager.open("stickers_package_icons/<id>.png".replace("<id>", paramInt + ""))), 180), BitmapFactory.decodeStream(localAssetManager.open("stickers_package_icons/<id>.png".replace("<id>", paramInt + ""))));
        return localStateListDrawable;
      }
      catch (IOException localIOException)
      {
        a("Error loading icon from asset: " + "stickers_package_icons/<id>.png".replace("<id>", new StringBuilder().append(paramInt).append("").toString()));
        return null;
      }
    }
    Bitmap localBitmap1 = h.b(BitmapFactory.decodeFile(e.d(paramInt)), 180);
    Bitmap localBitmap2 = BitmapFactory.decodeFile(e.d(paramInt));
    if (localBitmap1 == null)
    {
      this.s.h(paramInt);
      return null;
    }
    return a(localBitmap1, localBitmap2);
  }
  
  private void b(int paramInt)
  {
    int i1 = (int)this.p.getResources().getDimension(2131362184);
    int i2 = this.p.getResources().getDisplayMetrics().heightPixels;
    int i3 = this.p.getResources().getDisplayMetrics().widthPixels;
    if (i3 < i2) {}
    while (i1 * (paramInt + 3) >= i3)
    {
      this.m.setBackgroundResource(2130838060);
      this.m.getLayoutParams().height = i1;
      this.m.getLayoutParams().width = i1;
      this.m.setText("");
      ((FrameLayout.LayoutParams)this.o.getLayoutParams()).setMargins(0, 0, h.a(1.0F), 0);
      return;
      i3 = i2;
    }
    this.m.setBackgroundResource(2130838057);
    this.m.getLayoutParams().height = -2;
    this.m.getLayoutParams().width = -2;
    this.m.setText(2131494473);
    ((FrameLayout.LayoutParams)this.o.getLayoutParams()).setMargins(0, h.a(20.0F), h.a(1.0F), 0);
  }
  
  private void j()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(new ContextThemeWrapper(this.p, 2131558708));
    View localView = LayoutInflater.from(this.p).inflate(2130903347, null);
    EditText localEditText = (EditText)localView.findViewById(2131166168);
    localBuilder.setTitle("Enter sticker id");
    localEditText.setHint("Sticker id");
    localEditText.setInputType(2);
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new InputFilter.LengthFilter(8);
    localEditText.setFilters(arrayOfInputFilter);
    localBuilder.setView(localView);
    localBuilder.setPositiveButton(2131493557, new ao(this, localView, localEditText));
    localBuilder.setNegativeButton(2131493558, null);
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.show();
    localEditText.addTextChangedListener(new ar(this, localAlertDialog));
    localAlertDialog.getButton(-1).setEnabled(false);
  }
  
  private boolean k()
  {
    if (!ft.b(this.p))
    {
      this.p.startActivity(new Intent("com.viber.voip.action.CONNECTION_PROBLEM").setFlags(268435456));
      return false;
    }
    return true;
  }
  
  private SparseArray<ei> l()
  {
    SparseArray localSparseArray = new SparseArray();
    for (ei localei : this.k.getTabItemView()) {
      localSparseArray.append(localei.getPackageId(), localei);
    }
    return localSparseArray;
  }
  
  public View a(View paramView)
  {
    if ((!this.h) || (paramView == null))
    {
      if (paramView == null) {
        this.h = false;
      }
      a();
      b();
    }
    return this.b.findViewById(2131165698);
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    switch (paramInt)
    {
    default: 
      if (!paramBoolean) {
        break label135;
      }
      if (k())
      {
        if (((this.p instanceof Activity)) || (this.t == null)) {
          MarketActivity.d(paramInt);
        }
      }
      else {
        return;
      }
      break;
    case -3: 
      ProgressDialog localProgressDialog = ProgressDialog.show(this.p, "", "Deleting packages");
      localProgressDialog.setCancelable(false);
      r.a().a(false, new am(this, localProgressDialog), true);
      return;
    case -4: 
      r.a().m();
      Toast.makeText(this.p, "All package names where deleted", 0).show();
      return;
    case -2: 
      j();
      return;
    }
    this.t.e_(paramInt);
    return;
    label135:
    this.f = paramInt;
    this.d.a(paramInt, new an(this));
  }
  
  public void a(ay paramay)
  {
    this.t = paramay;
  }
  
  public void a(List<d> paramList1, List<d> paramList2, List<d> paramList3)
  {
    a("onStickerPackageChanged");
    if (this.d == null) {
      return;
    }
    this.f = this.s.v();
    a(this.f, paramList1);
    this.d.a(this.f, null);
  }
  
  protected boolean a()
  {
    this.l = this.b.findViewById(2131165701);
    this.l.setOnClickListener(this);
    this.k = ((TabListIndicator)this.b.findViewById(2131165702));
    this.k.setTabClickListener(this);
    this.k.setAnimateToTab(ViberApplication.preferences().b(j.ah(), j.ai()));
    boolean bool = super.a();
    this.d.a(this);
    this.s = r.a();
    this.s.a(this.v);
    this.s.a(this);
    a(this.f, this.s.f());
    if (this.j)
    {
      c();
      return bool;
    }
    d();
    return bool;
  }
  
  protected void c()
  {
    super.c();
    this.l.setBackgroundColor(this.p.getResources().getColor(2131296443));
    this.j = true;
    this.k.setCurrentItem(-1);
  }
  
  protected void d()
  {
    super.d();
    this.j = false;
    this.l.setBackgroundColor(this.p.getResources().getColor(2131296410));
  }
  
  public void e()
  {
    a("detach");
    this.p.unregisterReceiver(this.w);
    if (this.h)
    {
      this.s.b(this);
      this.s.b(this.v);
    }
    ViberApplication.preferences().a("pref_menu_emoticons_stickers_switch", this.j);
    this.g.removeCallbacks(this.q);
    super.e();
  }
  
  public void g()
  {
    this.r.run();
    this.g.removeCallbacks(this.q);
    this.g.postDelayed(this.q, 3000L);
  }
  
  public void h()
  {
    this.q.run();
  }
  
  public void i()
  {
    this.g.postDelayed(this.q, 500L);
  }
  
  public void onClick(View paramView)
  {
    if (paramView == this.m) {
      if (k())
      {
        if ((!(this.p instanceof Activity)) && (this.t != null)) {
          break label36;
        }
        MarketActivity.a();
      }
    }
    label36:
    while (paramView != this.l)
    {
      return;
      this.t.f_();
      return;
    }
    c();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.aj
 * JD-Core Version:    0.7.0.1
 */