package com.android.camera.a;

import java.util.Comparator;

class i
  implements Comparator<k>
{
  public int a(k paramk1, k paramk2)
  {
    if (paramk1.b != paramk2.b)
    {
      if (paramk1.b < paramk2.b) {
        return -1;
      }
      return 1;
    }
    return paramk1.a - paramk2.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.camera.a.i
 * JD-Core Version:    0.7.0.1
 */