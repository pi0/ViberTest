package com.viber.voip.contacts.ui;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import com.viber.voip.block.n;
import com.viber.voip.contacts.b.e;
import com.viber.voip.messages.j;

class am
  implements n
{
  am(al paramal, e parame) {}
  
  public void a(String paramString)
  {
    if (this.b.getActivity() != null)
    {
      Intent localIntent = j.a(paramString, 0L, 0L, this.a.a(), null);
      this.b.startActivity(localIntent);
      this.b.getActivity().finish();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.am
 * JD-Core Version:    0.7.0.1
 */