package com.viber.voip.messages.conversation;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.app.LoaderManager;
import com.viber.voip.i.a;
import com.viber.voip.messages.controller.cx;
import com.viber.voip.messages.controller.db;
import com.viber.voip.messages.controller.df;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import java.util.HashSet;
import java.util.Set;

public class as
  extends ai<an>
{
  private final Set<Long> h = new HashSet();
  private final av k;
  private db l = new at(this);
  private df m = new au(this);
  
  public as(Context paramContext, LoaderManager paramLoaderManager, i parami, av paramav)
  {
    super(paramContext, 4, paramLoaderManager, parami, paramav);
    this.k = paramav;
    m();
    b("date ASC, token ASC");
  }
  
  private void m()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = a.c(this.h);
    a(String.format("messages.conversation_id=? AND deleted=0 AND messages.extra_mime <>? AND messages.extra_mime <>? AND (messages.read >0 OR messages._id IN (%s))", arrayOfObject));
  }
  
  protected an a(MessageEntityImpl paramMessageEntityImpl)
  {
    return new an(paramMessageEntityImpl);
  }
  
  public void a(long paramLong)
  {
    this.i = paramLong;
    String[] arrayOfString = new String[3];
    arrayOfString[0] = String.valueOf(this.i);
    arrayOfString[1] = "notif";
    arrayOfString[2] = "call";
    b(arrayOfString);
  }
  
  protected an b(Cursor paramCursor)
  {
    return new an(paramCursor);
  }
  
  protected void k()
  {
    int i = 0;
    super.k();
    int j = 0;
    while (i < getCount())
    {
      if (this.h.add(Long.valueOf(a_(i)))) {
        j = 1;
      }
      i++;
    }
    if (j != 0) {
      m();
    }
  }
  
  public void u()
  {
    super.u();
    this.j.b().b(this.l);
    this.j.b().b(this.m);
  }
  
  public void v()
  {
    super.v();
    this.j.b().a(this.l);
    this.j.b().a(this.m);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.as
 * JD-Core Version:    0.7.0.1
 */