package com.viber.voip.messages.conversation.a.a.a;

import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import com.viber.voip.messages.conversation.a.a.b.a.b;

class i
  extends com.viber.voip.ui.b.a<com.viber.voip.messages.conversation.a.a.a, b>
  implements CompoundButton.OnCheckedChangeListener
{
  private ImageView a;
  private CheckBox b;
  private View c;
  private CompoundButton.OnCheckedChangeListener d;
  
  public i(View paramView, k paramk, CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    super(paramView);
    this.d = paramOnCheckedChangeListener;
    this.a = ((ImageView)paramView.findViewById(2131165983));
    this.b = ((CheckBox)paramView.findViewById(2131165397));
    this.b.setTag(paramk);
    this.b.setOnCheckedChangeListener(this);
    this.c = paramView.findViewById(2131165985);
  }
  
  public void a(com.viber.voip.messages.conversation.a.a.a parama, b paramb)
  {
    int k;
    int i;
    label58:
    View localView;
    int j;
    if (this.a != null)
    {
      ImageView localImageView = this.a;
      if ((parama.p()) && (parama.G()))
      {
        k = 0;
        localImageView.setVisibility(k);
      }
    }
    else
    {
      CheckBox localCheckBox = this.b;
      if (!parama.n()) {
        break label132;
      }
      i = 0;
      localCheckBox.setVisibility(i);
      this.b.setButtonDrawable(paramb.f());
      this.b.setChecked(parama.o());
      if (this.c != null)
      {
        localView = this.c;
        boolean bool = parama.n();
        j = 0;
        if (!bool) {
          break label139;
        }
      }
    }
    for (;;)
    {
      localView.setVisibility(j);
      return;
      k = 8;
      break;
      label132:
      i = 8;
      break label58;
      label139:
      j = 8;
    }
  }
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (this.d != null) {
      this.d.onCheckedChanged(paramCompoundButton, paramBoolean);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.a.i
 * JD-Core Version:    0.7.0.1
 */