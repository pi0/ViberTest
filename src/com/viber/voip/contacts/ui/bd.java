package com.viber.voip.contacts.ui;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView.ScaleType;
import com.viber.voip.contacts.b.e;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.widget.AvatarView;
import it.sephiroth.android.library.widget.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

class bd
  extends BaseAdapter
{
  private final Context b;
  private final w c;
  private final x d;
  private final ArrayList<Pair<String, e>> e = new ArrayList();
  
  public bd(ap paramap, Context paramContext)
  {
    this.b = paramContext;
    this.c = w.a(paramContext);
    this.d = x.a(paramContext);
  }
  
  public Pair<String, e> a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt <= this.e.size()))
    {
      Pair localPair = (Pair)this.e.remove(paramInt);
      notifyDataSetChanged();
      return localPair;
    }
    return null;
  }
  
  public void a()
  {
    this.e.clear();
    notifyDataSetChanged();
  }
  
  public void a(Pair<String, e> paramPair)
  {
    if ((paramPair != null) && (c(paramPair) == null))
    {
      this.e.add(paramPair);
      notifyDataSetChanged();
    }
  }
  
  public Pair<String, e> b(int paramInt)
  {
    return (Pair)this.e.get(paramInt);
  }
  
  public Pair<String, e> b(Pair<String, e> paramPair)
  {
    if (paramPair != null)
    {
      Pair localPair = c(paramPair);
      if (localPair != null)
      {
        this.e.indexOf(localPair);
        this.e.remove(localPair);
        notifyDataSetChanged();
        return localPair;
      }
    }
    return null;
  }
  
  public Pair<String, e> c(Pair<String, e> paramPair)
  {
    Iterator localIterator = this.e.iterator();
    while (localIterator.hasNext())
    {
      Pair localPair = (Pair)localIterator.next();
      if (((String)localPair.first).equals(paramPair.first)) {
        return localPair;
      }
    }
    return null;
  }
  
  public int getCount()
  {
    return this.e.size();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    boolean bool = true;
    AvatarView localAvatarView;
    Pair localPair;
    label110:
    w localw;
    if (paramView == null)
    {
      localAvatarView = new AvatarView(this.b);
      localAvatarView.setScaleType(ImageView.ScaleType.CENTER_CROP);
      localAvatarView.setLayoutParams(new i(ap.l(), ap.l()));
      localAvatarView.setColorFilter(this.b.getResources().getColorStateList(2131296498));
      localAvatarView.setFocusable(bool);
      localPair = b(paramInt);
      if ((!this.a.a.h().contains(localPair.first)) || (!ap.f(this.a))) {
        break label185;
      }
      localAvatarView.setTag(2131165299, Boolean.valueOf(bool));
      localAvatarView.setTag(Integer.valueOf(paramInt));
      localw = this.c;
      if (localPair.second == null) {
        break label191;
      }
    }
    label185:
    label191:
    for (Uri localUri = ((e)localPair.second).b();; localUri = null)
    {
      localw.a(localUri, localAvatarView, this.d);
      return localAvatarView;
      localAvatarView = (AvatarView)paramView;
      break;
      bool = false;
      break label110;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.bd
 * JD-Core Version:    0.7.0.1
 */