package com.viber.voip.messages.conversation;

import android.database.Cursor;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

public class ag
  extends an
{
  public static final String[] a;
  public static final int b = an.e.length;
  public static final int c = 1 + an.e.length;
  public static final int d = 2 + an.e.length;
  private int f;
  private int g;
  private int h;
  
  static
  {
    a = new String[3 + an.e.length];
    a[b] = "messages.message_global_id";
    a[c] = "public_messages_extras.liked";
    a[d] = "public_messages_extras.likes_count";
    System.arraycopy(an.e, 0, a, 0, an.e.length);
  }
  
  public ag(Cursor paramCursor)
  {
    super(paramCursor);
    a(this, paramCursor);
  }
  
  public ag(MessageEntityImpl paramMessageEntityImpl)
  {
    super(paramMessageEntityImpl);
    this.f = 0;
    this.g = 0;
    this.h = 0;
  }
  
  private static void a(ag paramag, Cursor paramCursor)
  {
    paramag.f = paramCursor.getInt(b);
    paramag.g = paramCursor.getInt(c);
    paramag.h = paramCursor.getInt(d);
  }
  
  public int i()
  {
    return this.f;
  }
  
  public String toString()
  {
    return "ExtraMessageLoaderEntity{messageGlobalId=" + this.f + ", liked=" + this.g + ", likesCount=" + this.h + "} \n" + super.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ag
 * JD-Core Version:    0.7.0.1
 */