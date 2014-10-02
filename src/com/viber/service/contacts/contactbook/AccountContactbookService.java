package com.viber.service.contacts.contactbook;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class AccountContactbookService
  extends Service
{
  private static final Object a = new Object();
  private static a b = null;
  
  public IBinder onBind(Intent paramIntent)
  {
    return b.getSyncAdapterBinder();
  }
  
  public void onCreate()
  {
    synchronized (a)
    {
      if (b == null) {
        b = new a(getApplicationContext(), true);
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.contacts.contactbook.AccountContactbookService
 * JD-Core Version:    0.7.0.1
 */