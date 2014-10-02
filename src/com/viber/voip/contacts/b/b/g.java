package com.viber.voip.contacts.b.b;

import android.text.TextUtils;
import com.viber.voip.contacts.b.i;
import java.util.Comparator;

final class g
  implements Comparator<i>
{
  public int a(i parami1, i parami2)
  {
    if (!TextUtils.isEmpty(parami1.c())) {}
    int j;
    for (int i = 1;; i = 0)
    {
      boolean bool = TextUtils.isEmpty(parami2.c());
      j = 0;
      if (!bool) {
        j = 1;
      }
      if ((i != 0) || (j == 0)) {
        break;
      }
      return 1;
    }
    if ((j == 0) && (i != 0)) {
      return -1;
    }
    return parami1.a().compareTo(parami2.a());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.g
 * JD-Core Version:    0.7.0.1
 */