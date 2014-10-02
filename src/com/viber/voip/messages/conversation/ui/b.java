package com.viber.voip.messages.conversation.ui;

import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.viber.voip.ViberApplication;

public class b
{
  private static final String a = b.class.getSimpleName();
  private e b;
  private ViewStub c;
  private f d;
  
  public b(View paramView, f paramf)
  {
    this.c = ((ViewStub)paramView.findViewById(2131165928));
    this.d = paramf;
  }
  
  private void a()
  {
    if (this.b == null) {
      return;
    }
    this.b.a.setVisibility(8);
    this.b.d.setVisibility(8);
    this.b.e.setVisibility(8);
    this.b.b.setVisibility(8);
    this.b.c.setVisibility(8);
  }
  
  private void b()
  {
    if (this.b == null) {
      this.b = new e(this, this.c.inflate(), null);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      b();
      this.b.a.setVisibility(0);
      this.b.a.setOnClickListener(null);
      this.b.d.setVisibility(0);
      this.b.e.setVisibility(0);
      this.b.b.setVisibility(8);
      this.b.c.setVisibility(8);
      this.b.d.setText(2131494077);
      this.b.e.setText(2131494078);
      this.b.e.setOnClickListener(new c(this));
      return;
    }
    a();
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      b();
      ViberApplication.log(3, a, "showNoParticipantsAlert start");
      this.b.a.setVisibility(0);
      this.b.d.setVisibility(0);
      this.b.e.setVisibility(8);
      this.b.b.setVisibility(8);
      this.b.c.setVisibility(0);
      this.b.d.setText(2131494080);
      this.b.e.setText(2131494082);
      this.b.c.setOnClickListener(new d(this));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.b
 * JD-Core Version:    0.7.0.1
 */