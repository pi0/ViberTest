package com.viber.voip.contacts.c.f.a.a;

import android.content.Context;
import android.os.Handler;
import android.provider.ContactsContract.Contacts;
import com.viber.voip.contacts.b.b.a.c;
import com.viber.voip.contacts.b.b.a.e;
import com.viber.voip.contacts.b.b.a.g;
import com.viber.voip.contacts.c.e.b;
import com.viber.voip.messages.orm.manager.AsyncEntityManager;
import com.viber.voip.messages.orm.manager.AsyncEntityManager.FillCursorCompleteCallback;
import com.viber.voip.messages.orm.manager.EntityManager;

public class ab
  implements AsyncEntityManager.FillCursorCompleteCallback
{
  public static final String a = ab.class.getSimpleName();
  private static final String b = "mimetype IN (" + l.a + ")";
  private static final String c = "display_name IS NOT NULL AND " + b + " AND " + "contact_id>=?" + " AND " + "account_type<> 'com.viber.voip.account'";
  private static final String d = c + " AND " + "(((contact_id|| '_' ||raw_contact_id|| '_' ||version|| '_' || starred) NOT IN (%s)) OR lookup NOT IN (%s))";
  private AsyncEntityManager e;
  private AsyncEntityManager f;
  private AsyncEntityManager g;
  private Handler h;
  private aj i;
  private ae j;
  private b k;
  
  public ab(Context paramContext, aj paramaj, Handler paramHandler)
  {
    this.k = b.a(paramContext);
    this.e = new AsyncEntityManager(e.a, this);
    this.f = new AsyncEntityManager(g.a, this);
    this.g = new AsyncEntityManager(c.a, this);
    this.h = paramHandler;
    this.i = paramaj;
  }
  
  private void a(boolean paramBoolean, ae paramae, long paramLong, int paramInt)
  {
    this.j = paramae;
    AsyncEntityManager localAsyncEntityManager = this.e;
    StringBuilder localStringBuilder1 = new StringBuilder().append("contact_id ASC, raw_contact_id ASC");
    String str1;
    String str2;
    StringBuilder localStringBuilder2;
    if (paramInt != -1)
    {
      str1 = " LIMIT " + paramInt;
      str2 = str1;
      localStringBuilder2 = new StringBuilder();
      if (!paramBoolean) {
        break label169;
      }
    }
    label169:
    for (String str3 = "";; str3 = "in_visible_group=1 AND ")
    {
      StringBuilder localStringBuilder3 = localStringBuilder2.append(str3);
      String str4 = d;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramae.a;
      arrayOfObject[1] = paramae.b;
      String str5 = String.format(str4, arrayOfObject);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      localAsyncEntityManager.fillCursor(1, str2, str5, arrayOfString);
      return;
      str1 = "";
      break;
    }
  }
  
  public void a(ae paramae)
  {
    this.j = paramae;
    AsyncEntityManager localAsyncEntityManager = this.f;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramae.d;
    localAsyncEntityManager.fillCursor(2, null, String.format("_id IN (%s)", arrayOfObject), new String[0]);
  }
  
  public void a(ak paramak)
  {
    this.k.a(1, null, ContactsContract.Contacts.CONTENT_URI, new String[] { "_id" }, "in_visible_group=1", null, null, new ac(this, paramak), false, false);
  }
  
  public void a(boolean paramBoolean, ae paramae, long paramLong)
  {
    a(paramBoolean, paramae, paramLong, 800);
  }
  
  public void b(ae paramae)
  {
    this.j = paramae;
    AsyncEntityManager localAsyncEntityManager = this.f;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramae.d;
    localAsyncEntityManager.fillCursor(3, null, String.format("_id IN (%s) AND deleted=1", arrayOfObject), new String[0]);
  }
  
  public void c(ae paramae)
  {
    this.j = paramae;
    AsyncEntityManager localAsyncEntityManager = this.g;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramae.c;
    localAsyncEntityManager.fillCursor(4, null, String.format("_id IN (%s) AND in_visible_group=0", arrayOfObject), new String[0]);
  }
  
  public void onDataReady(EntityManager paramEntityManager, int paramInt)
  {
    if (this.i != null)
    {
      this.h.post(new ad(this, paramInt, paramEntityManager));
      return;
    }
    paramEntityManager.closeCursor();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.ab
 * JD-Core Version:    0.7.0.1
 */