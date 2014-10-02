package com.viber.voip.messages;

import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class e
{
  protected long a;
  protected String b;
  protected String c;
  protected Set<f> d = new HashSet();
  protected Set<MessageEntityImpl> e = new HashSet();
  
  public e(long paramLong, String paramString)
  {
    this.a = paramLong;
    this.b = paramString;
  }
  
  public e(String paramString1, String paramString2)
  {
    this.c = paramString1;
    this.b = paramString2;
    this.d.add(new f(paramString1, paramString2));
  }
  
  public String a()
  {
    return this.b;
  }
  
  public void a(f paramf)
  {
    this.d.add(paramf);
  }
  
  public void a(MessageEntityImpl paramMessageEntityImpl)
  {
    this.e.add(paramMessageEntityImpl);
  }
  
  public Set<MessageEntityImpl> b()
  {
    return Collections.unmodifiableSet(this.e);
  }
  
  public boolean c()
  {
    return this.a > 0L;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof e))
    {
      e locale = (e)paramObject;
      return ((c()) && (this.a == locale.a)) || ((this.c != null) && (this.c.equals(locale.c)));
    }
    return super.equals(paramObject);
  }
  
  public int hashCode()
  {
    if (this.c == null) {
      return (int)this.a;
    }
    return this.c.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder().append("Conversation [mGroupId=").append(this.a).append(", mName=").append(this.b).append(", mNumber=").append(this.c).append(", mParticipants.size=");
    if (this.d != null) {}
    for (int i = this.d.size();; i = 0)
    {
      StringBuilder localStringBuilder2 = localStringBuilder1.append(i).append(", mMessages.size=");
      Set localSet = this.e;
      int j = 0;
      if (localSet != null) {
        j = this.e.size();
      }
      return j + "]";
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.e
 * JD-Core Version:    0.7.0.1
 */