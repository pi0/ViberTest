package com.viber.voip.calls;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import com.viber.voip.calls.entities.impl.CallEntityImpl;
import com.viber.voip.calls.entities.impl.g;
import com.viber.voip.contacts.c.e.b;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.manager.AsyncEntityManager.FillCursorCompleteCallback;
import com.viber.voip.messages.orm.manager.EntityManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

class i
  implements AsyncEntityManager.FillCursorCompleteCallback
{
  i(a parama, Set paramSet, o paramo) {}
  
  public void onDataReady(EntityManager paramEntityManager, int paramInt)
  {
    ArrayList localArrayList = new ArrayList(paramEntityManager.getCount());
    for (int i = 0; i < paramEntityManager.getCount(); i++)
    {
      g localg = (g)paramEntityManager.getEntity(i);
      CallEntityImpl localCallEntityImpl = new CallEntityImpl(a.b(this.c), false, 0, true, localg);
      if ((this.a != null) && (this.a.contains(Long.valueOf(localCallEntityImpl.e()))))
      {
        localCallEntityImpl.b(true);
        this.a.remove(Long.valueOf(localCallEntityImpl.e()));
      }
      localArrayList.add(ContentProviderOperation.newInsert(localCallEntityImpl.getCreator().getContentUri()).withValues(localCallEntityImpl.getContentValues()).build());
    }
    paramEntityManager.closeCursor();
    if (localArrayList.size() > 0) {
      a.a(this.c).a(0, "com.viber.provider.vibercontacts", null, localArrayList, new j(this));
    }
    while (this.b == null) {
      return;
    }
    this.b.a(false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.i
 * JD-Core Version:    0.7.0.1
 */