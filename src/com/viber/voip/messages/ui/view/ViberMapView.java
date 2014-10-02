package com.viber.voip.messages.ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.google.android.maps.GeoPoint;
import com.google.android.maps.MapController;
import com.google.android.maps.MapView;
import com.google.android.maps.Projection;

public class ViberMapView
  extends MapView
{
  private static GeoPoint c = new GeoPoint(0, 0);
  private static GeoPoint d;
  protected boolean a = true;
  private long b = -1L;
  private h e;
  
  public ViberMapView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if (getZoomLevel() < 2) {
      getController().setZoom(2);
    }
    if (this.a)
    {
      d = getProjection().fromPixels(0, 0);
      if (!d.equals(c)) {
        break label77;
      }
      this.a = false;
      if (this.e != null) {
        this.e.a();
      }
    }
    return;
    label77:
    c = d;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    long l;
    if (paramMotionEvent.getAction() == 0)
    {
      l = System.currentTimeMillis();
      if (l - this.b >= 250L) {
        break label55;
      }
      getController().zoomInFixing((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
    }
    label55:
    for (this.b = -1L;; this.b = l) {
      return super.onInterceptTouchEvent(paramMotionEvent);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return super.onTouchEvent(paramMotionEvent);
      this.a = true;
      if (this.e != null) {
        this.e.b();
      }
    }
  }
  
  public void setMapMoveListener(h paramh)
  {
    this.e = paramh;
  }
  
  public void setMapMoving(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.view.ViberMapView
 * JD-Core Version:    0.7.0.1
 */