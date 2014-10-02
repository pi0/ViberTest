package com.viber.voip.contacts.a;

import android.view.LayoutInflater;
import android.view.View;
import com.viber.voip.messages.conversation.a.a;
import com.viber.voip.messages.conversation.a.c;
import com.viber.voip.messages.conversation.a.d;
import com.viber.voip.ui.ak;

public class j
  extends a
  implements c
{
  private static final String a = j.class.getSimpleName();
  
  public j(LayoutInflater paramLayoutInflater)
  {
    super(paramLayoutInflater);
    a(0, 2130903066, this);
    a(1, 2130903066, this);
  }
  
  public View a(int paramInt)
  {
    System.currentTimeMillis();
    return b(paramInt).a();
  }
  
  public Object a(View paramView, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new RuntimeException("INVALID VIEW TYPE: " + paramInt);
    }
    paramView.setTag(2131165340, new ak());
    return new l(paramView, paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.a.j
 * JD-Core Version:    0.7.0.1
 */