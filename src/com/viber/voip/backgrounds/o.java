package com.viber.voip.backgrounds;

import com.viber.voip.util.bk;
import java.util.ArrayList;

public class o
{
  public final int a;
  private ArrayList<q> b;
  private int c;
  
  public o(int paramInt)
  {
    this.a = paramInt;
    this.b = new ArrayList();
  }
  
  public ArrayList<q> a()
  {
    return this.b;
  }
  
  public void a(ArrayList<q> paramArrayList)
  {
    this.b = paramArrayList;
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.c = bk.a(this.c, 1);
      return;
    }
    this.c = bk.b(this.c, 1);
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.c = bk.a(this.c, 2);
      return;
    }
    this.c = bk.b(this.c, 2);
  }
  
  public boolean b()
  {
    return bk.a(this.c, new int[] { 1 });
  }
  
  public boolean c()
  {
    return bk.a(this.c, new int[] { 2 });
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.backgrounds.o
 * JD-Core Version:    0.7.0.1
 */