package com.viber.voip.messages.conversation.a.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.user.UserData;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;

class a
  extends com.viber.voip.ui.b.a<com.viber.voip.messages.conversation.a.a.a, com.viber.voip.messages.conversation.a.a.b.a.b>
  implements View.OnClickListener
{
  private ImageView a;
  private com.viber.voip.messages.conversation.a.b.a b;
  private com.viber.voip.messages.conversation.a.a.a c;
  private w d;
  private x e;
  
  public a(View paramView, com.viber.voip.messages.conversation.a.b.a parama)
  {
    super(paramView);
    this.b = parama;
    Context localContext = paramView.getContext();
    this.d = w.a(localContext);
    this.e = x.a(localContext);
    this.a = ((ImageView)paramView.findViewById(2131165978));
    this.a.setOnClickListener(this);
  }
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama, com.viber.voip.messages.conversation.a.a.b.a.b paramb)
  {
    this.c = parama;
    ImageView localImageView1 = this.a;
    boolean bool1;
    ViewGroup.LayoutParams localLayoutParams;
    ImageView localImageView2;
    if (!this.c.ab())
    {
      bool1 = true;
      localImageView1.setEnabled(bool1);
      localLayoutParams = this.a.getLayoutParams();
      if (!this.c.ab()) {
        break label103;
      }
      this.a.setVisibility(0);
      localImageView2 = this.a;
      if (!this.c.ac()) {
        break label96;
      }
    }
    label96:
    for (int i = 2130838288;; i = 2130838335)
    {
      localImageView2.setImageResource(i);
      return;
      bool1 = false;
      break;
    }
    label103:
    if (this.c.k())
    {
      localLayoutParams.height = 0;
      this.a.setLayoutParams(localLayoutParams);
      this.a.setVisibility(4);
      return;
    }
    localLayoutParams.height = ((int)this.a.getContext().getResources().getDimension(2131362131));
    this.a.setLayoutParams(localLayoutParams);
    this.a.setVisibility(0);
    if (parama.q())
    {
      Uri localUri = UserData.getImage();
      if (localUri != null)
      {
        String str = "file://" + h.a(ViberApplication.getInstance().getApplicationContext(), localUri);
        this.d.a(Uri.parse(str), this.a, this.e);
        return;
      }
      this.a.setImageResource(2130838218);
      return;
    }
    long l1 = parama.aa();
    long l2 = parama.ad();
    boolean bool2 = parama.S();
    w localw = this.d;
    com.viber.voip.messages.a.a locala = com.viber.voip.messages.a.b.d();
    boolean bool3;
    if (!bool2)
    {
      boolean bool4 = l2 < 0L;
      bool3 = false;
      if (!bool4) {}
    }
    else
    {
      bool3 = true;
    }
    localw.a(locala.a(l1, bool3), this.a, this.e);
  }
  
  public void onClick(View paramView)
  {
    if (!this.c.n()) {
      this.b.b(this.c);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.a
 * JD-Core Version:    0.7.0.1
 */