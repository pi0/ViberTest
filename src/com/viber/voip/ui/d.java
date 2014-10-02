package com.viber.voip.ui;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.viber.voip.messages.extras.image.h;

public class d
  implements x
{
  private int b = -1;
  private View c;
  private TextView d;
  private ProgressBar e;
  private int f;
  
  public d(ContactsListView paramContactsListView)
  {
    this.c = View.inflate(paramContactsListView.getContext(), 2130903313, null);
    this.d = ((TextView)this.c.findViewById(2131166097));
    this.e = ((ProgressBar)this.c.findViewById(2131166096));
    this.f = h.a(70.0F);
  }
  
  public View a()
  {
    return this.c;
  }
  
  public void a(int paramInt)
  {
    if (this.b == paramInt) {
      return;
    }
    this.b = paramInt;
    int i;
    label46:
    ProgressBar localProgressBar;
    int j;
    switch (paramInt)
    {
    default: 
      i = 0;
      localProgressBar = this.e;
      j = 0;
      if (paramInt != 1) {
        break;
      }
    }
    for (;;)
    {
      localProgressBar.setVisibility(j);
      if (i == 0) {
        break;
      }
      this.d.setText(i);
      return;
      i = 2131494171;
      break label46;
      i = 2131494168;
      break label46;
      i = 2131494169;
      break label46;
      i = 2131494170;
      break label46;
      j = 8;
    }
  }
  
  public int b()
  {
    return this.f;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.d
 * JD-Core Version:    0.7.0.1
 */