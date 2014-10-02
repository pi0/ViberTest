package com.viber.voip;

import android.view.View;
import android.view.ViewGroup.OnHierarchyChangeListener;
import com.viber.voip.ui.b.c;

class y
  implements ViewGroup.OnHierarchyChangeListener
{
  y(ConversationListView paramConversationListView) {}
  
  public void onChildViewAdded(View paramView1, View paramView2) {}
  
  public void onChildViewRemoved(View paramView1, View paramView2)
  {
    if ((paramView2 != null) && ((paramView2.getTag() instanceof c))) {}
    for (c localc = (c)paramView2.getTag();; localc = null)
    {
      if (localc != null) {
        localc.a();
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.y
 * JD-Core Version:    0.7.0.1
 */