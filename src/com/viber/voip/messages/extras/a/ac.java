package com.viber.voip.messages.extras.a;

import com.viber.voip.messages.extras.map.j;
import com.viber.voip.messages.extras.map.k;
import java.util.Arrays;

class ac
  implements j
{
  ac(ab paramab) {}
  
  public void a(k[] paramArrayOfk)
  {
    e.a("onPlacesReady places:" + Arrays.toString(paramArrayOfk));
    if ((paramArrayOfk.length > 0) && (paramArrayOfk[0] != null)) {
      e.a(this.a.e, paramArrayOfk[0], this.a.c, this.a.d);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.a.ac
 * JD-Core Version:    0.7.0.1
 */