package com.viber.voip.contacts;

import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.support.v4.app.LoaderManager;
import android.support.v4.util.LruCache;
import android.text.TextUtils;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.orm.creator.Creator;

public class b
  extends com.viber.provider.b
  implements a
{
  private static final Creator m = com.viber.voip.contacts.b.b.e.d;
  protected Handler h;
  protected boolean i;
  protected String j;
  protected String k;
  protected final Runnable l = new d(this);
  private final f n = new f(this);
  private final f o = new f(this);
  private final f p = new f(this);
  private final f q = new f(this);
  private final com.viber.voip.contacts.c.d.b r;
  private int s = -1;
  private String t;
  private LruCache<Integer, com.viber.voip.contacts.b.e> u = new c(this, 20);
  private com.viber.voip.contacts.c.d.e v = new e(this);
  
  protected b(int paramInt1, Context paramContext, LoaderManager paramLoaderManager, com.viber.voip.contacts.c.d.b paramb, com.viber.provider.e parame, int paramInt2)
  {
    super(paramInt1, m.getContentUri(), paramContext, paramLoaderManager, parame, 0);
    this.r = paramb;
    this.h = dc.a(dk.a);
    a(paramInt2, false);
    a(m.getProjections());
  }
  
  public b(Context paramContext, LoaderManager paramLoaderManager, com.viber.voip.contacts.c.d.b paramb, com.viber.provider.e parame)
  {
    this(1, paramContext, paramLoaderManager, paramb, parame, -1);
  }
  
  public b(Context paramContext, LoaderManager paramLoaderManager, com.viber.voip.contacts.c.d.b paramb, com.viber.provider.e parame, int paramInt)
  {
    this(1, paramContext, paramLoaderManager, paramb, parame, paramInt);
  }
  
  private void a(f paramf, f... paramVarArgs)
  {
    if (paramf != null) {
      f.c(paramf);
    }
    if (paramVarArgs != null)
    {
      int i1 = paramVarArgs.length;
      for (int i2 = 0; i2 < i1; i2++) {
        f.d(paramVarArgs[i2]);
      }
    }
  }
  
  private void a(f... paramVarArgs)
  {
    if (paramVarArgs != null)
    {
      int i1 = paramVarArgs.length;
      for (int i2 = 0; i2 < i1; i2++) {
        f.b(paramVarArgs[i2]);
      }
    }
  }
  
  private String b(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (!TextUtils.isEmpty(paramString1)) {}
    for (String str = paramString1 + " AND ";; str = "") {
      return str + paramString2;
    }
  }
  
  public int a(long paramLong)
  {
    return f.a(this.q, paramLong);
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    if (this.s != paramInt)
    {
      this.s = paramInt;
      p();
      if (paramBoolean) {
        g();
      }
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    a(paramString1.replaceAll("　", " "), paramString2, true);
  }
  
  public void a(String paramString1, String paramString2, int paramInt)
  {
    a(paramString1, paramString2, false);
    f(paramInt);
  }
  
  protected void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    this.j = paramString1;
    this.k = paramString2;
    boolean bool;
    String str1;
    String str2;
    if (!TextUtils.isEmpty(paramString1))
    {
      bool = true;
      if (bool != this.i)
      {
        this.i = bool;
        p();
      }
      str1 = e(this.j);
      if (TextUtils.isEmpty(this.k)) {
        break label144;
      }
      str2 = e(this.k);
      label69:
      if (!this.i) {
        break label151;
      }
    }
    label144:
    label151:
    for (String[] arrayOfString = { paramString1, str1, str1, str2 };; arrayOfString = null)
    {
      b(arrayOfString);
      if (paramBoolean)
      {
        this.h.removeCallbacks(this.l);
        this.h.postDelayed(this.l, 200L);
      }
      return;
      bool = false;
      break;
      str2 = str1;
      break label69;
    }
  }
  
  public int b(long paramLong)
  {
    return f.a(this.p, paramLong);
  }
  
  public com.viber.voip.contacts.b.e b(int paramInt)
  {
    com.viber.voip.contacts.b.e locale = (com.viber.voip.contacts.b.e)this.u.get(Integer.valueOf(paramInt));
    if ((locale == null) && (c(paramInt)))
    {
      locale = (com.viber.voip.contacts.b.e)m.createInstance(this.e);
      this.u.put(Integer.valueOf(paramInt), locale);
    }
    return locale;
  }
  
  public int c_()
  {
    return this.s;
  }
  
  public void d(String paramString)
  {
    int i1 = 1;
    if (paramString == null) {
      if (this.t == null) {
        break label47;
      }
    }
    for (;;)
    {
      this.t = paramString;
      if (i1 != 0)
      {
        p();
        g();
      }
      return;
      if (paramString.equals(this.t))
      {
        i1 = 0;
        continue;
        label47:
        i1 = 0;
      }
    }
  }
  
  public boolean d_()
  {
    return this.i;
  }
  
  protected String e(String paramString)
  {
    return "%" + paramString + "%";
  }
  
  public void e(int paramInt)
  {
    a(paramInt, true);
  }
  
  public void f(int paramInt)
  {
    a(paramInt, false);
    e();
  }
  
  protected void k()
  {
    super.k();
    this.u.evictAll();
    f[] arrayOff1 = new f[4];
    arrayOff1[0] = this.n;
    arrayOff1[1] = this.p;
    arrayOff1[2] = this.o;
    arrayOff1[3] = this.q;
    a(arrayOff1);
    if (this.e == null) {
      return;
    }
    int i1 = this.e.getColumnIndex("alias_union_type");
    int i2 = 0;
    label72:
    int i3;
    if ((i2 < this.e.getCount()) && (c(i2)) && (i1 != -1))
    {
      i3 = this.e.getInt(i1);
      if (i3 != 1) {
        break label166;
      }
      f localf3 = this.n;
      f[] arrayOff4 = new f[3];
      arrayOff4[0] = this.p;
      arrayOff4[1] = this.o;
      arrayOff4[2] = this.q;
      a(localf3, arrayOff4);
    }
    for (;;)
    {
      i2++;
      break label72;
      break;
      label166:
      if (i3 == 2)
      {
        f localf2 = this.p;
        f[] arrayOff3 = new f[2];
        arrayOff3[0] = this.o;
        arrayOff3[1] = this.q;
        a(localf2, arrayOff3);
      }
      else
      {
        if (i3 != 3) {
          break label248;
        }
        f localf1 = this.o;
        f[] arrayOff2 = new f[1];
        arrayOff2[0] = this.q;
        a(localf1, arrayOff2);
      }
    }
    label248:
    f.a(this.q, getCount() - f.a(this.q));
  }
  
  public void m()
  {
    this.r.b(this.v);
  }
  
  public void n()
  {
    this.r.a(this.v);
  }
  
  public String o()
  {
    return this.j;
  }
  
  protected void p()
  {
    String str = "";
    if (this.i) {
      str = b(str, q());
    }
    if (!TextUtils.isEmpty(this.t)) {
      str = b(str, "phonebookcontact._id NOT IN (" + this.t + ")");
    }
    if (this.s == 0) {
      str = b(str, "phonebookcontact.viber=1");
    }
    for (;;)
    {
      a(str);
      return;
      if (this.s == 2) {
        str = b(str, "phonebookcontact.viber=0");
      }
    }
  }
  
  protected String q()
  {
    return "(phonebookcontact.native_id IN (%s) OR phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?)))";
  }
  
  public f r()
  {
    return this.n;
  }
  
  public f s()
  {
    return this.o;
  }
  
  public f t()
  {
    return this.p;
  }
  
  public f u()
  {
    return this.q;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b
 * JD-Core Version:    0.7.0.1
 */