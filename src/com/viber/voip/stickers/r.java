package com.viber.voip.stickers;

import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.billing.bv;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.stickers.b.m;
import com.viber.voip.stickers.c.d;
import com.viber.voip.stickers.c.f;
import com.viber.voip.stickers.d.c;
import com.viber.voip.util.bj;
import com.viber.voip.util.ft;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class r
{
  private static final String a = r.class.getSimpleName();
  private final b b;
  private final com.viber.voip.stickers.a.a c;
  private final c d;
  private final com.viber.voip.stickers.b.h e;
  private final ar f;
  private final ao g;
  private final as h;
  private final ay i;
  private final am j;
  private final Handler k;
  private final SparseArray<com.viber.voip.stickers.c.a> l = new SparseArray();
  private List<d> m;
  private List<d> n;
  private List<d> o;
  private List<d> p;
  private int q = 0;
  private q r;
  private final bb s;
  private long t;
  private PhoneControllerDelegateAdapter u = new y(this);
  private Comparator<d> v = new z(this);
  
  private r()
  {
    bj.e(com.viber.voip.w.w);
    bj.f(com.viber.voip.w.w);
    this.d = c.a();
    this.s = new bb();
    this.f = new ar(this);
    this.b = new b(this);
    this.c = new com.viber.voip.stickers.a.a();
    this.g = new ao(this.c);
    this.h = new as(this);
    this.k = dc.a(dk.h);
    this.i = new s(this, this.k, this.c);
    w();
    y();
    this.j = new ab(this);
    this.e = new com.viber.voip.stickers.b.h(this, this.b, this.j);
    this.d.a(new ac(this));
    this.j.a(com.viber.voip.process.e.a());
  }
  
  public static r a()
  {
    return aj.a();
  }
  
  private List<d> a(d paramd, List<d> paramList)
  {
    if (!paramList.contains(paramd)) {
      return paramList;
    }
    ArrayList localArrayList = new ArrayList(paramList);
    localArrayList.remove(paramd);
    return localArrayList;
  }
  
  private List<d> a(com.viber.voip.stickers.c.e parame, List<d> paramList)
  {
    if (paramList.contains(parame)) {
      return paramList;
    }
    ArrayList localArrayList = new ArrayList(paramList);
    localArrayList.add(parame);
    return localArrayList;
  }
  
  private void a(p paramp, boolean paramBoolean, long paramLong)
  {
    com.viber.voip.stickers.c.a[] arrayOfa = paramp.a;
    int i1 = arrayOfa.length;
    for (int i2 = 0;; i2++)
    {
      com.viber.voip.stickers.c.a locala;
      if (i2 < i1)
      {
        locala = arrayOfa[i2];
        if (System.currentTimeMillis() - paramLong <= 200L) {}
      }
      else
      {
        return;
      }
      this.b.a(locala, false, paramBoolean, ba.a);
    }
  }
  
  private void a(String paramString) {}
  
  private void a(boolean paramBoolean)
  {
    ArrayList localArrayList1 = new ArrayList(this.c.c());
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    ArrayList localArrayList4 = new ArrayList();
    ArrayList localArrayList5 = new ArrayList();
    ArrayList localArrayList6 = new ArrayList();
    boolean bool = this.i.a();
    Iterator localIterator = localArrayList1.iterator();
    label276:
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      if (locald.g())
      {
        if (!locald.i()) {
          break label247;
        }
        localArrayList5.add(locald);
        label124:
        if (locald.c()) {
          localArrayList3.add(locald);
        }
      }
      if (!locald.h())
      {
        if ((!locald.j()) || (locald.k())) {
          a(locald);
        }
        if (locald.i()) {
          localArrayList2.add(locald);
        }
      }
      for (;;)
      {
        if ((locald.e() == 400) || ((!bool) && (!TextUtils.isEmpty(locald.f())))) {
          break label276;
        }
        localArrayList6.add(Integer.valueOf(locald.e()));
        break;
        label247:
        if (locald.j()) {
          break label124;
        }
        localArrayList4.add(locald);
        break label124;
        localArrayList2.add(locald);
      }
    }
    Collections.sort(localArrayList4, this.v);
    Collections.sort(localArrayList5, this.v);
    Collections.sort(localArrayList3, this.v);
    try
    {
      this.p = localArrayList1;
      this.m = localArrayList3;
      this.o = localArrayList4;
      this.n = localArrayList5;
      this.i.b(localArrayList6);
      an.a(localArrayList2);
      if (paramBoolean) {
        c();
      }
      return;
    }
    finally {}
  }
  
  private void b(int paramInt, boolean paramBoolean)
  {
    v localv = new v(this, paramInt);
    if (paramBoolean)
    {
      localv.run();
      return;
    }
    this.k.post(localv);
  }
  
  private void n(int paramInt)
  {
    com.viber.voip.stickers.c.e locale = new com.viber.voip.stickers.c.e(paramInt, "Sticker package");
    locale.c(true);
    locale.b(1 + x());
    this.c.a(locale);
    this.p = a(locale, this.p);
  }
  
  private void o(int paramInt)
  {
    this.p = a(b(paramInt), this.p);
    this.c.d(paramInt);
  }
  
  private void w()
  {
    ViberApplication.getInstance().getPhoneController(false).registerDelegate(this.u);
  }
  
  private int x()
  {
    Iterator localIterator = this.p.iterator();
    int i1 = 0;
    d locald;
    if (localIterator.hasNext())
    {
      locald = (d)localIterator.next();
      if (locald.a() <= i1) {
        break label57;
      }
    }
    label57:
    for (int i2 = locald.a();; i2 = i1)
    {
      i1 = i2;
      break;
      return i1;
    }
  }
  
  private void y()
  {
    ViberApplication.getInstance().registerMediaMountListener(new w(this));
  }
  
  public com.viber.voip.stickers.c.a a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    com.viber.voip.stickers.c.a locala = (com.viber.voip.stickers.c.a)this.l.get(paramInt1);
    int i1 = 0;
    if (locala == null)
    {
      locala = this.c.a(paramInt1);
      i1 = 0;
      if (locala == null)
      {
        locala = new com.viber.voip.stickers.c.a(paramInt1, paramInt2);
        i1 = 0;
        if (paramBoolean)
        {
          i1 = 1;
          a(locala);
        }
      }
      this.l.put(locala.b, locala);
    }
    if ((!locala.g()) && (i1 == 0) && (paramBoolean)) {
      a(locala);
    }
    return locala;
  }
  
  public com.viber.voip.stickers.c.a a(int paramInt, boolean paramBoolean)
  {
    return a(paramInt, 0, paramBoolean);
  }
  
  public void a(int paramInt)
  {
    this.d.a(paramInt);
  }
  
  public void a(com.viber.voip.stickers.c.a parama)
  {
    if (q()) {
      this.e.a(parama);
    }
  }
  
  void a(d paramd)
  {
    int i1 = paramd.e();
    int i2;
    ae localae;
    if ((paramd.d()) || (paramd.j()))
    {
      i2 = 1;
      localae = new ae(this, i1, paramd.f());
      if (!q()) {
        break label109;
      }
      str = com.viber.voip.stickers.b.h.a(i1, an.j);
      if ((ViberApplication.getInstance().getDownloadValve().b(str)) && (this.e.a(paramd)) && (i2 != 0))
      {
        this.j.a(localae);
        localae.a();
      }
    }
    label109:
    while (i2 == 0)
    {
      String str;
      return;
      i2 = 0;
      break;
    }
    localae.a(false, paramd);
  }
  
  public void a(com.viber.voip.stickers.c.e parame)
  {
    if ((this.q == parame.e()) || (parame.d())) {
      b(parame.e(), true);
    }
    List localList = k(parame.e());
    if ((parame != null) && (an.a(parame, localList))) {
      this.c.a(parame);
    }
    a(true);
  }
  
  public void a(com.viber.voip.stickers.d.a parama)
  {
    try
    {
      this.d.a(parama);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(com.viber.voip.stickers.d.b paramb)
  {
    this.j.a(paramb);
  }
  
  void a(List<Integer> paramList)
  {
    a("updatePromoStickerPackages");
    List localList = j();
    Iterator localIterator1 = localList.iterator();
    int i1 = 0;
    int i4;
    if (localIterator1.hasNext())
    {
      int i3 = ((Integer)localIterator1.next()).intValue();
      if (paramList.contains(Integer.valueOf(i3))) {
        break label157;
      }
      i4 = i1 + 1;
      o(i3);
    }
    for (;;)
    {
      i1 = i4;
      break;
      Iterator localIterator2 = paramList.iterator();
      while (localIterator2.hasNext())
      {
        int i2 = ((Integer)localIterator2.next()).intValue();
        if ((!localList.contains(Integer.valueOf(i2))) && (b(i2) == null))
        {
          i1++;
          n(i2);
        }
      }
      if (i1 > 0) {
        a(true);
      }
      return;
      label157:
      i4 = i1;
    }
  }
  
  public void a(boolean paramBoolean1, Runnable paramRunnable, boolean paramBoolean2)
  {
    this.k.post(new t(this, paramBoolean1, paramBoolean2, paramRunnable));
    if (ViberApplication.preferences().b("PREF_MARKET_CONSUME_ON_DELETE_STICKER_PACKAGES", false)) {
      bv.a().a(null);
    }
  }
  
  public p[] a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    p[] arrayOfp2;
    long l1;
    if ((paramInt1 != this.q) || (this.r == null))
    {
      List localList = k(paramInt1);
      this.s.a();
      this.b.a(paramInt1);
      this.k.post(new u(this, localList));
      this.r = new q(localList, paramInt1);
      p[] arrayOfp1 = this.r.b();
      int i1 = arrayOfp1.length;
      for (int i2 = 0; i2 < i1; i2++) {
        for (com.viber.voip.stickers.c.a locala : arrayOfp1[i2].a)
        {
          this.l.put(locala.b, locala);
          if (!locala.g()) {
            this.f.a(locala);
          }
        }
      }
      if (paramBoolean2) {
        j(this.q);
      }
      this.q = paramInt1;
      if (!paramBoolean1) {
        break label270;
      }
      arrayOfp2 = this.r.a();
      if (paramInt2 >= 0)
      {
        l1 = System.currentTimeMillis();
        if (-2 + arrayOfp2.length > paramInt2) {
          break label282;
        }
        int i3 = -1 + arrayOfp2.length;
        a(arrayOfp2[i3], paramBoolean1, l1);
        if (i3 - 1 > 0) {
          a(arrayOfp2[(i3 - 1)], paramBoolean1, l1);
        }
      }
    }
    for (;;)
    {
      if (!paramBoolean1) {
        break label318;
      }
      return this.r.a();
      label270:
      arrayOfp2 = this.r.b();
      break;
      label282:
      a(arrayOfp2[paramInt2], paramBoolean1, l1);
      if (arrayOfp2.length > paramInt2 + 1) {
        a(arrayOfp2[(paramInt2 + 1)], paramBoolean1, l1);
      }
    }
    label318:
    return this.r.b();
  }
  
  public p[] a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(paramInt, -1, paramBoolean1, paramBoolean2);
  }
  
  public d b(int paramInt)
  {
    Iterator localIterator = g().iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      if (paramInt == locald.e()) {
        return locald;
      }
    }
    return null;
  }
  
  public void b()
  {
    this.k.postDelayed(new ad(this), 1000L);
  }
  
  public void b(com.viber.voip.stickers.c.a parama)
  {
    if (!a(parama.b, false).e()) {
      this.c.a(parama);
    }
  }
  
  public void b(com.viber.voip.stickers.c.e parame)
  {
    this.c.a(parame);
  }
  
  public void b(com.viber.voip.stickers.d.a parama)
  {
    try
    {
      this.d.b(parama);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void b(com.viber.voip.stickers.d.b paramb)
  {
    this.j.b(paramb);
  }
  
  public void b(List<? extends f> paramList)
  {
    this.k.postAtFrontOfQueue(new ag(this, paramList));
  }
  
  public void c()
  {
    try
    {
      ArrayList localArrayList1 = new ArrayList(f());
      ArrayList localArrayList2 = new ArrayList(h());
      ArrayList localArrayList3 = new ArrayList(i());
      this.d.a(localArrayList1, localArrayList3, localArrayList2);
      return;
    }
    finally {}
  }
  
  public void c(com.viber.voip.stickers.c.a parama)
  {
    this.c.a(parama);
  }
  
  public boolean c(int paramInt)
  {
    return this.e.b(paramInt);
  }
  
  public b d()
  {
    return this.b;
  }
  
  public boolean d(int paramInt)
  {
    if (this.e.c(paramInt)) {}
    d locald;
    do
    {
      return true;
      locald = b(paramInt);
      if (locald == null) {
        return false;
      }
      if (locald.h()) {
        return false;
      }
    } while (!locald.j());
    return false;
  }
  
  public bb e()
  {
    return this.s;
  }
  
  public boolean e(int paramInt)
  {
    d locald = b(paramInt);
    return (locald != null) && (!locald.j());
  }
  
  public List<d> f()
  {
    try
    {
      if (this.m == null) {
        a(false);
      }
      List localList = this.m;
      return localList;
    }
    finally {}
  }
  
  public boolean f(int paramInt)
  {
    d locald = b(paramInt);
    return (locald != null) && (locald.c()) && (!locald.j());
  }
  
  public List<d> g()
  {
    try
    {
      if (this.p == null) {
        a(false);
      }
      List localList = this.p;
      return localList;
    }
    finally {}
  }
  
  public void g(int paramInt)
  {
    if (d(paramInt)) {
      a(b(paramInt));
    }
  }
  
  public List<d> h()
  {
    try
    {
      if (this.o == null) {
        a(false);
      }
      List localList = this.o;
      return localList;
    }
    finally {}
  }
  
  public void h(int paramInt)
  {
    if ((q()) && (this.e.a(paramInt))) {}
  }
  
  public List<d> i()
  {
    try
    {
      if (this.n == null) {
        a(false);
      }
      List localList = this.n;
      return localList;
    }
    finally {}
  }
  
  public void i(int paramInt)
  {
    this.k.post(new af(this, paramInt));
  }
  
  /* Error */
  public List<Integer> j()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 201	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 255	java/util/ArrayList:<init>	()V
    //   9: astore_1
    //   10: aload_0
    //   11: monitorenter
    //   12: new 201	java/util/ArrayList
    //   15: dup
    //   16: aload_0
    //   17: invokevirtual 543	com/viber/voip/stickers/r:g	()Ljava/util/List;
    //   20: invokespecial 204	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   23: astore_3
    //   24: aload_0
    //   25: monitorexit
    //   26: aload_3
    //   27: invokeinterface 396 1 0
    //   32: astore 5
    //   34: aload 5
    //   36: invokeinterface 269 1 0
    //   41: ifeq +55 -> 96
    //   44: aload 5
    //   46: invokeinterface 273 1 0
    //   51: checkcast 275	com/viber/voip/stickers/c/d
    //   54: astore 6
    //   56: aload 6
    //   58: invokeinterface 286 1 0
    //   63: ifeq -29 -> 34
    //   66: aload_1
    //   67: aload 6
    //   69: invokeinterface 294 1 0
    //   74: invokestatic 308	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   77: invokevirtual 280	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   80: pop
    //   81: goto -47 -> 34
    //   84: astore_2
    //   85: aload_0
    //   86: monitorexit
    //   87: aload_2
    //   88: athrow
    //   89: astore 4
    //   91: aload_0
    //   92: monitorexit
    //   93: aload 4
    //   95: athrow
    //   96: aload_0
    //   97: monitorexit
    //   98: aload_1
    //   99: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	r
    //   9	90	1	localArrayList1	ArrayList
    //   84	4	2	localObject1	Object
    //   23	4	3	localArrayList2	ArrayList
    //   89	5	4	localObject2	Object
    //   32	13	5	localIterator	Iterator
    //   54	14	6	locald	d
    // Exception table:
    //   from	to	target	type
    //   2	12	84	finally
    //   26	34	84	finally
    //   34	81	84	finally
    //   93	96	84	finally
    //   12	26	89	finally
    //   91	93	89	finally
  }
  
  public void j(int paramInt)
  {
    this.k.post(new ah(this, paramInt));
  }
  
  public m k()
  {
    return this.e.b();
  }
  
  List<com.viber.voip.stickers.c.a> k(int paramInt)
  {
    return this.c.b(paramInt);
  }
  
  public int l()
  {
    Iterator localIterator = f().iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      if ((locald.c()) && (!locald.j())) {
        return locald.e();
      }
    }
    return 0;
  }
  
  public com.viber.voip.stickers.c.a l(int paramInt)
  {
    return a(paramInt, 0, true);
  }
  
  public void m()
  {
    this.k.post(new ai(this));
  }
  
  public boolean m(int paramInt)
  {
    return com.viber.voip.stickers.b.h.e(paramInt);
  }
  
  public void n()
  {
    this.b.a();
  }
  
  public void o()
  {
    ViberApplication.preferences().a("pref_package", this.q);
    this.b.b();
  }
  
  public ar p()
  {
    return this.f;
  }
  
  public boolean q()
  {
    if (!ft.b(ViberApplication.getInstance())) {}
    File localFile;
    do
    {
      do
      {
        return false;
      } while (!u());
      localFile = com.viber.voip.messages.extras.image.h.b(com.viber.voip.messages.extras.image.l.d, "temp");
    } while ((localFile == null) || (!localFile.canWrite()));
    try
    {
      FileWriter localFileWriter = new FileWriter(localFile);
      localFileWriter.write("test");
      localFileWriter.flush();
      localFileWriter.close();
      return true;
    }
    catch (IOException localIOException)
    {
      a("canBeDownloaded: " + Log.getStackTraceString(localIOException));
    }
    return false;
  }
  
  public void r() {}
  
  public void s()
  {
    this.e.a();
  }
  
  public void t()
  {
    this.g.a();
  }
  
  boolean u()
  {
    long l1 = System.currentTimeMillis();
    if (l1 - this.t > 10000L)
    {
      this.t = l1;
      return com.viber.voip.messages.extras.image.h.a(com.viber.voip.messages.extras.image.h.a());
    }
    return com.viber.voip.messages.extras.image.h.a(false);
  }
  
  public int v()
  {
    int i1 = this.q;
    if (this.q == 0) {
      i1 = ViberApplication.preferences().b("pref_package", 400);
    }
    if (!f(i1)) {
      i1 = l();
    }
    return i1;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.r
 * JD-Core Version:    0.7.0.1
 */