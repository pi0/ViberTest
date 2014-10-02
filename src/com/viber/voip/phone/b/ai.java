package com.viber.voip.phone.b;

import android.view.View;
import com.viber.voip.phone.PhoneActivity;
import com.viber.voip.phone.ab;

public class ai
  implements com.viber.voip.phone.ac
{
  private PhoneActivity a;
  private View b;
  private ab c;
  private ab d;
  private ab e;
  private ab f;
  private int[][] g = { { 2131165314, 0, 1 }, { 2131165321, 8, 1 }, { 2131165322, 0, 1 }, { 2131165327, 0, 1 }, { 2131165613, 0, 1 } };
  private int[][] h = { { 2131165321, 0 }, { 2131165322, 8 }, { 2131165327, 8 }, { 2131165613, 8 } };
  private int[][] i = { { 2131165321, 8 }, { 2131165613, 8 } };
  private int[][] j = { { 2131165321, 8 }, { 2131165322, 8 }, { 2131165327, 0 }, { 2131165613, 8 } };
  
  public ai(View paramView, PhoneActivity paramPhoneActivity)
  {
    this.a = paramPhoneActivity;
    this.b = paramView;
  }
  
  public ab a()
  {
    if (this.c == null) {
      this.c = new af(this.b, this.a);
    }
    return this.c;
  }
  
  public ab b()
  {
    if (this.d == null) {
      this.d = new k(this.b, this.a);
    }
    return this.d;
  }
  
  public ab c()
  {
    if (this.e == null) {
      this.e = new ac(this.b, this.a);
    }
    return this.e;
  }
  
  public ab d()
  {
    if (this.f == null) {
      this.f = new j(this.b, this.a);
    }
    return this.f;
  }
  
  public int e()
  {
    return 2130903040;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.b.ai
 * JD-Core Version:    0.7.0.1
 */