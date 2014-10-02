package com.viber.voip.registration;

import android.widget.ListView;
import java.util.List;

class db
  implements Runnable
{
  db(da paramda, List paramList) {}
  
  public void run()
  {
    dc localdc = (dc)this.b.a.getListView().getAdapter();
    if (localdc != null)
    {
      localdc.a(this.a);
      localdc.notifyDataSetChanged();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.db
 * JD-Core Version:    0.7.0.1
 */