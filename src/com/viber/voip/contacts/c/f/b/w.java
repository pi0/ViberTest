package com.viber.voip.contacts.c.f.b;

import android.annotation.SuppressLint;
import com.viber.jni.CAddressBookInfo;
import com.viber.voip.contacts.b.b.d;
import com.viber.voip.messages.orm.manager.AsyncEntityManager.FillCursorCompleteCallback;
import com.viber.voip.messages.orm.manager.EntityManager;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

class w
  implements AsyncEntityManager.FillCursorCompleteCallback
{
  w(u paramu, ad paramad) {}
  
  @SuppressLint({"UseSparseArrays"})
  public void onDataReady(EntityManager paramEntityManager, int paramInt)
  {
    HashMap localHashMap = new HashMap();
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; i < paramEntityManager.getCount(); i++)
    {
      d locald = (d)paramEntityManager.getEntity(i);
      if (locald != null)
      {
        int j = locald.i();
        if (localHashMap.put(Integer.valueOf(j), new CAddressBookInfo(locald.getId(), locald.a(), (String[])locald.j().toArray(new String[0]), locald.s())) == null)
        {
          if (localStringBuilder.length() > 0) {
            localStringBuilder.append(',');
          }
          localStringBuilder.append(j);
        }
      }
    }
    paramEntityManager.closeCursor();
    this.a.a(localHashMap.size(), localStringBuilder.toString(), localHashMap);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.w
 * JD-Core Version:    0.7.0.1
 */