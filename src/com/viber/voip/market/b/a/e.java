package com.viber.voip.market.b.a;

import android.util.SparseArray;
import com.viber.voip.a.ab;
import com.viber.voip.a.bc;
import com.viber.voip.stickers.c.f;
import java.util.List;

public class e
  extends d
{
  private static final String c = e.class.getSimpleName();
  
  public e(List<? extends f> paramList)
  {
    super(paramList);
  }
  
  public int a()
  {
    return super.a();
  }
  
  protected void a(a parama)
  {
    int i = -1 + this.a.size();
    if (i >= 0) {
      if (!((a)this.a.get(i)).c()) {}
    }
    for (int j = i + 1;; j = 0)
    {
      parama.a(j);
      this.a.add(j, parama);
      this.b.append(parama.e(), parama);
      return;
      i--;
      break;
    }
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    a locala = (a)this.a.remove(paramInt1);
    this.a.add(paramInt2, locala);
    bc.a().a(com.viber.voip.a.a.D.a(locala.e(), paramInt2));
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.b.a.e
 * JD-Core Version:    0.7.0.1
 */