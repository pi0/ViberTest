package com.viber.voip.contacts.ui;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.block.i;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class bt
  implements DialogInterface.OnClickListener
{
  bt(Map paramMap, Activity paramActivity, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = this.a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((Boolean)localEntry.getValue()).booleanValue()) {
        localHashSet.add(localEntry.getKey());
      }
    }
    if (localHashSet.size() > 0) {
      i.a(this.b, this.c, localHashSet, null, false);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.bt
 * JD-Core Version:    0.7.0.1
 */