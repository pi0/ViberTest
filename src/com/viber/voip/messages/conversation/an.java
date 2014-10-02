package com.viber.voip.messages.conversation;

import android.database.Cursor;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.util.bk;
import com.viber.voip.util.gk;

public class an
  implements com.viber.voip.messages.adapters.g
{
  private static final com.viber.voip.messages.g a = new com.viber.voip.messages.g();
  public static final String[] e = { "messages._id", "messages.address", "messages.date", "messages.read", "messages.status", "messages.type", "messages.body", "messages.opened", "messages.description", "messages.location_lat", "messages.location_lng", "messages.deleted", "messages.count", "messages.thumbnail_x", "messages.thumbnail_y", "messages.extra_uri", "messages.extra_mime", "messages.extra_duration", "messages.extra_status", "messages.fb_status", "messages.twitter_status", "messages.token", "messages.seq", "messages.conversation_type", "messages.extra_upload_id", "participants_info._id", "participants_info.contact_name", "participants_info.display_name", "participants_info.participant_type", "participants_info.contact_id", "participants_info.native_contact_id", "messages.extra_download_id", "messages.extra_bucket_name", "messages.conversation_id", "messages.flag", "messages.extra_flags", "messages.group_id" };
  private long A;
  private int B;
  private int C;
  private int D;
  private long E;
  private String F;
  private String G;
  private int H;
  private long I;
  private long J;
  private String K;
  private String L;
  private long M;
  private String N;
  private String O;
  private boolean P;
  private long b;
  private long c;
  private String d;
  private long f;
  private int g;
  private int h;
  private String i;
  private int j;
  private String k;
  private int l;
  private int m;
  private int n;
  private int o;
  private int p;
  private int q;
  private int r;
  private String s;
  private String t;
  private long u;
  private int v;
  private long w;
  private int x;
  private int y;
  private int z;
  
  public an(Cursor paramCursor)
  {
    this.P = false;
    a(this, paramCursor);
  }
  
  public an(MessageEntityImpl paramMessageEntityImpl)
  {
    this.P = i1;
    if (paramMessageEntityImpl.isOutgoing()) {
      i1 = 0;
    }
    a(this, i1, paramMessageEntityImpl);
  }
  
  public static void a(an paraman, int paramInt, MessageEntityImpl paramMessageEntityImpl)
  {
    paraman.b = paramMessageEntityImpl.getId();
    paraman.d = paramMessageEntityImpl.getRecipientNumber();
    paraman.f = paramMessageEntityImpl.getDate();
    paraman.g = paramMessageEntityImpl.getStatus();
    paraman.h = paramMessageEntityImpl.getType();
    paraman.i = paramMessageEntityImpl.getBody();
    paraman.j = paramMessageEntityImpl.getOpened();
    paraman.k = paramMessageEntityImpl.getDescription();
    paraman.l = paramMessageEntityImpl.getLat();
    paraman.m = paramMessageEntityImpl.getLat();
    paraman.n = paramMessageEntityImpl.getDeleted();
    paraman.o = paramMessageEntityImpl.getCount();
    paraman.p = paramMessageEntityImpl.getThumbnailWidth();
    paraman.q = paramMessageEntityImpl.getThumbnailHeight();
    paraman.s = paramMessageEntityImpl.getMediaUri();
    paraman.t = paramMessageEntityImpl.getMimeType();
    paraman.w = paramMessageEntityImpl.getObjectId();
    paraman.u = paramMessageEntityImpl.getDuration();
    paraman.v = paramMessageEntityImpl.getExtraStatus();
    paraman.x = paramMessageEntityImpl.getFbStatus();
    paraman.y = paramMessageEntityImpl.getTwitterStatus();
    paraman.B = paramMessageEntityImpl.getMessageSeq();
    paraman.A = paramMessageEntityImpl.getMessageToken();
    paraman.z = paramMessageEntityImpl.getConversationType();
    paraman.E = 0L;
    paraman.F = "";
    paraman.G = "";
    paraman.H = paramInt;
    paraman.I = 0L;
    paraman.J = 0L;
    paraman.K = paramMessageEntityImpl.getDownloadId();
    paraman.L = paramMessageEntityImpl.getBucket();
    paraman.c = paramMessageEntityImpl.getConversationId();
    paraman.C = paramMessageEntityImpl.getFlag();
    paraman.D = paramMessageEntityImpl.getExtraFlags();
    paraman.M = paramMessageEntityImpl.getGroupId();
  }
  
  private static void a(an paraman, Cursor paramCursor)
  {
    paraman.b = paramCursor.getLong(0);
    paraman.d = paramCursor.getString(1);
    paraman.f = paramCursor.getLong(2);
    paraman.g = paramCursor.getInt(4);
    paraman.h = paramCursor.getInt(5);
    paraman.i = paramCursor.getString(6);
    paraman.j = paramCursor.getInt(7);
    paraman.k = paramCursor.getString(8);
    paraman.l = paramCursor.getInt(9);
    paraman.m = paramCursor.getInt(10);
    paraman.n = paramCursor.getInt(11);
    paraman.o = paramCursor.getInt(12);
    paraman.p = paramCursor.getInt(13);
    paraman.q = paramCursor.getInt(14);
    paraman.s = paramCursor.getString(15);
    paraman.t = paramCursor.getString(16);
    paraman.w = paramCursor.getLong(24);
    paraman.u = paramCursor.getLong(17);
    paraman.v = paramCursor.getInt(18);
    paraman.x = paramCursor.getInt(19);
    paraman.y = paramCursor.getInt(20);
    paraman.B = paramCursor.getInt(22);
    paraman.A = paramCursor.getLong(21);
    paraman.z = paramCursor.getInt(23);
    paraman.E = paramCursor.getLong(25);
    paraman.F = paramCursor.getString(26);
    paraman.G = paramCursor.getString(27);
    paraman.H = paramCursor.getInt(28);
    paraman.I = paramCursor.getLong(29);
    paraman.J = paramCursor.getLong(30);
    paraman.K = paramCursor.getString(31);
    paraman.L = paramCursor.getString(32);
    paraman.c = paramCursor.getLong(33);
    paraman.C = paramCursor.getInt(34);
    paraman.D = paramCursor.getInt(35);
    paraman.M = paramCursor.getLong(36);
  }
  
  public int A()
  {
    return this.H;
  }
  
  public long B()
  {
    return this.I;
  }
  
  public long C()
  {
    return this.J;
  }
  
  public int D()
  {
    return this.B;
  }
  
  public long E()
  {
    return this.A;
  }
  
  public int F()
  {
    return this.v;
  }
  
  public int G()
  {
    return this.z;
  }
  
  public String H()
  {
    return this.K;
  }
  
  public String I()
  {
    return this.L;
  }
  
  public int J()
  {
    return this.C;
  }
  
  public String K()
  {
    if (this.N == null) {
      this.N = a.a(Long.valueOf(this.f));
    }
    return this.N;
  }
  
  public String L()
  {
    if (this.O == null) {
      this.O = a.b(Long.valueOf(this.f));
    }
    return this.O;
  }
  
  public boolean M()
  {
    return (0x1 & J()) != 0;
  }
  
  public boolean N()
  {
    return (0x100 & J()) != 0;
  }
  
  public boolean O()
  {
    return bk.a(this.D, new int[] { 8 });
  }
  
  public boolean P()
  {
    return bk.a(this.D, new int[] { 4 });
  }
  
  public boolean Q()
  {
    return bk.a(this.D, new int[] { 5 });
  }
  
  public boolean R()
  {
    return o() == 0;
  }
  
  public boolean S()
  {
    return !"sms".equals(e());
  }
  
  public boolean T()
  {
    return o() == 1;
  }
  
  public boolean U()
  {
    return "notif".equals(e());
  }
  
  public boolean V()
  {
    return "call".equals(e());
  }
  
  public boolean W()
  {
    return "missed_call".equals(p());
  }
  
  public boolean X()
  {
    return "sticker".equals(e());
  }
  
  public boolean Y()
  {
    return "location".equals(e());
  }
  
  public boolean Z()
  {
    return "animated_message".equals(e());
  }
  
  public long a()
  {
    return this.b;
  }
  
  public boolean aa()
  {
    return this.z != 0;
  }
  
  public boolean ab()
  {
    return (this.z == 2) || (this.z == 3) || (this.z == 4);
  }
  
  public boolean ac()
  {
    return A() == 0;
  }
  
  public boolean ad()
  {
    return "sms".equals(e());
  }
  
  public boolean ae()
  {
    return "sound".equals(e());
  }
  
  public boolean af()
  {
    return "formatted_follow".equals(e());
  }
  
  public boolean ag()
  {
    return ("image".equals(e())) || ("video".equals(e())) || ("animated_message".equals(e())) || ("sound".equals(e())) || ("location".equals(e())) || ("formatted_follow".equals(e()));
  }
  
  public boolean ah()
  {
    return ("sms".equals(e())) || ("text".equals(e()));
  }
  
  public boolean ai()
  {
    return (T()) && (6 == this.v);
  }
  
  public boolean aj()
  {
    return (T()) || ((R()) && (1 == this.j));
  }
  
  public String ak()
  {
    return gk.a(this);
  }
  
  /* Error */
  public android.net.Uri b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 381	com/viber/voip/messages/conversation/an:p	()Ljava/lang/String;
    //   6: invokestatic 427	com/viber/voip/util/gj:c	(Ljava/lang/String;)Z
    //   9: ifne +17 -> 26
    //   12: aload_0
    //   13: invokevirtual 381	com/viber/voip/messages/conversation/an:p	()Ljava/lang/String;
    //   16: invokestatic 433	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   19: astore_3
    //   20: aload_3
    //   21: astore_2
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_2
    //   25: areturn
    //   26: aconst_null
    //   27: astore_2
    //   28: goto -6 -> 22
    //   31: astore_1
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_1
    //   35: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	this	an
    //   31	4	1	localObject	Object
    //   21	7	2	localUri1	android.net.Uri
    //   19	2	3	localUri2	android.net.Uri
    // Exception table:
    //   from	to	target	type
    //   2	20	31	finally
  }
  
  public int c()
  {
    return u();
  }
  
  public int d()
  {
    return t();
  }
  
  public String e()
  {
    return this.t;
  }
  
  public int f()
  {
    return this.l;
  }
  
  public int g()
  {
    return this.m;
  }
  
  public long h()
  {
    return this.u;
  }
  
  public long j()
  {
    return this.c;
  }
  
  public long k()
  {
    return this.M;
  }
  
  public String l()
  {
    return this.d;
  }
  
  public long m()
  {
    return this.f;
  }
  
  public int n()
  {
    return this.g;
  }
  
  public int o()
  {
    return this.h;
  }
  
  public String p()
  {
    return this.i;
  }
  
  public String q()
  {
    return this.k;
  }
  
  public int r()
  {
    return this.n;
  }
  
  public int s()
  {
    return this.o;
  }
  
  public int t()
  {
    return this.p;
  }
  
  public String toString()
  {
    return "MessageLoaderEntity [id=" + this.b + ", conversationId=" + this.c + ", number=" + this.d + ", date=" + this.f + ", status=" + this.g + ", type=" + this.h + ", body=" + this.i + ", opened=" + this.j + ", description=" + this.k + ", lat=" + this.l + ", lng=" + this.m + ", deleted=" + this.n + ", count=" + this.o + ", width=" + this.p + ", height=" + this.q + ", attached=" + this.r + ", uri=" + this.s + ", mimeType=" + this.t + ", duration=" + this.u + ", extraStatus=" + this.v + ", objectId=" + this.w + ", facebookStatus=" + this.x + ", twitterStatus=" + this.y + ", conversationType=" + this.z + ", token=" + this.A + ", seq=" + this.B + ", flag=" + this.C + ", extraFlags=" + this.D + ", participantInfoId=" + this.E + ", participantContactName=" + this.F + ", participantDisplayName=" + this.G + ", participantType=" + this.H + ", participantContactId=" + this.I + ", participantNativeContactId=" + this.J + ", downloadId=" + this.K + ", extraBuket=" + this.L + ", formatedDate=" + this.N + ", formatedTime=" + this.O + ", temp=" + this.P + "]";
  }
  
  public int u()
  {
    return this.q;
  }
  
  public String v()
  {
    return this.s;
  }
  
  public long w()
  {
    return this.w;
  }
  
  public long x()
  {
    return this.E;
  }
  
  public String y()
  {
    return this.F;
  }
  
  public String z()
  {
    return this.G;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.an
 * JD-Core Version:    0.7.0.1
 */