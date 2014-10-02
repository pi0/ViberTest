package com.viber.voip.messages.ui.media;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.viber.voip.messages.extras.image.imagezoom.ImageViewTouch;
import com.viber.voip.messages.extras.image.imagezoom.c;

public class bf
  extends be
{
  private static final String b = bf.class.getSimpleName();
  c a = new bh(this);
  private bi c;
  
  public static bf a(Bitmap paramBitmap, int paramInt)
  {
    bf localbf = new bf();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("media_uri", paramBitmap);
    localBundle.putBoolean("is_scrolled_view", false);
    localbf.setArguments(localBundle);
    localbf.a(paramInt);
    return localbf;
  }
  
  public static bf a(Bitmap paramBitmap, int paramInt1, int paramInt2, int paramInt3)
  {
    bf localbf = new bf();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("media_uri", paramBitmap);
    localBundle.putBoolean("is_scrolled_view", true);
    localBundle.putInt("max_view_width", paramInt2);
    localBundle.putInt("max_view_height", paramInt3);
    localbf.setArguments(localBundle);
    localbf.a(paramInt1);
    return localbf;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903359, null);
    this.c = new bi(localView);
    Bundle localBundle = getArguments();
    Bitmap localBitmap = (Bitmap)localBundle.getParcelable("media_uri");
    boolean bool = localBundle.getBoolean("is_scrolled_view");
    if (localBitmap != null)
    {
      this.c.b();
      if (!bool)
      {
        this.c.a.a(localBitmap, true);
        this.c.a.setOnClickListener(new bg(this));
        this.c.b.setVisibility(8);
        this.c.a.setExternalScrollListener(this.a);
        return localView;
      }
      int i = localBundle.getInt("max_view_width");
      int j = localBundle.getInt("max_view_height");
      if ((i > 0) && (j > 0))
      {
        this.c.b.getLayoutParams().height = j;
        this.c.b.getLayoutParams().width = i;
      }
      this.c.b.setImageBitmap(localBitmap);
      this.c.a.setVisibility(8);
      this.c.a.setExternalScrollListener(this.a);
      return localView;
    }
    if ((localBitmap == null) && (e()))
    {
      this.c.a();
      return localView;
    }
    this.c.a(f());
    return localView;
  }
  
  public void setMenuVisibility(boolean paramBoolean)
  {
    super.setMenuVisibility(paramBoolean);
    if ((this.c != null) && (!paramBoolean) && (this.c.a.getScale() > 1.0F)) {
      this.c.a.c(1.0F, 50.0F);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.bf
 * JD-Core Version:    0.7.0.1
 */