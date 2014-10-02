package com.viber.voip.ui.b;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class b<U extends f, T extends com.viber.voip.ui.b.a.a>
  extends a<U, T>
  implements e<U, T>
{
  protected U i;
  protected List<a<U, T>> j = new ArrayList();
  
  protected b(View paramView)
  {
    super(paramView);
  }
  
  private void b(U paramU, T paramT)
  {
    if (this.j == null) {}
    for (;;)
    {
      return;
      Iterator localIterator = this.j.iterator();
      while (localIterator.hasNext()) {
        ((a)localIterator.next()).a(paramU, paramT);
      }
    }
  }
  
  public void a(U paramU, T paramT)
  {
    this.i = paramU;
    b(paramU, paramT);
  }
  
  public U c()
  {
    return this.i;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.b.b
 * JD-Core Version:    0.7.0.1
 */