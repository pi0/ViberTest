package com.viber.voip.messages.conversation;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.app.LoaderManager;
import com.viber.provider.e;
import com.viber.provider.messages.b.f;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.GroupController;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.util.bk;
import java.util.HashMap;
import java.util.Map;

public class c
  extends v<an>
{
  private Map<Integer, Integer> k = new HashMap();
  
  public c(Context paramContext, LoaderManager paramLoaderManager, i parami, e parame)
  {
    super(paramContext, f.a, ag.a, paramLoaderManager, parami, parame);
    b("message_global_id DESC, date DESC");
  }
  
  public c(Context paramContext, i parami, e parame)
  {
    super(paramContext, f.a, ag.a, parami, parame);
    b("message_global_id DESC, date DESC");
  }
  
  private int a(int paramInt1, int paramInt2)
  {
    int i = 50 * (paramInt1 / 50);
    if (paramInt1 > i)
    {
      if (i + 50 < paramInt2) {
        paramInt2 = i + 50;
      }
      return paramInt2;
    }
    return i;
  }
  
  private void a(long paramLong, int paramInt)
  {
    if ((paramInt > 0) && (!this.k.containsValue(Integer.valueOf(paramInt))))
    {
      int i = (int)System.currentTimeMillis() / 1000;
      this.k.put(Integer.valueOf(i), Integer.valueOf(paramInt));
      ViberApplication.getInstance().getMessagesManager().d().a(i, paramLong, paramInt);
    }
  }
  
  protected ag a(Cursor paramCursor)
  {
    return new ag(paramCursor);
  }
  
  protected an a(MessageEntityImpl paramMessageEntityImpl)
  {
    return new ag(paramMessageEntityImpl);
  }
  
  protected void k()
  {
    super.k();
    int i;
    long l;
    int j;
    int n;
    if ((j()) && (this.e.moveToFirst())) {
      if (bk.a(this.e.getInt(35), new int[] { 4 }))
      {
        i = this.e.getInt(ag.b);
        l = this.e.getLong(36);
        this.e.moveToLast();
        j = this.e.getInt(ag.b);
        int m = this.e.getCount();
        n = 0;
        if (m >= 50) {
          break label133;
        }
        n = 0;
        if (j <= 1) {
          break label133;
        }
        a(l, i);
      }
    }
    return;
    label133:
    int i1;
    int i2;
    if ((this.e.moveToPrevious()) && (n <= 50))
    {
      i1 = this.e.getInt(ag.b);
      i2 = i1 - j;
      if (i2 <= 50) {
        break label205;
      }
      j = a(j + 50, i);
      a(l, j);
    }
    for (;;)
    {
      n++;
      break label133;
      break;
      label205:
      if (i2 > 1) {
        a(l, a(i1, i));
      }
      j = i1;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.c
 * JD-Core Version:    0.7.0.1
 */