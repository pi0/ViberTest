package com.viber.voip.g;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerControllerDelegate.DialerPhoneState;
import com.viber.jni.dialer.DialerPhoneStateListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;

public class c
  extends a
{
  private SensorManager a = null;
  private Sensor b = null;
  private boolean c = false;
  private boolean d = false;
  private volatile boolean e = false;
  private boolean f = false;
  private SensorEventListener g = new e(this);
  
  public c(Context paramContext)
  {
    super(paramContext);
    this.a = ((SensorManager)paramContext.getSystemService("sensor"));
    this.b = this.a.getDefaultSensor(8);
    if (this.b != null)
    {
      PhoneControllerListener localPhoneControllerListener = b().getPhoneController(false).getDelegatesManager();
      d locald = new d(this);
      localPhoneControllerListener.getDialerPhoneStateListener().registerDelegate(new DialerControllerDelegate.DialerPhoneState[] { locald });
    }
    a("Generic proximity helper created");
  }
  
  public void a(int paramInt)
  {
    a("updateProximityOnCallState: state = " + paramInt);
    switch (paramInt)
    {
    case 1: 
    case 2: 
    default: 
    case 3: 
    case 4: 
      do
      {
        return;
      } while (this.c);
      this.e = false;
      this.a.registerListener(this.g, this.b, 3, dc.a(dk.h));
      this.c = true;
      return;
    }
    this.a.unregisterListener(this.g);
    this.c = false;
    b().enableTouchInput(true);
  }
  
  public void a(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.g.c
 * JD-Core Version:    0.7.0.1
 */