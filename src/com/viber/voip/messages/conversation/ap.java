package com.viber.voip.messages.conversation;

import android.content.Context;
import android.database.CharArrayBuffer;
import android.database.Cursor;
import android.support.v4.app.LoaderManager;
import com.viber.provider.b;
import com.viber.voip.messages.controller.cx;
import com.viber.voip.messages.controller.dh;
import com.viber.voip.messages.i;

public class ap
  extends b
{
  private final i h;
  private long i;
  private dh j = new aq(this);
  
  public ap(Context paramContext, boolean paramBoolean, LoaderManager paramLoaderManager, i parami, com.viber.provider.e parame)
  {
    this(paramContext, true, paramBoolean, paramLoaderManager, parami, parame);
  }
  
  public ap(Context paramContext, boolean paramBoolean1, boolean paramBoolean2, LoaderManager paramLoaderManager, i parami, com.viber.provider.e parame)
  {
    super(3, com.viber.provider.messages.b.e.a, paramContext, paramLoaderManager, parame, 0);
    this.h = parami;
    a(ar.a);
    String str;
    if (paramBoolean2) {
      if (paramBoolean1) {
        str = "participants.conversation_id=? AND participants.active=0";
      }
    }
    for (;;)
    {
      a(str);
      b("participant_type ASC, display_name ASC, number ASC");
      return;
      str = "participants.conversation_id=? AND participants.active=0 AND participant_type<>0";
      continue;
      if (paramBoolean1) {
        str = "participants.conversation_id=?";
      } else {
        str = "participants.conversation_id=? AND participant_type<>0";
      }
    }
  }
  
  public ap(Context paramContext, boolean paramBoolean1, boolean paramBoolean2, i parami, com.viber.provider.e parame)
  {
    super(12, com.viber.provider.messages.b.e.a, paramContext, null, parame, 0);
    this.h = parami;
    a(ar.a);
    String str;
    if (paramBoolean2) {
      if (paramBoolean1) {
        str = "participants.conversation_id=? AND participants.active=0";
      }
    }
    for (;;)
    {
      a(str);
      b("participant_type ASC, display_name ASC, number ASC");
      return;
      str = "participants.conversation_id=? AND participants.active=0 AND participant_type<>0";
      continue;
      if (paramBoolean1) {
        str = "participants.conversation_id=?";
      } else {
        str = "participants.conversation_id=? AND participant_type<>0";
      }
    }
  }
  
  public void a(int paramInt, CharArrayBuffer paramCharArrayBuffer)
  {
    if (c(paramInt))
    {
      this.e.copyStringToBuffer(5, paramCharArrayBuffer);
      if (paramCharArrayBuffer.sizeCopied == 0) {
        this.e.copyStringToBuffer(8, paramCharArrayBuffer);
      }
    }
  }
  
  public boolean a(long paramLong)
  {
    if (this.i == paramLong) {
      return super.a();
    }
    return false;
  }
  
  public void b(long paramLong)
  {
    this.i = paramLong;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(this.i);
    b(arrayOfString);
  }
  
  public ar e(int paramInt)
  {
    if (c(paramInt)) {
      return new ar(this.e);
    }
    return null;
  }
  
  public void m()
  {
    this.h.b().b(this.j);
  }
  
  public void n()
  {
    this.h.b().a(this.j);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ap
 * JD-Core Version:    0.7.0.1
 */