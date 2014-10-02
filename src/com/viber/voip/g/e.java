package com.viber.voip.g;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.os.Build;
import android.os.Handler;
import com.viber.voip.ViberApplication;
import com.viber.voip.dk;

class e
  implements SensorEventListener
{
  e(c paramc) {}
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    boolean bool1 = true;
    if (paramSensorEvent.sensor.getType() == 8)
    {
      int i = (int)paramSensorEvent.values[0];
      this.a.a("onSensorChanged: value=" + i);
      if (!c.a(this.a)) {
        c.a(this.a, bool1);
      }
      if ((i != 0) && ((i != 3) || (!Build.MANUFACTURER.equalsIgnoreCase("motorola")))) {
        break label103;
      }
    }
    label103:
    for (boolean bool2 = bool1; bool2 == c.b(this.a); bool2 = false) {
      return;
    }
    c.b(this.a, bool2);
    ViberApplication localViberApplication = this.a.b();
    if (!bool2) {}
    for (;;)
    {
      localViberApplication.enableTouchInput(bool1);
      b localb = this.a.a();
      if ((!c.c(this.a)) || (localb == null)) {
        break;
      }
      dk.a.a().post(new f(this, localb));
      return;
      bool1 = false;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.g.e
 * JD-Core Version:    0.7.0.1
 */