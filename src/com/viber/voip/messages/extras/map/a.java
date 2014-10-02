package com.viber.voip.messages.extras.map;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.google.android.maps.GeoPoint;
import com.google.android.maps.MapView.LayoutParams;
import com.google.android.maps.Overlay;

public class a
  extends Overlay
{
  private View a;
  private TextView b;
  private TextView c;
  private ProgressBar d;
  private ViewGroup e;
  private k f;
  private int g;
  
  public a(Context paramContext, ViewGroup paramViewGroup, int paramInt)
  {
    this.g = (BitmapFactory.decodeResource(paramContext.getResources(), paramInt).getHeight() / 2);
    a(paramContext);
    this.e = paramViewGroup;
  }
  
  public a a(k paramk)
  {
    this.f = paramk;
    if (!TextUtils.isEmpty(paramk.f()))
    {
      this.b.setText(paramk.f());
      this.b.setVisibility(0);
      this.d.setVisibility(4);
      if (!TextUtils.isEmpty(paramk.e()))
      {
        this.c.setText(paramk.e());
        this.c.setVisibility(0);
        return this;
      }
      this.c.setVisibility(8);
      return this;
    }
    this.b.setVisibility(4);
    this.d.setVisibility(0);
    return this;
  }
  
  public void a()
  {
    this.e.removeView(this.a);
    this.a.setVisibility(0);
    MapView.LayoutParams localLayoutParams = new MapView.LayoutParams(-2, -2, new GeoPoint(this.f.b().a(), this.f.b().b()), 81);
    this.e.addView(this.a, localLayoutParams);
  }
  
  protected void a(Context paramContext)
  {
    this.a = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903144, null);
    this.a.setPadding(0, 0, 0, this.g);
    this.b = ((TextView)this.a.findViewById(2131165603));
    this.c = ((TextView)this.a.findViewById(2131165604));
    this.d = ((ProgressBar)this.a.findViewById(2131165605));
  }
  
  public void b()
  {
    this.a.setVisibility(8);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.map.a
 * JD-Core Version:    0.7.0.1
 */