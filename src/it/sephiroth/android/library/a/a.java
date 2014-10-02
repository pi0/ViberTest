package it.sephiroth.android.library.a;

import android.os.Build.VERSION;
import android.view.View;

public class a
{
  public static final b a(View paramView)
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 16) {
      return new it.sephiroth.android.library.a.c.a(paramView);
    }
    if (i >= 14) {
      return new it.sephiroth.android.library.a.b.a(paramView);
    }
    return new c(paramView);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     it.sephiroth.android.library.a.a
 * JD-Core Version:    0.7.0.1
 */