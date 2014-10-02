package com.viber.voip.ui;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.contacts.ui.ak;
import com.viber.voip.messages.conversation.a;
import com.viber.voip.messages.conversation.i;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;

public class n
  extends e
{
  public ImageView a;
  public TextView b;
  public Button c;
  public View d;
  public View e;
  public boolean f;
  public boolean g;
  public ak[] h;
  private w i;
  private x j;
  private p k;
  
  private void a()
  {
    for (int m = 0; m < 4; m++) {
      if ((this.h != null) && (this.h[m] != null)) {
        this.h[m].n.setOnClickListener(new o(this, m));
      }
    }
  }
  
  private void a(int paramInt)
  {
    if (this.b != null) {
      this.b.setVisibility(paramInt);
    }
  }
  
  private ak b(View paramView)
  {
    if (paramView != null)
    {
      ak localak = new ak(paramView);
      if ((localak.n instanceof ao))
      {
        ((ao)localak.n).setShowTriangle(false);
        localak.m.setVisibility(8);
      }
      return localak;
    }
    return null;
  }
  
  public void a(int paramInt, i parami, a parama)
  {
    if (!f()) {
      return;
    }
    int m;
    int n;
    label52:
    int i1;
    label62:
    int i3;
    label84:
    TextView localTextView2;
    Resources localResources;
    if ((!this.f) || ((parami.getCount() == 0) && (!this.g) && (paramInt != 2)))
    {
      m = 1;
      if ((parami.getCount() <= 0) && (paramInt != 2)) {
        break label180;
      }
      n = 1;
      if (parama.getCount() <= 0) {
        break label186;
      }
      i1 = 1;
      if (this.b != null)
      {
        TextView localTextView1 = this.b;
        if (2 != paramInt) {
          break label192;
        }
        i3 = 2131493689;
        localTextView1.setText(i3);
        localTextView2 = this.b;
        localResources = this.b.getContext().getResources();
        if (2 != paramInt) {
          break label199;
        }
      }
    }
    label180:
    label186:
    label192:
    label199:
    for (int i4 = 2131296344;; i4 = 2131296443)
    {
      localTextView2.setTextColor(localResources.getColor(i4));
      if (m == 0) {
        break label206;
      }
      b(true);
      a(8);
      this.c.setVisibility(8);
      this.d.setVisibility(8);
      this.a.setVisibility(8);
      return;
      m = 0;
      break;
      n = 0;
      break label52;
      i1 = 0;
      break label62;
      i3 = 2131493688;
      break label84;
    }
    label206:
    if (n != 0)
    {
      b(false);
      a(0);
      this.c.setVisibility(8);
      this.d.setVisibility(8);
      this.a.setVisibility(0);
      return;
    }
    if (i1 != 0)
    {
      b(false);
      a(0);
      this.c.setVisibility(0);
      this.d.setVisibility(0);
      this.a.setVisibility(8);
      int i2 = 0;
      label291:
      com.viber.voip.contacts.b.e locale;
      if (i2 < 4)
      {
        locale = parama.e(i2);
        if (locale != null) {
          break label331;
        }
        this.h[i2].l.setVisibility(8);
      }
      for (;;)
      {
        i2++;
        break label291;
        break;
        label331:
        this.h[i2].l.setVisibility(0);
        this.h[i2].o.setText(locale.a());
        this.i.a(locale.b(), this.h[i2].n, this.j);
      }
    }
    b(false);
    a(0);
    this.c.setVisibility(0);
    this.d.setVisibility(8);
    this.a.setVisibility(0);
  }
  
  public void a(p paramp)
  {
    this.k = paramp;
  }
  
  public void a(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }
  
  public boolean a(View paramView, View.OnClickListener paramOnClickListener, View.OnTouchListener paramOnTouchListener)
  {
    if (!super.a(paramView)) {
      return false;
    }
    this.a = ((ImageView)paramView.findViewById(2131165437));
    this.b = ((TextView)paramView.findViewById(2131165436));
    this.c = ((Button)paramView.findViewById(2131165439));
    ViewStub localViewStub = (ViewStub)paramView.findViewById(2131165438);
    if (localViewStub != null) {
      localViewStub.inflate();
    }
    this.d = paramView.findViewById(2131165440);
    this.e = paramView.findViewById(16908292);
    this.h = new ak[4];
    this.h[0] = b(paramView.findViewById(2131165442));
    this.h[1] = b(paramView.findViewById(2131165443));
    this.h[2] = b(paramView.findViewById(2131165445));
    this.h[3] = b(paramView.findViewById(2131165446));
    a();
    this.a.setImageResource(2130837653);
    if (this.b != null) {
      this.b.setText(2131493688);
    }
    this.c.setText(2131493705);
    Context localContext = paramView.getContext();
    this.i = w.a(localContext);
    this.j = new z().b(false).b(2130838218, localContext).b();
    this.c.setOnClickListener(paramOnClickListener);
    this.e.setOnTouchListener(paramOnTouchListener);
    return true;
  }
  
  public void c(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.n
 * JD-Core Version:    0.7.0.1
 */