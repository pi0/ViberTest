package com.viber.voip.calls.ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.viber.voip.ViberApplication;
import com.viber.voip.calls.entities.AggregatedCallEntity;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.service.EntityService;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import com.viber.voip.util.gl;

public abstract class q<T extends Entity>
  extends BaseAdapter
  implements View.OnClickListener
{
  private static final String m = q.class.getSimpleName();
  protected Context a;
  protected LayoutInflater b;
  protected final q<T>.t c;
  protected final EntityService<T> d;
  protected final ColorStateList e;
  protected final ColorStateList f;
  protected w g;
  protected x h;
  protected boolean i;
  protected Resources j;
  protected boolean k;
  protected r l;
  private boolean n;
  
  public q(PhoneFragment paramPhoneFragment, EntityService<T> paramEntityService)
  {
    this.a = paramPhoneFragment.getActivity();
    this.b = ((LayoutInflater)this.a.getSystemService("layout_inflater"));
    this.d = paramEntityService;
    this.c = new t(this, this.a);
    this.f = this.a.getResources().getColorStateList(2131296441);
    this.e = this.a.getResources().getColorStateList(2131296460);
    this.g = w.a(this.a);
    this.h = new z().b(2130838218, this.a).a(2130838218, this.a).b();
    if ((gl.b(this.a)) && (gl.e(this.a))) {}
    for (boolean bool = true;; bool = false)
    {
      this.k = bool;
      this.i = ViberApplication.isTablet();
      this.j = paramPhoneFragment.getActivity().getResources();
      this.n = ViberApplication.preferences().b(j.G(), j.H().booleanValue());
      return;
    }
  }
  
  public abstract int a();
  
  protected View a(ViewGroup paramViewGroup)
  {
    View localView = this.b.inflate(2130903076, paramViewGroup, false);
    localView.setTag(new s(localView, this));
    return localView;
  }
  
  public abstract void a(View paramView, T paramT, int paramInt);
  
  public void a(r paramr)
  {
    this.l = paramr;
  }
  
  protected void a(String paramString1, boolean paramBoolean, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString2))
    {
      Intent localIntent = new Intent("com.viber.voip.action.CALL", Uri.fromParts("tel", paramString2, null));
      localIntent.putExtra("prev_action", paramString1);
      localIntent.putExtra("viber_out", paramBoolean);
      com.viber.service.b.a(this.a, localIntent);
    }
  }
  
  public abstract boolean a(int paramInt);
  
  public T b(int paramInt)
  {
    return this.d.getEntity(paramInt);
  }
  
  public int getCount()
  {
    if (this.d == null) {
      return 0;
    }
    return this.d.getCount();
  }
  
  public long getItemId(int paramInt)
  {
    Entity localEntity = this.d.getEntity(paramInt);
    if (localEntity != null) {
      return localEntity.getId();
    }
    return -1L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = a(paramViewGroup);
    }
    Entity localEntity = b(paramInt);
    s locals = (s)paramView.getTag();
    if ((((localEntity instanceof com.viber.voip.contacts.b.b)) && (!s.a(locals))) || (((localEntity instanceof AggregatedCallEntity)) && (s.a(locals))))
    {
      locals = new s(paramView, this);
      paramView.setTag(locals);
    }
    s.a(locals, a());
    if (a(paramInt)) {
      locals.i.setVisibility(8);
    }
    for (;;)
    {
      a(paramView, localEntity, paramInt);
      return paramView;
      locals.i.setVisibility(0);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.ui.q
 * JD-Core Version:    0.7.0.1
 */