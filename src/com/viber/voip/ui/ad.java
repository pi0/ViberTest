package com.viber.voip.ui;

import android.view.View;
import android.widget.AbsListView.RecyclerListener;
import com.nineoldandroids.view.ViewHelper;

class ad
  implements AbsListView.RecyclerListener
{
  ad(ac paramac) {}
  
  public void onMovedToScrapHeap(View paramView)
  {
    if (ViewHelper.getY(paramView) != 0.0F) {
      ViewHelper.setTranslationY(paramView, 0.0F);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.ad
 * JD-Core Version:    0.7.0.1
 */