package com.viber.voip.widget;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.Chronometer;
import android.widget.Chronometer.OnChronometerTickListener;
import com.viber.voip.util.ak;
import java.util.Formatter;
import java.util.IllegalFormatException;
import java.util.Locale;

public class PausableChronometer
  extends Chronometer
{
  private long a;
  private boolean b;
  private boolean c;
  private boolean d;
  private String e;
  private Formatter f;
  private Locale g;
  private Object[] h = new Object[1];
  private StringBuilder i;
  private Long j;
  private Handler k = new m(this);
  
  public PausableChronometer(Context paramContext)
  {
    this(paramContext, null, 0);
  }
  
  public PausableChronometer(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public PausableChronometer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setFormat(paramContext.getString(2131493725));
    a();
  }
  
  private void a(long paramLong)
  {
    try
    {
      Object localObject2 = ak.a((paramLong - getBase()) / 1000L);
      if (this.e != null)
      {
        Locale localLocale = Locale.getDefault();
        if ((this.f == null) || (!localLocale.equals(this.g)))
        {
          this.g = localLocale;
          this.f = new Formatter(this.i, localLocale);
        }
        this.i.setLength(0);
        this.h[0] = localObject2;
      }
      try
      {
        this.f.format(this.e, this.h);
        String str = this.i.toString();
        localObject2 = str;
      }
      catch (IllegalFormatException localIllegalFormatException)
      {
        for (;;)
        {
          Log.w("PausableChronometer", "Illegal format string: " + this.e);
        }
      }
      setText((CharSequence)localObject2);
      return;
    }
    finally {}
  }
  
  private void e()
  {
    boolean bool;
    if ((this.b) && (this.c))
    {
      bool = true;
      if (bool != this.d)
      {
        if (!bool) {
          break label69;
        }
        a(SystemClock.elapsedRealtime());
        d();
        this.k.sendMessageDelayed(Message.obtain(this.k, 2), 1000L);
      }
    }
    for (;;)
    {
      this.d = bool;
      return;
      bool = false;
      break;
      label69:
      this.k.removeMessages(2);
    }
  }
  
  public void a()
  {
    this.a = SystemClock.elapsedRealtime();
    a(this.a);
  }
  
  public void b()
  {
    if (this.j == null)
    {
      this.j = Long.valueOf(SystemClock.elapsedRealtime() - getBase());
      stop();
    }
  }
  
  public void c()
  {
    if (this.j != null)
    {
      start();
      this.j = null;
    }
  }
  
  void d()
  {
    if (getOnChronometerTickListener() != null) {
      getOnChronometerTickListener().onChronometerTick(this);
    }
  }
  
  public long getBase()
  {
    return this.a;
  }
  
  public long getTime()
  {
    return SystemClock.elapsedRealtime() - getBase();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.b = false;
    e();
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    if (paramInt == 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.b = bool;
      e();
      return;
    }
  }
  
  public void setBase(long paramLong)
  {
    this.a = paramLong;
    d();
    a(SystemClock.elapsedRealtime());
  }
  
  public void setFormat(String paramString)
  {
    this.e = paramString;
    if ((paramString != null) && (this.i == null)) {
      this.i = new StringBuilder(2 * paramString.length());
    }
  }
  
  public void setStarted(boolean paramBoolean)
  {
    this.c = paramBoolean;
    e();
  }
  
  public void start()
  {
    this.c = true;
    e();
  }
  
  public void stop()
  {
    this.c = false;
    e();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.PausableChronometer
 * JD-Core Version:    0.7.0.1
 */