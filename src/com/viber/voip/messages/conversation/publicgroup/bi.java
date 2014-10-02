package com.viber.voip.messages.conversation.publicgroup;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.viber.jni.PublicGroupInfo;
import com.viber.voip.ui.e;
import it.sephiroth.android.library.widget.HListView;
import it.sephiroth.android.library.widget.y;
import java.util.ArrayList;

public class bi
  extends e
{
  public TextView a;
  public TextView b;
  public Button c;
  public View d;
  public View e;
  public HListView f;
  public View g;
  
  public void a()
  {
    if (!f()) {
      return;
    }
    b(true);
    this.c.setVisibility(8);
    this.a.setVisibility(8);
    this.b.setVisibility(8);
    this.d.setVisibility(8);
    this.e.setVisibility(8);
  }
  
  public void a(ArrayList<PublicGroupInfo> paramArrayList)
  {
    if (!f()) {
      return;
    }
    a(false);
    if (this.f.getAdapter() == null)
    {
      bl localbl = new bl(this.a.getContext(), paramArrayList);
      this.f.setAdapter(localbl);
      return;
    }
    ((bl)this.f.getAdapter()).a(paramArrayList);
  }
  
  public void a(boolean paramBoolean)
  {
    if (!f()) {
      return;
    }
    b(false);
    Button localButton = this.c;
    int i;
    int j;
    label86:
    int k;
    label107:
    TextView localTextView2;
    if (paramBoolean)
    {
      i = 8;
      localButton.setVisibility(i);
      this.c.setText(this.c.getContext().getString(2131494548));
      this.a.setTextSize(0, this.c.getContext().getResources().getDimension(2131362298));
      TextView localTextView1 = this.b;
      if (!paramBoolean) {
        break label178;
      }
      j = 8;
      localTextView1.setVisibility(j);
      HListView localHListView = this.f;
      if (!paramBoolean) {
        break label184;
      }
      k = 8;
      localHListView.setVisibility(k);
      this.a.setVisibility(0);
      localTextView2 = this.a;
      if (!paramBoolean) {
        break label190;
      }
    }
    label178:
    label184:
    label190:
    for (int m = 2131494513;; m = 2131494545)
    {
      localTextView2.setText(m);
      this.d.setVisibility(8);
      this.e.setVisibility(8);
      this.f.setEmptyView(this.g);
      return;
      i = 0;
      break;
      j = 0;
      break label86;
      k = 0;
      break label107;
    }
  }
  
  public boolean a(View paramView, View.OnClickListener paramOnClickListener, y paramy)
  {
    if (!super.a(paramView)) {
      return false;
    }
    this.c = ((Button)paramView.findViewById(2131165439));
    this.c.setOnClickListener(paramOnClickListener);
    this.a = ((TextView)paramView.findViewById(2131165447));
    this.b = ((TextView)paramView.findViewById(2131165448));
    this.g = paramView.findViewById(2131165450);
    this.f = ((HListView)paramView.findViewById(2131165449));
    this.f.setOnItemClickListener(paramy);
    this.f.setNeedInterceptEvents(true);
    this.d = paramView.findViewById(2131165451);
    this.e = paramView.findViewById(2131165452);
    return true;
  }
  
  public void b()
  {
    if (!f()) {
      return;
    }
    this.d.setVisibility(0);
    this.e.setVisibility(0);
    this.g.setVisibility(8);
    this.f.setVisibility(8);
    this.c.setText(this.c.getContext().getString(2131493683));
    this.a.setTextSize(0, this.c.getContext().getResources().getDimension(2131362299));
  }
  
  public boolean c()
  {
    return (this.d != null) && (this.d.getVisibility() == 0);
  }
  
  public ArrayList<PublicGroupInfo> d()
  {
    if ((this.f != null) && (this.f.getAdapter() != null)) {
      return ((bl)this.f.getAdapter()).a();
    }
    return null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.bi
 * JD-Core Version:    0.7.0.1
 */