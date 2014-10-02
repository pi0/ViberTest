package com.viber.voip.market;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.viber.voip.widget.dslv.DragSortListView;

class aj
{
  final DragSortListView a;
  final View b;
  final View c;
  final TextView d;
  final ProgressBar e;
  final TextView f;
  final View g;
  final View h;
  
  private aj(View paramView1, View paramView2, View paramView3)
  {
    this.a = ((DragSortListView)paramView1.findViewById(16908298));
    this.a.addFooterView(paramView3);
    this.a.addHeaderView(paramView2);
    this.h = paramView3;
    this.f = ((TextView)paramView2.findViewById(2131165767));
    this.b = paramView3.findViewById(2131165892);
    this.c = paramView3.findViewById(2131165895);
    this.d = ((TextView)paramView3.findViewById(2131165893));
    this.e = ((ProgressBar)paramView3.findViewById(2131165894));
    this.g = paramView2.findViewById(2131166139);
  }
  
  private void a(boolean paramBoolean)
  {
    View localView = this.b;
    int i;
    int j;
    label30:
    ProgressBar localProgressBar;
    int k;
    if (paramBoolean)
    {
      i = 8;
      localView.setVisibility(i);
      TextView localTextView = this.d;
      if (!paramBoolean) {
        break label63;
      }
      j = 0;
      localTextView.setVisibility(j);
      localProgressBar = this.e;
      k = 0;
      if (!paramBoolean) {
        break label70;
      }
    }
    for (;;)
    {
      localProgressBar.setVisibility(k);
      return;
      i = 0;
      break;
      label63:
      j = 8;
      break label30;
      label70:
      k = 8;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.aj
 * JD-Core Version:    0.7.0.1
 */