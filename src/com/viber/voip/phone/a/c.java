package com.viber.voip.phone.a;

import android.view.View;
import com.viber.voip.phone.PhoneActivity;
import com.viber.voip.phone.ab;
import com.viber.voip.phone.ac;

public class c
  implements ac
{
  private PhoneActivity a;
  private View b;
  private d c;
  private a d;
  
  public c(View paramView, PhoneActivity paramPhoneActivity)
  {
    this.a = paramPhoneActivity;
    this.b = paramView;
  }
  
  private d f()
  {
    try
    {
      if (this.c == null) {
        this.c = new d(this, this.b, this.a);
      }
      d locald = this.c;
      return locald;
    }
    finally {}
  }
  
  public ab a()
  {
    return f();
  }
  
  public ab b()
  {
    return f();
  }
  
  public ab c()
  {
    try
    {
      if (this.d == null) {
        this.d = new a(this.b, this.a);
      }
      a locala = this.d;
      return locala;
    }
    finally {}
  }
  
  public ab d()
  {
    return f();
  }
  
  public int e()
  {
    return 2130903098;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.a.c
 * JD-Core Version:    0.7.0.1
 */