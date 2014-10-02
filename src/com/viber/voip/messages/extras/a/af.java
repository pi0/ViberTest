package com.viber.voip.messages.extras.a;

import android.location.Location;
import com.viber.logger.QaLogger;
import com.viber.logger.QaLogger.QaLocationReceivedEvent;

class af
  extends ad
{
  private long c;
  private b d;
  
  public af(e parame, b paramb, long paramLong)
  {
    super(parame, paramb, 20000, null);
    this.c = paramLong;
    this.d = paramb;
    e.a(parame, paramLong, this);
  }
  
  protected void a()
  {
    e.a(this.b, this.c, this.d);
  }
  
  public void onLocationChanged(Location paramLocation)
  {
    e.a("ViberLocationListener onLocationChanged location " + paramLocation);
    super.onLocationChanged(paramLocation);
    this.b.a(Long.valueOf(this.c));
    QaLogger.a(new QaLogger.QaLocationReceivedEvent(this.c, true));
  }
  
  public void onProviderDisabled(String paramString)
  {
    e.a("ViberLocationListener onProviderDisabled provider:" + paramString);
    super.onProviderDisabled(paramString);
    this.b.a(Long.valueOf(this.c));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.a.af
 * JD-Core Version:    0.7.0.1
 */