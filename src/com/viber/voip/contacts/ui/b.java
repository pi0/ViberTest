package com.viber.voip.contacts.ui;

import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.contacts.b.d;
import com.viber.voip.util.ah;
import com.viber.voip.util.w;

class b
  implements View.OnClickListener
{
  b(ContactDetailsFragment paramContactDetailsFragment, String paramString, d paramd) {}
  
  public void onClick(View paramView)
  {
    FragmentActivity localFragmentActivity = this.c.getActivity();
    c localc = new c(this, localFragmentActivity);
    if (!TextUtils.isEmpty(this.a)) {
      localc.a(this.a);
    }
    w.a(localFragmentActivity, this.b, localc);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.b
 * JD-Core Version:    0.7.0.1
 */