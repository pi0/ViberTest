package com.viber.voip.messages.ui.media;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ProgressBar;
import android.widget.TextView;

public class bj
  extends be
  implements ba
{
  private bl a;
  private int b;
  
  public static bj a(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    bj localbj = new bj();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("media_uri", paramBitmap);
    localBundle.putInt("fragmentPosition", paramInt2);
    localbj.setArguments(localBundle);
    localbj.a(paramInt1);
    return localbj;
  }
  
  private void a(Context paramContext)
  {
    Bitmap localBitmap = (Bitmap)getArguments().getParcelable("media_uri");
    if (localBitmap != null)
    {
      this.a.c.setBackgroundResource(2131296424);
      this.a.c.setImageBitmap(localBitmap);
      this.a.c.setScaleType(ImageView.ScaleType.FIT_CENTER);
    }
    if (!e()) {
      a(f());
    }
    this.a.d.setOnClickListener(new bk(this));
    if (((ViewMediaActivity)getActivity()).a())
    {
      this.a.c.setVisibility(8);
      return;
    }
    this.a.c.setVisibility(0);
  }
  
  public void a()
  {
    bl.a(this.a);
  }
  
  public void a(String paramString)
  {
    this.a.a();
    this.a.b.setVisibility(0);
    this.a.b.setText(paramString);
    this.a.a.setVisibility(8);
  }
  
  public void a(boolean paramBoolean)
  {
    this.a.c.setVisibility(0);
  }
  
  public void b()
  {
    this.a.c.setVisibility(8);
  }
  
  public void b(boolean paramBoolean)
  {
    if (e())
    {
      c();
      ImageView localImageView = this.a.c;
      if (paramBoolean) {}
      for (int i = 4;; i = 0)
      {
        localImageView.setVisibility(i);
        return;
      }
    }
    a(f());
  }
  
  public void c()
  {
    this.a.a();
  }
  
  public void d()
  {
    this.a.c.setVisibility(0);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = getArguments().getInt("fragmentPosition");
    ((ViewMediaActivity)getActivity()).a(this.b, this);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903370, null);
    this.a = new bl(this, localView);
    a(localView.getContext());
    return localView;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    ((ViewMediaActivity)getActivity()).a(this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.bj
 * JD-Core Version:    0.7.0.1
 */