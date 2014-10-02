package com.viber.voip.messages.controller;

import android.os.Handler;
import com.viber.jni.PublicGroupInfo;
import com.viber.voip.calls.entities.impl.CallEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import java.util.Set;

public class ak
  implements x
{
  private final x a;
  private final Handler b;
  private final Handler c;
  
  public ak(Handler paramHandler1, Handler paramHandler2, x paramx)
  {
    this.a = paramx;
    this.b = paramHandler1;
    this.c = paramHandler2;
  }
  
  private void a(bx parambx)
  {
    this.b.postAtFrontOfQueue(new al(this, parambx));
  }
  
  public void a()
  {
    a(new as(this));
  }
  
  public void a(int paramInt, long paramLong1, long paramLong2, long paramLong3)
  {
    a(new br(this, paramInt, paramLong1, paramLong2, paramLong3));
  }
  
  public void a(int paramInt1, String paramString1, long paramLong, String paramString2, int paramInt2, boolean paramBoolean, PublicGroupInfo paramPublicGroupInfo, ad paramad)
  {
    a(new bt(this, paramInt1, paramString1, paramLong, paramString2, paramInt2, paramBoolean, paramPublicGroupInfo, paramad));
  }
  
  public void a(long paramLong)
  {
    a(new ar(this, paramLong));
  }
  
  public void a(long paramLong, int paramInt)
  {
    a(new au(this, paramLong, paramInt));
  }
  
  public void a(long paramLong1, long paramLong2, long paramLong3)
  {
    a(new bs(this, paramLong1, paramLong2, paramLong3));
  }
  
  public void a(long paramLong, aa paramaa)
  {
    a(new ap(this, paramLong, paramaa));
  }
  
  public void a(long paramLong, ac paramac)
  {
    a(new bu(this, paramLong, paramac));
  }
  
  public void a(long paramLong, ae paramae)
  {
    a(new ba(this, paramLong, paramae));
  }
  
  public void a(long paramLong, af paramaf)
  {
    a(new bq(this, paramLong, paramaf));
  }
  
  public void a(long paramLong, ag paramag)
  {
    a(new at(this, paramLong, paramag));
  }
  
  public void a(long paramLong, y paramy)
  {
    a(new bc(this, paramLong, paramy));
  }
  
  public void a(long paramLong, String paramString)
  {
    a(new az(this, paramLong, paramString));
  }
  
  public void a(long paramLong, String paramString, int paramInt1, int paramInt2)
  {
    a(new ax(this, paramLong, paramString, paramInt1, paramInt2));
  }
  
  public void a(long paramLong, boolean paramBoolean)
  {
    a(new ay(this, paramLong, paramBoolean));
  }
  
  public void a(long paramLong, boolean paramBoolean, ai paramai)
  {
    a(new be(this, paramLong, paramBoolean, paramai));
  }
  
  public void a(CallEntityImpl paramCallEntityImpl, int paramInt)
  {
    a(new ao(this, paramCallEntityImpl, paramInt));
  }
  
  public void a(ac paramac)
  {
    a(new bn(this, paramac));
  }
  
  public void a(aj paramaj)
  {
    a(new bi(this, paramaj));
  }
  
  public void a(com.viber.voip.messages.controller.c.ao paramao, ah paramah)
  {
    a(new bh(this, paramao, paramah));
  }
  
  public void a(MessageEntityImpl paramMessageEntityImpl)
  {
    this.c.postAtFrontOfQueue(new am(this, paramMessageEntityImpl));
  }
  
  public void a(String paramString)
  {
    a(new bv(this, paramString));
  }
  
  public void a(String paramString, ai paramai)
  {
    a(new bo(this, paramString, paramai));
  }
  
  public void a(String paramString1, String paramString2, boolean paramBoolean, ab paramab)
  {
    a(new bd(this, paramString1, paramString2, paramBoolean, paramab));
  }
  
  public void a(Set<Long> paramSet, aa paramaa)
  {
    a(new av(this, paramSet, paramaa));
  }
  
  public void a(Set<Long> paramSet, boolean paramBoolean, aa paramaa)
  {
    a(new aq(this, paramSet, paramBoolean, paramaa));
  }
  
  public void a(Set<Long> paramSet, boolean paramBoolean, ai paramai)
  {
    a(new bp(this, paramSet, paramBoolean, paramai));
  }
  
  public void a(boolean paramBoolean, z paramz)
  {
    a(new bb(this, paramBoolean, paramz));
  }
  
  public void a(MessageEntityImpl[] paramArrayOfMessageEntityImpl)
  {
    this.c.postAtFrontOfQueue(new an(this, paramArrayOfMessageEntityImpl));
  }
  
  public void b()
  {
    a(new bj(this));
  }
  
  public void b(long paramLong)
  {
    a(new bf(this, paramLong));
  }
  
  public void b(long paramLong, int paramInt)
  {
    a(new aw(this, paramLong, paramInt));
  }
  
  public void b(long paramLong1, long paramLong2, long paramLong3)
  {
    a(new bw(this, paramLong1, paramLong2, paramLong3));
  }
  
  public void b(long paramLong, String paramString)
  {
    a(new bg(this, paramLong, paramString));
  }
  
  public void c(long paramLong)
  {
    a(new bk(this, paramLong));
  }
  
  public void c(long paramLong, String paramString)
  {
    a(new bl(this, paramLong, paramString));
  }
  
  public void d(long paramLong)
  {
    a(new bm(this, paramLong));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.ak
 * JD-Core Version:    0.7.0.1
 */