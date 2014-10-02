package pager;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;

public class f
  extends ViewGroup.LayoutParams
{
  public boolean a;
  public int b;
  public float c = 0.0F;
  public boolean d;
  
  public f()
  {
    super(-1, -1);
  }
  
  public f(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, ViewPager.e());
    this.b = localTypedArray.getInteger(0, 48);
    localTypedArray.recycle();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     pager.f
 * JD-Core Version:    0.7.0.1
 */