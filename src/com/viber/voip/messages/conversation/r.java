package com.viber.voip.messages.conversation;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.app.LoaderManager;
import android.util.SparseArray;
import com.viber.provider.e;
import com.viber.voip.messages.controller.cr;
import com.viber.voip.messages.i;

public class r
  extends ah
{
  private int h;
  private SparseArray k;
  
  public r(Context paramContext, LoaderManager paramLoaderManager, i parami, e parame, int paramInt)
  {
    super(paramContext, paramLoaderManager, parami, parame);
    this.h = paramInt;
  }
  
  private SparseArray n()
  {
    SparseArray localSparseArray = new SparseArray();
    int i = 0;
    int j = -1;
    long l1 = 0L;
    int m = 0;
    if ((m < getCount()) && (c(m)))
    {
      long l2 = this.e.getLong(2);
      int i2;
      if ((m == 0) || (cr.b(l1, l2)))
      {
        int n = j + 1;
        localSparseArray.append(n, new s(this).a(Integer.valueOf(m)));
        int i1 = n + 1;
        localSparseArray.append(i1, new t(this).a(Integer.valueOf(m)));
        i = 0;
        i2 = i1;
      }
      for (;;)
      {
        int i3 = i + 1;
        m++;
        i = i3;
        j = i2;
        l1 = l2;
        break;
        if (i == this.h)
        {
          int i4 = j + 1;
          localSparseArray.append(i4, new t(this).a(Integer.valueOf(m)));
          i2 = i4;
          i = 0;
        }
        else
        {
          if (localSparseArray.get(j) != null) {
            ((t)localSparseArray.get(j)).a(Integer.valueOf(m));
          }
          i2 = j;
        }
      }
    }
    return localSparseArray;
  }
  
  public u c_(int paramInt)
  {
    return (u)this.k.get(paramInt);
  }
  
  protected void k()
  {
    super.k();
    this.k = n();
  }
  
  public int m()
  {
    return this.k.size();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.r
 * JD-Core Version:    0.7.0.1
 */