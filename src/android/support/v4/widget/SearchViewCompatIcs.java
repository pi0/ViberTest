package android.support.v4.widget;

import android.content.Context;
import android.view.View;
import android.widget.SearchView;

class SearchViewCompatIcs
{
  public static View newSearchView(Context paramContext)
  {
    return new SearchViewCompatIcs.MySearchView(paramContext);
  }
  
  public static void setImeOptions(View paramView, int paramInt)
  {
    ((SearchView)paramView).setImeOptions(paramInt);
  }
  
  public static void setInputType(View paramView, int paramInt)
  {
    ((SearchView)paramView).setInputType(paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     android.support.v4.widget.SearchViewCompatIcs
 * JD-Core Version:    0.7.0.1
 */