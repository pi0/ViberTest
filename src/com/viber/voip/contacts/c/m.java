package com.viber.voip.contacts.c;

import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.b;
import java.util.Arrays;
import java.util.HashSet;

final class m
  implements Runnable
{
  m(String[] paramArrayOfString) {}
  
  public void run()
  {
    ViberApplication.getInstance().getContactManager().a(new HashSet(Arrays.asList(this.a)), new n(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.m
 * JD-Core Version:    0.7.0.1
 */