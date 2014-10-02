package com.viber.voip.messages.a;

import android.os.Handler;
import com.viber.voip.contacts.c.d.j;
import java.util.List;
import java.util.Map;
import java.util.Set;

class g
  implements j
{
  g(b paramb, Set paramSet) {}
  
  public void a(Map<String, List<com.viber.voip.contacts.b.b>> paramMap, Map<Long, com.viber.voip.contacts.b.b> paramMap1)
  {
    b.c(this.b).post(new h(this, paramMap, paramMap1));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.a.g
 * JD-Core Version:    0.7.0.1
 */