package com.viber.voip.messages.conversation;

import android.content.Context;
import android.support.v4.app.LoaderManager;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.registration.cp;

public class a
  extends com.viber.provider.b
{
  private static final Creator h = com.viber.voip.contacts.b.b.e.c;
  private final com.viber.voip.contacts.c.d.b i;
  private com.viber.voip.contacts.c.d.e j = new b(this);
  
  public a(Context paramContext, LoaderManager paramLoaderManager, com.viber.voip.contacts.c.d.b paramb, com.viber.provider.e parame)
  {
    super(1, h.getContentUri(), paramContext, paramLoaderManager, parame, 0);
    this.i = paramb;
    a(h.getProjections());
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ((ViberApplication)paramContext.getApplicationContext()).getRegistrationValues().f();
    b(arrayOfString);
    a("phonebookcontact.viber=1 AND phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.data2<>? AND phonebookdata.data2 IN (SELECT vibernumbers.canonized_number FROM  vibernumbers))");
    b("sms_count DESC, phonebookcontact.low_display_name ASC, phonebookcontact._id DESC");
    d(4);
  }
  
  public com.viber.voip.contacts.b.e e(int paramInt)
  {
    if (c(paramInt)) {
      return (com.viber.voip.contacts.b.e)h.createInstance(this.e);
    }
    return null;
  }
  
  public void m()
  {
    this.i.b(this.j);
  }
  
  public void n()
  {
    this.i.a(this.j);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a
 * JD-Core Version:    0.7.0.1
 */