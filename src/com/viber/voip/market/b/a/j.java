package com.viber.voip.market.b.a;

import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.voip.stickers.an;
import com.viber.voip.stickers.b.h;
import com.viber.voip.util.b.ad;
import com.viber.voip.util.b.x;

public class j
{
  protected a a;
  protected final View b;
  protected final ImageView c;
  protected final CheckBox d;
  protected final TextView e;
  protected final View f;
  protected final View g;
  protected final View h;
  
  protected j(View paramView, View.OnClickListener paramOnClickListener)
  {
    this.c = ((ImageView)paramView.findViewById(2131165398));
    this.d = ((CheckBox)paramView.findViewById(2131165896));
    this.e = ((TextView)paramView.findViewById(2131165356));
    this.f = paramView.findViewById(2131165891);
    this.b = paramView;
    this.b.setSelected(true);
    this.g = paramView.findViewById(2131165360);
    this.h = paramView.findViewById(2131165897);
    this.h.setOnClickListener(paramOnClickListener);
  }
  
  private void a(a parama, ad paramad)
  {
    this.a = parama;
    this.e.setText(parama.f());
    this.d.setChecked(parama.c());
    int i = an.m;
    paramad.a(Uri.parse(h.c(parama.e(), i)), this.c, x.a());
  }
  
  public a a()
  {
    return this.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.b.a.j
 * JD-Core Version:    0.7.0.1
 */