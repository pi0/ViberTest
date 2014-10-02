package com.viber.voip.phone.b.a;

import android.content.res.Resources;
import android.widget.TextView;
import com.viber.jni.dialer.DialerController;
import com.viber.voip.dk;
import com.viber.voip.phone.call.a;
import com.viber.voip.phone.call.n;
import com.viber.voip.util.fr;

public class j
  implements Runnable
{
  private Runnable a = new k(this);
  private int[] b = { 2131296369, 2131296370, 2131296371, 2131296371 };
  private fr c = new fr(dk.f.a(), this.a, 3000L);
  private volatile int d;
  private TextView e;
  private final int[] f;
  private DialerController g;
  private a h;
  
  public j(a parama, DialerController paramDialerController, TextView paramTextView, int[] paramArrayOfInt)
  {
    this.h = parama;
    this.g = paramDialerController;
    this.e = paramTextView;
    this.f = paramArrayOfInt;
  }
  
  private int a(int paramInt)
  {
    if ((this.h.b() != null) && (this.h.b().d().d())) {
      return 3;
    }
    if (paramInt < 4) {
      return 2;
    }
    if (paramInt < 7) {
      return 1;
    }
    return 0;
  }
  
  public void a()
  {
    try
    {
      this.c.a();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void b()
  {
    try
    {
      this.c.b();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void run()
  {
    String str = this.e.getResources().getString(this.f[this.d]);
    this.e.setText(str);
    this.e.setTextColor(this.e.getResources().getColor(this.b[this.d]));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.a.j
 * JD-Core Version:    0.7.0.1
 */