package com.viber.voip.market;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.viber.voip.a.a;
import com.viber.voip.a.ab;
import com.viber.voip.bd;
import com.viber.voip.billing.bv;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.market.b.a.f;
import com.viber.voip.market.b.a.g;
import com.viber.voip.market.b.a.i;
import com.viber.voip.stickers.c.d;
import com.viber.voip.stickers.r;
import com.viber.voip.ui.GenericWebViewActivity;
import com.viber.voip.ui.al;
import com.viber.voip.util.gl;
import com.viber.voip.widget.dslv.DragSortListView;
import java.util.List;

public class ae
  extends al
  implements View.OnClickListener
{
  private static final String a = ae.class.getSimpleName();
  private final Handler b = dc.a(dk.a);
  private int c;
  private aj d;
  private r e;
  private com.viber.voip.market.b.a.b f;
  private g g;
  private f h;
  private i i;
  private com.viber.voip.stickers.d.b j = new ah(this);
  private Runnable k = new ai(this);
  
  private void a()
  {
    this.c = 0;
    c();
    bv.a(null);
  }
  
  private void a(int paramInt)
  {
    this.b.removeCallbacks(this.k);
    this.c = (paramInt + this.c);
    a("changeDownloadingStickerPackageCount: " + paramInt + ", count:" + this.c);
    if (this.c <= 0)
    {
      this.b.postDelayed(this.k, 1000L);
      return;
    }
    this.b.post(new ag(this));
  }
  
  private void a(String paramString) {}
  
  private void a(List<d> paramList)
  {
    DragSortListView localDragSortListView = this.d.a;
    if (paramList.size() > 1) {}
    Context localContext;
    for (boolean bool = true;; bool = false)
    {
      localDragSortListView.setDragEnabled(bool);
      localContext = this.d.a.getContext();
      if (paramList.size() != 0) {
        break;
      }
      this.d.f.setText(localContext.getString(2131494478));
      this.d.g.setVisibility(8);
      this.d.h.setPadding(0, 0, 0, 0);
      return;
    }
    this.d.h.setPadding(0, localContext.getResources().getDimensionPixelSize(2131362227), 0, 0);
    TextView localTextView = this.d.f;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramList.size());
    localTextView.setText(localContext.getString(2131494477, arrayOfObject));
    this.d.g.setVisibility(0);
  }
  
  private void b()
  {
    if (getSherlockActivity() == null) {
      return;
    }
    String str = com.viber.voip.bc.b().W;
    GenericWebViewActivity.a(getSherlockActivity(), str, getString(2131494307));
  }
  
  private void c()
  {
    a("addStickerDeploymentListener");
    r.a().a(this.j);
  }
  
  private void d()
  {
    a("removeStickerDeploymentListener");
    r.a().b(this.j);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getSherlockActivity().getSupportActionBar().setDisplayShowHomeEnabled(false);
    getSherlockActivity().getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    gl.a(getSherlockActivity(), getString(2131494305));
    this.e = r.a();
    List localList = this.e.h();
    this.h = new f(localList);
    this.i = new i(getActivity(), this.h);
    this.g = new g(this.d.a, this.h, this.i, this.f);
    this.f = new af(this, this.e, this.h, this.i);
    a(localList);
    this.d.a.setFloatViewManager(this.g);
    this.d.a.setOnTouchListener(this.g);
    this.d.a.setDragScrollProfile(this.g);
    this.d.a.setDropListener(this.i);
    this.d.a.setAdapter(this.i);
    this.e.a(this.f);
    com.viber.voip.a.bc.a().a(a.D.a());
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131165893: 
    case 2131165894: 
    default: 
      return;
    case 2131165892: 
      a();
      return;
    }
    b();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView1 = paramLayoutInflater.inflate(2130903242, null);
    View localView2 = paramLayoutInflater.inflate(2130903243, null);
    this.d = new aj(localView1, paramLayoutInflater.inflate(2130903338, null), localView2, null);
    this.d.b.setOnClickListener(this);
    this.d.c.setOnClickListener(this);
    aj.a(this.d, false);
    return localView1;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    this.e.b(this.f);
  }
  
  public void onStop()
  {
    super.onStop();
    aj.a(this.d, false);
    d();
    List localList = this.h.c();
    this.e.b(localList);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.ae
 * JD-Core Version:    0.7.0.1
 */