package com.viber.voip;

import android.os.Handler;
import com.viber.voip.contacts.b.b;
import com.viber.voip.contacts.c.d.i;
import java.util.Iterator;
import java.util.Set;

class q
  implements i
{
  q(BaseAddFriendActivity paramBaseAddFriendActivity, String paramString) {}
  
  public void a(String paramString, Set<b> paramSet)
  {
    BaseAddFriendActivity.d(this.b);
    if (BaseAddFriendActivity.c(this.b)) {}
    b localb;
    do
    {
      Iterator localIterator;
      do
      {
        return;
        BaseAddFriendActivity.e(this.b).removeCallbacks(BaseAddFriendActivity.b(this.b));
        localIterator = paramSet.iterator();
      } while (!localIterator.hasNext());
      localb = (b)localIterator.next();
    } while (BaseAddFriendActivity.a(this.b) == null);
    BaseAddFriendActivity.a(this.b).a(this.a, new BaseAddFriendActivity.ContactDetails(localb));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.q
 * JD-Core Version:    0.7.0.1
 */