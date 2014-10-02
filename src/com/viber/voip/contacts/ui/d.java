package com.viber.voip.contacts.ui;

import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.util.ah;
import com.viber.voip.util.w;

class d
  implements View.OnClickListener
{
  d(ContactDetailsFragment paramContactDetailsFragment, String paramString, com.viber.voip.contacts.b.d paramd) {}
  
  public void onClick(View paramView)
  {
    FragmentActivity localFragmentActivity = this.c.getActivity();
    e locale = new e(this, localFragmentActivity);
    if (!TextUtils.isEmpty(this.a)) {
      locale.a(this.a);
    }
    w.a(localFragmentActivity, this.b, locale);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.d
 * JD-Core Version:    0.7.0.1
 */