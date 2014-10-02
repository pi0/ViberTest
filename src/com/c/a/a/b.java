package com.c.a.a;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public class b
{
  private Object a;
  private Method b;
  private Method c;
  private Method d;
  
  public b(Context paramContext, c paramc)
  {
    try
    {
      Class.forName("android.view.ScaleGestureDetector");
      Class localClass = Class.forName("com.c.a.a.a");
      this.b = localClass.getMethod("getScaleFactor", new Class[0]);
      this.c = localClass.getMethod("isInProgress", new Class[0]);
      this.d = localClass.getMethod("onTouchEvent", new Class[] { MotionEvent.class });
      Class[] arrayOfClass = new Class[3];
      arrayOfClass[0] = Context.class;
      arrayOfClass[1] = getClass();
      arrayOfClass[2] = c.class;
      this.a = localClass.getConstructor(arrayOfClass).newInstance(new Object[] { paramContext, this, paramc });
      return;
    }
    catch (Exception localException)
    {
      Log.w("com.jjoe64.graphview", "*** WARNING *** No scaling available for graphs. Exception:");
      localException.printStackTrace();
    }
  }
  
  public void a(MotionEvent paramMotionEvent)
  {
    if (this.d != null) {}
    try
    {
      this.d.invoke(this.a, new Object[] { paramMotionEvent });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public boolean a()
  {
    if (this.b != null) {
      try
      {
        boolean bool = ((Boolean)this.c.invoke(this.a, new Object[0])).booleanValue();
        return bool;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return false;
      }
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.c.a.a.b
 * JD-Core Version:    0.7.0.1
 */