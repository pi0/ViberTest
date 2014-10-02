package com.viber.voip.messages.ui;

import android.os.Bundle;
import android.view.View;
import com.viber.voip.messages.conversation.h;

public class MessagesLeftMenuFragment
  extends MessagesFragment
{
  public void a(h paramh, boolean paramBoolean)
  {
    if ((paramBoolean) && (paramh != null))
    {
      a(this);
      a(this, paramh, paramBoolean);
    }
  }
  
  protected void e() {}
  
  protected void f() {}
  
  protected void h() {}
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getView().findViewById(2131165393).setVisibility(8);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.MessagesLeftMenuFragment
 * JD-Core Version:    0.7.0.1
 */