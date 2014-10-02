package com.viber.voip.gallery.preview;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.viber.voip.as;
import com.viber.voip.aw;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.gallery.GalleryItem;
import com.viber.voip.gallery.animation.c;
import com.viber.voip.messages.extras.image.imagezoom.ImageViewTouch;
import com.viber.voip.messages.ui.view.ViewPagerWithPagingEnable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class z
  extends c
{
  private final List<GalleryItem> b;
  private final Set<Integer> c;
  private ViewPagerWithPagingEnable d;
  private as e;
  private boolean f;
  private Pair<Integer, GalleryItem> g;
  private int h;
  private Handler i;
  
  public z(Context paramContext, List<GalleryItem> paramList, ViewPagerWithPagingEnable paramViewPagerWithPagingEnable)
  {
    super(paramContext);
    this.d = paramViewPagerWithPagingEnable;
    this.b = paramList;
    this.c = new HashSet();
    this.i = dc.a(dk.h);
  }
  
  private static void a(ac paramac, aw paramaw)
  {
    if (paramaw.b)
    {
      paramac.d.setImageBitmap(null);
      paramac.d.setVisibility(8);
      paramac.c.setVisibility(0);
      paramac.c.a(paramaw.a, true);
      return;
    }
    paramac.d.setImageBitmap(paramaw.a);
    paramac.d.setVisibility(0);
    paramac.d.getLayoutParams().height = paramaw.d;
    paramac.d.getLayoutParams().width = paramaw.c;
    paramac.c.setVisibility(8);
    paramac.c.a(null, true);
  }
  
  private ac b(int paramInt)
  {
    Resources localResources = this.a.getResources();
    ab localab = new ab(this.a, null);
    localab.setId(2131165298);
    localab.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    float f1 = localResources.getDimension(2131362203);
    float f2 = localResources.getDimension(2131362204);
    float f3 = localResources.getDimension(2131362203);
    float f4 = localResources.getDimension(2131362205);
    ImageViewTouch localImageViewTouch = new ImageViewTouch(this.a);
    localImageViewTouch.setId(2131165296);
    localImageViewTouch.a(f1, f2, f3, f4);
    localImageViewTouch.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
    localImageViewTouch.setExternalScrollListener(new aa(this));
    localab.addView(localImageViewTouch);
    ImageView localImageView = new ImageView(this.a);
    localImageView.setId(2131165297);
    localImageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
    localab.addView(localImageView);
    return new ac(paramInt, localab, localImageViewTouch, localImageView);
  }
  
  public void a()
  {
    this.f = true;
    this.e.c();
  }
  
  public void a(int paramInt)
  {
    this.f = false;
    for (int j = 0; j < this.d.getChildCount(); j++)
    {
      View localView = this.d.getChildAt(j).findViewById(2131165298);
      if (localView != null)
      {
        ac localac = (ac)localView.getTag();
        if (paramInt != localac.a) {
          localac.c.b(1.0F);
        }
      }
    }
    if ((paramInt < this.b.size()) && (!this.c.contains(Integer.valueOf(paramInt))))
    {
      this.h = paramInt;
      this.e.d(paramInt, ((GalleryItem)this.b.get(paramInt)).a());
    }
  }
  
  public void a(int paramInt, View paramView)
  {
    if (this.g != null)
    {
      this.b.add(paramInt, this.g.second);
      this.g = null;
    }
  }
  
  public void a(int paramInt, aw paramaw)
  {
    int j = this.d.getChildCount();
    for (int k = 0;; k++) {
      if (k < j)
      {
        View localView = this.d.getChildAt(k).findViewById(2131165298);
        if (localView != null)
        {
          ac localac = (ac)localView.getTag();
          if (localac.a == paramInt) {
            a(localac, paramaw);
          }
        }
      }
      else
      {
        return;
      }
    }
  }
  
  public void a(View paramView, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean2) {
      this.c.add(Integer.valueOf(paramInt));
    }
    if (paramBoolean1) {
      this.e.c();
    }
    while ((this.g != null) || (paramBoolean2)) {
      return;
    }
    this.e.d(paramInt, ((GalleryItem)this.b.get(paramInt)).a());
  }
  
  public void a(as paramas)
  {
    this.e = paramas;
  }
  
  public void b(int paramInt, View paramView)
  {
    this.g = new Pair(Integer.valueOf(paramInt), this.b.remove(paramInt));
  }
  
  public void c(int paramInt, View paramView)
  {
    this.e.a();
    this.c.remove(Integer.valueOf(paramInt));
    GalleryItem localGalleryItem;
    if (this.g != null)
    {
      localGalleryItem = (GalleryItem)this.g.second;
      this.g = null;
    }
    for (;;)
    {
      if (localGalleryItem.d())
      {
        Handler localHandler = this.i;
        Uri[] arrayOfUri = new Uri[1];
        arrayOfUri[0] = localGalleryItem.b();
        localHandler.post(new a(arrayOfUri));
      }
      return;
      localGalleryItem = (GalleryItem)this.b.remove(paramInt);
    }
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    if (paramObject == null) {}
    ac localac;
    do
    {
      return;
      localac = (ac)((View)paramObject).getTag();
    } while (localac == null);
    localac.c.setImageBitmap(null);
    localac.d.setImageBitmap(null);
  }
  
  public int getCount()
  {
    int j = this.b.size();
    if (this.g != null) {
      j++;
    }
    return j;
  }
  
  public int getItemPosition(Object paramObject)
  {
    return -2;
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    if (this.e == null) {
      throw new IllegalStateException("mImageFetcher is not set to adapter. Use setImageFetcher() to assing image fetcher.");
    }
    ac localac = b(paramInt);
    localac.b.setTag(localac);
    GalleryItem localGalleryItem;
    Uri localUri;
    if ((this.g != null) && (paramInt == ((Integer)this.g.first).intValue()))
    {
      localGalleryItem = (GalleryItem)this.g.second;
      localUri = localGalleryItem.a();
      if (paramInt != this.h) {
        break label164;
      }
      a(localac, this.e.c(paramInt, localUri));
    }
    for (;;)
    {
      return localac.b;
      if ((this.g != null) && (paramInt > ((Integer)this.g.first).intValue()))
      {
        localGalleryItem = (GalleryItem)this.b.get(paramInt - 1);
        break;
      }
      localGalleryItem = (GalleryItem)this.b.get(paramInt);
      break;
      label164:
      this.e.b(paramInt, localUri);
    }
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
  
  public void notifyDataSetChanged()
  {
    if (!this.f) {
      super.notifyDataSetChanged();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.preview.z
 * JD-Core Version:    0.7.0.1
 */