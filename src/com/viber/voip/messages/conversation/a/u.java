package com.viber.voip.messages.conversation.a;

import android.net.Uri;
import com.viber.voip.messages.conversation.a.a.a;
import com.viber.voip.messages.conversation.an;

public class u
  implements a
{
  public final boolean a;
  private final an b;
  private final boolean c;
  private final boolean d;
  private final boolean e;
  private final boolean f;
  private final boolean g;
  private final boolean h;
  private final boolean i;
  private final boolean j;
  private final boolean k;
  private final boolean l;
  private final boolean m;
  private final boolean n;
  
  public u(an paraman)
  {
    this(paraman, false, false, false, false, false, false, false, false, false, false, false, false);
  }
  
  public u(an paraman, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, boolean paramBoolean7, boolean paramBoolean8, boolean paramBoolean9, boolean paramBoolean10, boolean paramBoolean11, boolean paramBoolean12)
  {
    this.b = paraman;
    this.c = paramBoolean1;
    this.d = paramBoolean2;
    this.e = paramBoolean3;
    this.f = paramBoolean4;
    this.g = paramBoolean5;
    this.h = paramBoolean6;
    this.i = paramBoolean7;
    this.j = paramBoolean8;
    this.k = paramBoolean9;
    this.l = paramBoolean10;
    this.m = paramBoolean11;
    this.n = paramBoolean12;
    if (paraman.r() == i1) {}
    for (;;)
    {
      this.a = i1;
      return;
      i1 = 0;
    }
  }
  
  public int A()
  {
    return this.b.A();
  }
  
  public boolean B()
  {
    return this.b.Y();
  }
  
  public boolean C()
  {
    return this.b.Z();
  }
  
  public String D()
  {
    return this.b.I();
  }
  
  public String E()
  {
    return this.b.q();
  }
  
  public int F()
  {
    if (J()) {
      return 3;
    }
    return this.b.n();
  }
  
  public boolean G()
  {
    return this.b.ad();
  }
  
  public String H()
  {
    return this.b.v();
  }
  
  public String I()
  {
    return this.b.H();
  }
  
  public boolean J()
  {
    return this.b.ai();
  }
  
  public boolean K()
  {
    return this.b.aj();
  }
  
  public int L()
  {
    return this.b.o();
  }
  
  public int M()
  {
    return this.b.s();
  }
  
  public boolean N()
  {
    return this.b.W();
  }
  
  public String O()
  {
    return this.b.K();
  }
  
  public long P()
  {
    return this.b.w();
  }
  
  public String Q()
  {
    return this.b.L();
  }
  
  public int R()
  {
    return this.b.F();
  }
  
  public boolean S()
  {
    return this.b.aa();
  }
  
  public boolean T()
  {
    return false;
  }
  
  public boolean U()
  {
    return false;
  }
  
  public boolean V()
  {
    return false;
  }
  
  public String W()
  {
    return this.b.ak();
  }
  
  public long X()
  {
    return this.b.B();
  }
  
  public String Y()
  {
    return this.b.l();
  }
  
  public long Z()
  {
    return this.b.m();
  }
  
  public long a()
  {
    return this.b.a();
  }
  
  public long aa()
  {
    return this.b.x();
  }
  
  public boolean ab()
  {
    return (this.b.M()) || (this.b.N());
  }
  
  public boolean ac()
  {
    return this.b.O();
  }
  
  public long ad()
  {
    return this.b.C();
  }
  
  public int ae()
  {
    return this.b.D();
  }
  
  public int af()
  {
    return 0;
  }
  
  public long ag()
  {
    return this.b.k();
  }
  
  public long ah()
  {
    return this.b.E();
  }
  
  public boolean ai()
  {
    return "has_description".equals(this.b.I());
  }
  
  public Uri b()
  {
    return this.b.b();
  }
  
  public int c()
  {
    return this.b.c();
  }
  
  public int d()
  {
    return this.b.d();
  }
  
  public String e()
  {
    return this.b.e();
  }
  
  public int f()
  {
    return this.b.f();
  }
  
  public int g()
  {
    return this.b.g();
  }
  
  public long h()
  {
    return this.b.h();
  }
  
  public boolean i()
  {
    return this.c;
  }
  
  public boolean j()
  {
    return this.d;
  }
  
  public boolean k()
  {
    return this.e;
  }
  
  public boolean l()
  {
    return this.f;
  }
  
  public boolean m()
  {
    return this.i;
  }
  
  public boolean n()
  {
    return this.j;
  }
  
  public boolean o()
  {
    return this.k;
  }
  
  public boolean p()
  {
    return this.b.R();
  }
  
  public boolean q()
  {
    return this.b.T();
  }
  
  public boolean r()
  {
    return this.b.ah();
  }
  
  public boolean s()
  {
    return this.b.ag();
  }
  
  public boolean t()
  {
    return this.b.X();
  }
  
  public String toString()
  {
    return "ConversationAdapterItem{message=" + this.b + ", showUnreadHeader=" + this.c + ", showDateHeader=" + this.d + ", aggregated=" + this.e + ", isNewMessage=" + this.g + ", first=" + this.h + ", last=" + this.i + ", showCheckBox=" + this.j + ", checked=" + this.k + ", prevCall=" + this.l + ", prevNotification=" + this.m + ", prevSticker=" + this.n + ", description=" + this.b.q() + ", groupId=" + this.b.k() + '}';
  }
  
  public boolean u()
  {
    return this.b.U();
  }
  
  public boolean v()
  {
    return this.b.V();
  }
  
  public boolean w()
  {
    return this.b.ae();
  }
  
  public boolean x()
  {
    return this.b.af();
  }
  
  public String y()
  {
    return this.b.p();
  }
  
  public String z()
  {
    return this.b.z();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.u
 * JD-Core Version:    0.7.0.1
 */