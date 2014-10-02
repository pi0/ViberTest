package com.viber.voip.messages.extras.a;

import com.viber.voip.messages.extras.map.j;
import com.viber.voip.messages.extras.map.k;
import java.util.Arrays;

class g
  implements j
{
  g(e parame, c paramc) {}
  
  public void a(k[] paramArrayOfk)
  {
    boolean bool = true;
    e.a("onPlacesReady places:" + Arrays.toString(paramArrayOfk));
    int j;
    k localk;
    if (paramArrayOfk.length > 0)
    {
      int i = paramArrayOfk.length;
      j = 0;
      if (j < i)
      {
        localk = paramArrayOfk[j];
        if ("locality".equals(localk.a()))
        {
          e.a("onPlacesReady found locality:" + localk);
          e.a(this.b, localk, bool, this.a);
        }
      }
    }
    for (;;)
    {
      if (!bool) {
        e.a(this.b, null, null, this.a);
      }
      return;
      if ("administrative_area_level_1".equals(localk.a()))
      {
        e.a("onPlacesReady found administrative_area_level_1:" + localk);
        e.a(this.b, localk, bool, this.a);
      }
      else
      {
        j++;
        break;
        bool = false;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.a.g
 * JD-Core Version:    0.7.0.1
 */