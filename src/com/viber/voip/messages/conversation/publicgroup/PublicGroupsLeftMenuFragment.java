package com.viber.voip.messages.conversation.publicgroup;

import android.os.Bundle;
import android.view.View;
import com.viber.voip.messages.conversation.h;

public class PublicGroupsLeftMenuFragment
  extends bf
{
  public void a(h paramh, boolean paramBoolean)
  {
    if ((paramBoolean) && (paramh != null))
    {
      if (!b()) {
        a();
      }
      a(this, paramh, paramBoolean);
    }
  }
  
  protected void f() {}
  
  protected void h() {}
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getView().findViewById(2131165393).setVisibility(8);
  }
  
  public void onSaveInstanceState(Bundle paramBundle) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.PublicGroupsLeftMenuFragment
 * JD-Core Version:    0.7.0.1
 */