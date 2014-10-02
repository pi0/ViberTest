package com.viber.voip.ui;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnCreateContextMenuListener;
import android.view.View.OnTouchListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.viber.voip.registration.dj;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;

public class s
  extends e
{
  private TextView a;
  private View b;
  private com.viber.voip.calls.ui.s c;
  private final boolean d = dj.d();
  private w e;
  private x f;
  
  private void a(View paramView, View.OnClickListener paramOnClickListener, View.OnCreateContextMenuListener paramOnCreateContextMenuListener)
  {
    Context localContext = paramView.getContext().getApplicationContext();
    this.b = paramView.findViewById(2131166106);
    this.b.setVisibility(8);
    this.c = new com.viber.voip.calls.ui.s(this.b, paramOnClickListener);
    this.c.d.setVisibility(8);
    if (this.d) {
      this.c.e.setVisibility(8);
    }
    for (;;)
    {
      this.c.b.setOnClickListener(paramOnClickListener);
      this.c.b.setBackgroundResource(2130837707);
      this.c.i.setVisibility(8);
      this.c.g.setOnCreateContextMenuListener(paramOnCreateContextMenuListener);
      this.e = w.a(localContext);
      this.f = new z().b(2130838218, localContext).a(com.viber.voip.util.b.aa.b).b();
      this.e.a(null, this.c.a, this.f);
      this.c.h.setVisibility(8);
      return;
      this.c.e.setVisibility(0);
      this.c.e.setText("+ " + localContext.getString(2131493985));
      this.c.e.setTextColor(localContext.getResources().getColor(2131296442));
      this.c.e.setCompoundDrawablePadding(0);
      this.c.e.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
    }
  }
  
  public void a(String paramString)
  {
    if (!f()) {
      return;
    }
    if (!TextUtils.isEmpty(paramString)) {}
    for (int i = 1; i != 0; i = 0)
    {
      this.a.setVisibility(8);
      this.b.setVisibility(0);
      b(paramString);
      return;
    }
    this.a.setVisibility(0);
    this.b.setVisibility(8);
  }
  
  public void a(boolean paramBoolean, String paramString)
  {
    if (!f()) {
      return;
    }
    if (paramBoolean)
    {
      b(true);
      this.b.setVisibility(8);
      return;
    }
    b(false);
    a(paramString);
  }
  
  public boolean a(View paramView, View.OnClickListener paramOnClickListener, View.OnCreateContextMenuListener paramOnCreateContextMenuListener, View.OnTouchListener paramOnTouchListener)
  {
    if (!super.a(paramView)) {
      return false;
    }
    this.a = ((TextView)paramView.findViewById(2131165436));
    this.a.setText(2131493690);
    paramView.findViewById(16908292).setOnTouchListener(paramOnTouchListener);
    a(paramView, paramOnClickListener, paramOnCreateContextMenuListener);
    return true;
  }
  
  public void b(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (f()))
    {
      String str = com.viber.voip.phone.aa.a(paramString);
      if ((!"-2".equals(str)) && (!"-1".equals(str)) && (this.c != null)) {
        this.c.c.setText(str);
      }
    }
  }
  
  public void b(boolean paramBoolean)
  {
    super.b(paramBoolean);
    TextView localTextView;
    if (this.a != null)
    {
      localTextView = this.a;
      if (!paramBoolean) {
        break label30;
      }
    }
    label30:
    for (int i = 8;; i = 0)
    {
      localTextView.setVisibility(i);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.s
 * JD-Core Version:    0.7.0.1
 */