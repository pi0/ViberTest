package com.viber.voip.messages.extras.map;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import com.google.android.maps.GeoPoint;
import com.google.android.maps.MapView;
import com.google.android.maps.Overlay;
import com.google.android.maps.Projection;

public class c
  extends Overlay
{
  private GeoPoint a;
  private Context b;
  private float c;
  private int d;
  
  public c(GeoPoint paramGeoPoint, Context paramContext, float paramFloat, int paramInt)
  {
    this.a = paramGeoPoint;
    this.b = paramContext;
    this.c = paramFloat;
    this.d = paramInt;
  }
  
  public void draw(Canvas paramCanvas, MapView paramMapView, boolean paramBoolean)
  {
    super.draw(paramCanvas, paramMapView, paramBoolean);
    Projection localProjection = paramMapView.getProjection();
    Point localPoint = new Point();
    localProjection.toPixels(this.a, localPoint);
    Bitmap localBitmap = BitmapFactory.decodeResource(this.b.getResources(), this.d);
    int i = localPoint.x - localBitmap.getWidth() / 2;
    int j = localPoint.y - localBitmap.getHeight();
    if (this.c != -1.0F)
    {
      Paint localPaint = new Paint();
      localPaint.setAntiAlias(true);
      localPaint.setStrokeWidth(2.0F);
      localPaint.setColor(this.b.getResources().getColor(2131296353));
      localPaint.setStyle(Paint.Style.STROKE);
      int k = (int)paramMapView.getProjection().metersToEquatorPixels(this.c);
      paramCanvas.drawCircle(localPoint.x, localPoint.y, k, localPaint);
      localPaint.setColor(this.b.getResources().getColor(2131296353));
      localPaint.setStyle(Paint.Style.FILL);
      paramCanvas.drawCircle(localPoint.x, localPoint.y, k, localPaint);
      j = localPoint.y - localBitmap.getHeight() / 2;
    }
    paramCanvas.drawBitmap(localBitmap, i, j, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.map.c
 * JD-Core Version:    0.7.0.1
 */