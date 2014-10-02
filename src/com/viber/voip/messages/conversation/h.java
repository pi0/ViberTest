package com.viber.voip.messages.conversation;

import android.database.Cursor;
import com.viber.voip.messages.conversation.ui.ConversationData;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.util.bk;
import com.viber.voip.util.gk;

public class h
{
  public static final String[] a = { "conversations._id", "conversations.conversation_type", "conversations.flags", "conversations.name", "conversations.group_id", "conversations.recipient_number", "conversations.last_message_id", "conversations.message_draft", "conversations.share_location", "conversations.smart_notification", "conversations.background_landscape", "conversations.background_portrait", "participants_info.contact_name", "participants_info.display_name", "participants_info.participant_type", "participants_info.contact_id", "participants_info.native_contact_id", "participants_info.number", "conversations.mute_notification", "conversations.read_notification_token", "conversations.media_msg_count" };
  private long b;
  private int c;
  private int d;
  private String e;
  private long f;
  private String g;
  private long h;
  private String i;
  private int j;
  private int k;
  private String l;
  private String m;
  private String n;
  private String o;
  private int p;
  private long q;
  private long r;
  private String s;
  private int t;
  private long u;
  private int v;
  
  public h(Cursor paramCursor)
  {
    a(this, paramCursor);
  }
  
  public h(ConversationEntityImpl paramConversationEntityImpl)
  {
    a(this, paramConversationEntityImpl);
  }
  
  public static void a(h paramh, Cursor paramCursor)
  {
    paramh.b = paramCursor.getLong(0);
    paramh.c = paramCursor.getInt(1);
    paramh.d = paramCursor.getInt(2);
    paramh.e = paramCursor.getString(3);
    paramh.f = paramCursor.getLong(4);
    paramh.g = paramCursor.getString(5);
    paramh.h = paramCursor.getLong(6);
    paramh.i = paramCursor.getString(7);
    paramh.j = paramCursor.getInt(8);
    paramh.k = paramCursor.getInt(9);
    paramh.l = paramCursor.getString(10);
    paramh.m = paramCursor.getString(11);
    paramh.n = paramCursor.getString(12);
    paramh.o = paramCursor.getString(13);
    paramh.p = paramCursor.getInt(14);
    paramh.q = paramCursor.getLong(15);
    paramh.r = paramCursor.getLong(16);
    paramh.s = paramCursor.getString(17);
    paramh.t = paramCursor.getInt(18);
    paramh.u = paramCursor.getLong(19);
    paramh.v = paramCursor.getInt(20);
  }
  
  public static void a(h paramh, ConversationEntityImpl paramConversationEntityImpl)
  {
    paramh.b = paramConversationEntityImpl.getId();
    paramh.c = paramConversationEntityImpl.getConversationType();
    paramh.d = paramConversationEntityImpl.getFlags();
    paramh.e = paramConversationEntityImpl.getGroupName();
    paramh.f = paramConversationEntityImpl.getGroupId();
    paramh.g = paramConversationEntityImpl.getNumber();
    paramh.h = paramConversationEntityImpl.getLastMessageId();
    paramh.i = paramConversationEntityImpl.getMessageDraft();
    paramh.j = paramConversationEntityImpl.getShareLocation();
    paramh.k = paramConversationEntityImpl.getSmartNotifications();
    paramh.l = paramConversationEntityImpl.getBackgroundLandscape();
    paramh.m = paramConversationEntityImpl.getBackgroundPortrait();
    paramh.t = paramConversationEntityImpl.getMuteNotifications();
    paramh.u = paramConversationEntityImpl.getReadNotificationToken();
    paramh.v = paramConversationEntityImpl.getMediaMessageCount();
    paramh.p = 1;
    paramh.o = "";
  }
  
  public long a()
  {
    return this.b;
  }
  
  public void a(ConversationData paramConversationData)
  {
    this.n = paramConversationData.h;
    this.q = paramConversationData.s;
    this.r = paramConversationData.t;
    this.s = paramConversationData.k;
  }
  
  public int b()
  {
    return this.c;
  }
  
  public String c()
  {
    return this.e;
  }
  
  public long d()
  {
    return this.f;
  }
  
  public String e()
  {
    return this.g;
  }
  
  public String f()
  {
    return this.l;
  }
  
  public String g()
  {
    return this.m;
  }
  
  public String h()
  {
    return this.n;
  }
  
  public String i()
  {
    return this.o;
  }
  
  public long j()
  {
    return this.q;
  }
  
  public String k()
  {
    return this.i;
  }
  
  public boolean l()
  {
    return this.c != 0;
  }
  
  public int m()
  {
    return this.v;
  }
  
  public boolean n()
  {
    return bk.a(this.d, new int[] { 0 });
  }
  
  public boolean o()
  {
    return this.t == 1;
  }
  
  public String p()
  {
    return gk.a(this);
  }
  
  public String q()
  {
    return this.s;
  }
  
  public boolean r()
  {
    return this.j == 1;
  }
  
  public boolean s()
  {
    return this.k == 1;
  }
  
  public boolean t()
  {
    return (this.c == 2) || (this.c == 3);
  }
  
  public String toString()
  {
    return "ConversationItemLoaderEntity [id=" + this.b + ", conversationType=" + this.c + ", flags=" + this.d + ", groupName=" + this.e + ", groupId=" + this.f + ", number=" + this.g + ", lastMessageId=" + this.h + ", messageDraft=" + this.i + ", shareLocation=" + this.j + ", smartNotification=" + this.k + ", backgroundLandscape=" + this.l + ", backgroundPortrait=" + this.m + ", contactName=" + this.n + ", displayName=" + this.o + ", participantType=" + this.p + ", contactId=" + this.q + ", nativeContactId=" + this.r + ", participantNumber=" + this.s + ", muteNotifications=" + this.t + ", readNotificationToken=" + this.u + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.h
 * JD-Core Version:    0.7.0.1
 */