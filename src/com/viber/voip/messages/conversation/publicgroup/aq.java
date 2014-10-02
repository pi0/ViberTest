package com.viber.voip.messages.conversation.publicgroup;

import android.database.Cursor;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.PublicGroupConversationEntityImpl;

public class aq
  extends h
{
  public static final String[] b = new String[13 + h.a.length];
  public static final int c = h.a.length;
  public static final int d = 1 + c;
  public static final int e = 1 + d;
  public static final int f = 1 + e;
  public static final int g = 1 + f;
  public static final int h = 1 + g;
  public static final int i = 1 + h;
  public static final int j = 1 + i;
  public static final int k = 1 + j;
  public static final int l = 1 + k;
  public static final int m = 1 + l;
  public static final int n = 1 + m;
  public static final int o = 1 + n;
  private boolean A;
  private int B;
  private int p;
  private String q;
  private String r;
  private int s;
  private String t;
  private String u;
  private String v;
  private String w;
  private int x;
  private int y;
  private String z;
  
  static
  {
    b[c] = "group_conversations_extras.group_role";
    b[d] = "group_conversations_extras.icon_id";
    b[e] = "group_conversations_extras.watchers_count";
    b[f] = "group_conversations_extras.tags";
    b[g] = "group_conversations_extras.tag_line";
    b[h] = "group_conversations_extras.group_uri";
    b[i] = "group_conversations_extras.location_address";
    b[j] = "group_conversations_extras.location_lat";
    b[k] = "group_conversations_extras.location_lng";
    b[l] = "group_conversations_extras.inviter";
    b[m] = "group_conversations_extras.verified";
    b[n] = "group_conversations_extras.revision";
    b[o] = "group_conversations_extras.background_id";
    System.arraycopy(h.a, 0, b, 0, h.a.length);
  }
  
  public aq(Cursor paramCursor)
  {
    super(paramCursor);
    this.p = paramCursor.getInt(c);
    this.q = paramCursor.getString(d);
    this.s = paramCursor.getInt(e);
    this.t = paramCursor.getString(f);
    this.u = paramCursor.getString(g);
    this.v = paramCursor.getString(h);
    this.w = paramCursor.getString(i);
    this.x = paramCursor.getInt(j);
    this.y = paramCursor.getInt(k);
    this.z = paramCursor.getString(l);
    if (paramCursor.getInt(m) != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.A = bool;
      this.B = paramCursor.getInt(n);
      this.r = paramCursor.getString(o);
      return;
    }
  }
  
  public aq(ConversationEntityImpl paramConversationEntityImpl, PublicGroupConversationEntityImpl paramPublicGroupConversationEntityImpl)
  {
    super(paramConversationEntityImpl);
    this.p = paramPublicGroupConversationEntityImpl.getGroupRole();
    this.q = paramPublicGroupConversationEntityImpl.getIconId();
    this.s = paramPublicGroupConversationEntityImpl.getWatchersCount();
    this.t = paramPublicGroupConversationEntityImpl.getTags();
    this.u = paramPublicGroupConversationEntityImpl.getTagLine();
    this.v = paramPublicGroupConversationEntityImpl.getGroupUri();
    this.w = paramPublicGroupConversationEntityImpl.getAddressString();
    this.x = paramPublicGroupConversationEntityImpl.getLocationLat();
    this.y = paramPublicGroupConversationEntityImpl.getLocationLng();
    this.z = paramPublicGroupConversationEntityImpl.getInviter();
    this.A = paramPublicGroupConversationEntityImpl.isVerified();
    this.B = paramPublicGroupConversationEntityImpl.getRevision();
    this.r = paramPublicGroupConversationEntityImpl.getBackgroundId();
  }
  
  public int A()
  {
    return this.x;
  }
  
  public String B()
  {
    return this.w;
  }
  
  public String C()
  {
    return this.v;
  }
  
  public String D()
  {
    return this.z;
  }
  
  public boolean E()
  {
    return this.A;
  }
  
  public int F()
  {
    return this.B;
  }
  
  public String G()
  {
    return this.r;
  }
  
  public String toString()
  {
    return super.toString() + " PublicGroupConversationItemLoaderEntity{" + "groupRole=" + this.p + ", iconId='" + this.q + '\'' + ", watchersCount=" + this.s + ", tags=" + this.t + ", tagLine='" + this.u + '\'' + ", groupUri='" + this.v + '\'' + ", addressString='" + this.w + '\'' + ", locationLat=" + this.x + ", locationLng=" + this.y + '}';
  }
  
  public int u()
  {
    return this.p;
  }
  
  public String v()
  {
    return this.q;
  }
  
  public int w()
  {
    return this.s;
  }
  
  public String[] x()
  {
    return PublicGroupConversationEntityImpl.toTagsArray(this.t);
  }
  
  public String y()
  {
    return this.u;
  }
  
  public int z()
  {
    return this.y;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.aq
 * JD-Core Version:    0.7.0.1
 */