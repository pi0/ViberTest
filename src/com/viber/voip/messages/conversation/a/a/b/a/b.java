package com.viber.voip.messages.conversation.a.a.b.a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.gl;

public abstract class b
  extends com.viber.voip.ui.b.a.a
  implements com.viber.voip.messages.conversation.a.a.b.a
{
  protected SparseArray<Drawable> A = new SparseArray(2);
  protected boolean B;
  private final int D;
  private final int E;
  private final int F;
  private final int G;
  private final int H;
  private final int I;
  private final int J;
  private final int K;
  private final int L;
  private final int M;
  private final int N;
  private final int O;
  private final int P;
  private final int Q;
  private final int R;
  private final int S;
  private final int T;
  private final int U;
  private final int V;
  private final int W;
  private final int X;
  private DisplayMetrics Y = this.C.getResources().getDisplayMetrics();
  private final SparseArray<String> Z;
  protected int a;
  private final SparseArray<String> aa;
  private final int ab;
  private final ColorStateList ac;
  private final int ad;
  private final String ae;
  private final String af;
  private a ag;
  private long ah = -1L;
  private long ai = -1L;
  private boolean aj = true;
  private boolean ak = true;
  protected final SparseArray<Drawable> b;
  protected final SparseArray<Drawable> c;
  protected final SparseArray<Drawable> d;
  protected int e;
  protected int f;
  protected int g;
  protected int h;
  protected ColorStateList i;
  protected Drawable j;
  protected int k;
  protected int l;
  protected int m;
  protected int n;
  protected int o;
  protected int p;
  protected int q;
  protected Drawable r;
  protected int s;
  protected int t;
  protected int u;
  protected int v;
  protected int w;
  protected int x;
  protected int y;
  protected int z;
  
  public b(Context paramContext)
  {
    super(paramContext);
    this.B = gl.a(paramContext);
    this.D = paramContext.getResources().getDimensionPixelSize(2131362088);
    this.E = h.a(4.0F);
    this.F = paramContext.getResources().getDimensionPixelSize(2131362035);
    this.G = paramContext.getResources().getDimensionPixelSize(2131362036);
    this.H = h.a(6.0F);
    this.I = paramContext.getResources().getDimensionPixelSize(2131362032);
    this.J = paramContext.getResources().getDimensionPixelSize(2131362055);
    this.K = paramContext.getResources().getDimensionPixelSize(2131362091);
    this.L = paramContext.getResources().getDimensionPixelSize(2131362092);
    this.M = h.a(8.0F);
    this.N = paramContext.getResources().getDimensionPixelSize(2131362043);
    this.O = paramContext.getResources().getDimensionPixelSize(2131362044);
    this.P = paramContext.getResources().getDimensionPixelSize(2131362041);
    this.Q = paramContext.getResources().getDimensionPixelSize(2131362042);
    this.R = h.a(1.0F);
    this.S = h.a(3.0F);
    this.T = paramContext.getResources().getDimensionPixelSize(2131362046);
    this.U = h.a(140.0F);
    this.V = paramContext.getResources().getDimensionPixelSize(2131361986);
    this.W = paramContext.getResources().getDimensionPixelSize(2131361987);
    this.X = paramContext.getResources().getDimensionPixelSize(2131362360);
    this.ab = paramContext.getResources().getDimensionPixelSize(2131362086);
    this.ad = paramContext.getResources().getDimensionPixelSize(2131362053);
    this.ac = paramContext.getResources().getColorStateList(2131296485);
    this.ae = paramContext.getResources().getString(2131494799);
    this.af = paramContext.getResources().getString(2131493920);
    this.b = new SparseArray();
    this.c = new SparseArray();
    this.d = new SparseArray();
    this.Z = new SparseArray();
    this.aa = new SparseArray();
    this.ag = new a(paramContext);
    q();
    r();
    s();
    t();
  }
  
  private void q()
  {
    String str = this.C.getResources().getString(2131493827);
    this.Z.put(3, str);
    this.Z.put(1, this.C.getResources().getString(2131493823));
    this.Z.put(2, this.C.getResources().getString(2131493822));
    this.Z.put(-1, this.C.getResources().getString(2131493824));
    this.Z.put(0, str);
    this.Z.put(4, str);
    this.Z.put(10, str);
    this.Z.put(5, str);
    this.Z.put(6, str);
  }
  
  private void r()
  {
    String str1 = this.C.getResources().getString(2131493828);
    String str2 = this.C.getResources().getString(2131493829);
    String str3 = this.C.getResources().getString(2131493824);
    this.aa.put(1, str1);
    this.aa.put(2, str2);
    this.aa.put(3, str3);
    this.aa.put(4, str3);
    this.aa.put(5, str3);
  }
  
  private void s()
  {
    Drawable localDrawable1 = this.C.getResources().getDrawable(2130837643);
    this.c.put(3, localDrawable1);
    this.c.put(1, this.C.getResources().getDrawable(2130837641));
    this.c.put(2, this.C.getResources().getDrawable(2130837645));
    this.c.put(-1, this.C.getResources().getDrawable(2130837647));
    this.c.put(0, localDrawable1);
    this.c.put(4, localDrawable1);
    this.c.put(10, localDrawable1);
    this.c.put(5, localDrawable1);
    this.c.put(6, localDrawable1);
    Drawable localDrawable2 = this.C.getResources().getDrawable(2130837642);
    this.b.put(3, localDrawable2);
    this.b.put(1, this.C.getResources().getDrawable(2130837640));
    this.b.put(2, this.C.getResources().getDrawable(2130837644));
    this.b.put(-1, this.C.getResources().getDrawable(2130837646));
    this.b.put(0, localDrawable2);
    this.b.put(4, localDrawable2);
    this.b.put(10, localDrawable2);
    this.b.put(5, localDrawable2);
    this.b.put(6, localDrawable2);
  }
  
  private void t()
  {
    this.d.put(0, null);
    SparseArray localSparseArray1 = this.d;
    Resources localResources1 = this.C.getResources();
    int i1;
    SparseArray localSparseArray2;
    Resources localResources2;
    if (this.B)
    {
      i1 = 2130837643;
      localSparseArray1.put(1, localResources1.getDrawable(i1));
      localSparseArray2 = this.d;
      localResources2 = this.C.getResources();
      if (!this.B) {
        break label90;
      }
    }
    label90:
    for (int i2 = 2130837641;; i2 = 2130837640)
    {
      localSparseArray2.put(2, localResources2.getDrawable(i2));
      return;
      i1 = 2130837642;
      break;
    }
  }
  
  public int a(int paramInt)
  {
    if (paramInt != 0) {
      return paramInt;
    }
    return this.U;
  }
  
  public int a(com.viber.voip.messages.conversation.a.a.a parama)
  {
    return this.ag.c(parama);
  }
  
  public void a(long paramLong)
  {
    this.ah = paramLong;
  }
  
  public void a(boolean paramBoolean)
  {
    this.aj = paramBoolean;
  }
  
  public int b(com.viber.voip.messages.conversation.a.a.a parama)
  {
    return this.ag.d(parama);
  }
  
  public void b(long paramLong)
  {
    this.ai = paramLong;
  }
  
  public void b(boolean paramBoolean)
  {
    this.ak = paramBoolean;
  }
  
  public int c(com.viber.voip.messages.conversation.a.a.a parama)
  {
    return this.ag.e(parama);
  }
  
  public int d(com.viber.voip.messages.conversation.a.a.a parama)
  {
    return this.ag.f(parama);
  }
  
  public int e(com.viber.voip.messages.conversation.a.a.a parama)
  {
    return this.ag.g(parama);
  }
  
  public int f(com.viber.voip.messages.conversation.a.a.a parama)
  {
    return this.ag.h(parama);
  }
  
  public int g(com.viber.voip.messages.conversation.a.a.a parama)
  {
    return this.ag.i(parama);
  }
  
  public void g()
  {
    int i1 = this.Y.widthPixels;
    this.v = (i1 - this.s - this.t);
    this.v = Math.min(this.v, this.X);
    this.w = (i1 - 2 * this.u);
    this.x = (i1 - 2 * this.V);
    this.x = Math.min(this.x, this.W);
  }
  
  public int h(com.viber.voip.messages.conversation.a.a.a parama)
  {
    return this.ag.a(parama);
  }
  
  public long h()
  {
    return this.ah;
  }
  
  public int i(com.viber.voip.messages.conversation.a.a.a parama)
  {
    return this.ag.b(parama);
  }
  
  public long i()
  {
    return this.ai;
  }
  
  public int j()
  {
    return this.E;
  }
  
  public int k()
  {
    return this.v;
  }
  
  public int l()
  {
    return this.w;
  }
  
  public String m()
  {
    return this.af;
  }
  
  public boolean n()
  {
    return this.aj;
  }
  
  public boolean o()
  {
    return this.ak;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.a.b.a.b
 * JD-Core Version:    0.7.0.1
 */