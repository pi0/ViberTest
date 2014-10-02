package com.viber.voip.util;

import com.viber.voip.contacts.b.b;
import com.viber.voip.contacts.c.d.i;
import java.util.Iterator;
import java.util.Set;

final class y
  implements i
{
  y(String paramString, ag paramag) {}
  
  public void a(String paramString, Set<b> paramSet)
  {
    String str = this.a;
    if ((paramSet != null) && (!paramSet.isEmpty())) {
      str = ((b)paramSet.iterator().next()).a();
    }
    if (this.b != null) {
      this.b.a(paramString, str);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.y
 * JD-Core Version:    0.7.0.1
 */