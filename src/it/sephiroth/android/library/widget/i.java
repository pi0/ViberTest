package it.sephiroth.android.library.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;

public class i
  extends ViewGroup.LayoutParams
{
  public int a;
  public boolean b;
  public boolean c;
  public int d;
  public long e = -1L;
  
  public i(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }
  
  public i(int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramInt1, paramInt2);
    this.a = paramInt3;
  }
  
  public i(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public i(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     it.sephiroth.android.library.widget.i
 * JD-Core Version:    0.7.0.1
 */