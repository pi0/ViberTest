package com.viber.voip.contacts.b.b;

import android.content.ContentUris;
import android.content.Context;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import android.text.TextUtils;
import com.viber.voip.contacts.b.a.j;
import com.viber.voip.contacts.b.a.m;
import com.viber.voip.contacts.b.b.a.l;
import com.viber.voip.contacts.b.b.a.o;
import com.viber.voip.contacts.b.c;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.manager.AsyncEntityManager;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

public class e
  extends com.viber.voip.contacts.b.b.a.a
  implements com.viber.voip.contacts.b.b, com.viber.voip.contacts.b.e
{
  public static final CreatorHelper b = new m();
  public static final CreatorHelper c = new j();
  public static final CreatorHelper d = new com.viber.voip.contacts.b.a.i();
  public static final CreatorHelper e = new com.viber.voip.contacts.b.a.k();
  public static final Comparator<com.viber.voip.contacts.b.i> j = new g();
  public static final Comparator<com.viber.voip.contacts.b.f> k = new h();
  private String E;
  private String F;
  private String G;
  private String H;
  private String I;
  private String J;
  private int a;
  protected TreeSet<com.viber.voip.contacts.b.i> f;
  protected TreeSet<String> g;
  protected TreeMap<String, com.viber.voip.contacts.b.f> h;
  protected Set<String> i;
  
  public e() {}
  
  public e(com.viber.voip.contacts.b.b.a.e parame)
  {
    super(parame);
  }
  
  public void a(int paramInt)
  {
    this.a = paramInt;
  }
  
  public void a(Context paramContext, c paramc)
  {
    new AsyncEntityManager(l.k, true).fillCursor(com.viber.voip.contacts.c.e.b.a(paramContext), new f(this, paramc), 0, "mime_type=0 AND contact_id=" + this.id, new String[0]);
  }
  
  public void a(Uri paramUri)
  {
    throw new RuntimeException("Stub");
  }
  
  public void a(String paramString)
  {
    this.E = paramString;
  }
  
  public void a(TreeSet<com.viber.voip.contacts.b.i> paramTreeSet)
  {
    this.f = paramTreeSet;
  }
  
  public Uri b()
  {
    Uri localUri = k();
    if ((localUri == null) && (this.l > 0L)) {
      localUri = ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, this.l);
    }
    return localUri;
  }
  
  public com.viber.voip.contacts.b.i b(String paramString)
  {
    if ((h() == null) || (TextUtils.isEmpty(paramString))) {
      return null;
    }
    Iterator localIterator = h().iterator();
    while (localIterator.hasNext())
    {
      com.viber.voip.contacts.b.i locali = (com.viber.voip.contacts.b.i)localIterator.next();
      if (paramString.equals(locali.a())) {
        return locali;
      }
    }
    return null;
  }
  
  public void c(String paramString)
  {
    this.F = paramString;
  }
  
  public void d(String paramString)
  {
    this.J = paramString;
  }
  
  public void e(String paramString)
  {
    this.G = paramString;
  }
  
  public void f(String paramString)
  {
    this.H = paramString;
  }
  
  public void g(String paramString)
  {
    this.I = paramString;
  }
  
  public Collection<com.viber.voip.contacts.b.i> h()
  {
    if (this.f == null)
    {
      this.f = new TreeSet(j);
      if (this.H != null)
      {
        String[] arrayOfString1 = this.H.split(",");
        int m = arrayOfString1.length;
        int n = 0;
        if (n < m)
        {
          String str1 = arrayOfString1[n];
          String[] arrayOfString2;
          String str2;
          label82:
          String str3;
          if (!TextUtils.isEmpty(str1))
          {
            arrayOfString2 = str1.split(":");
            if (arrayOfString2.length <= 0) {
              break label155;
            }
            str2 = arrayOfString2[0];
            if (arrayOfString2.length <= 1) {
              break label162;
            }
            str3 = arrayOfString2[1];
            label95:
            if (arrayOfString2.length <= 2) {
              break label169;
            }
          }
          label155:
          label162:
          label169:
          for (String str4 = arrayOfString2[2];; str4 = "")
          {
            if ((!TextUtils.isEmpty(str2)) && (!"null".equals(str2))) {
              this.f.add(new o(arrayOfString2[0], str3, str4));
            }
            n++;
            break;
            str2 = "";
            break label82;
            str3 = "";
            break label95;
          }
        }
      }
      this.H = null;
    }
    return this.f;
  }
  
  public com.viber.voip.contacts.b.i i()
  {
    if (h() == null) {}
    Iterator localIterator;
    do
    {
      return null;
      localIterator = h().iterator();
    } while (!localIterator.hasNext());
    return (com.viber.voip.contacts.b.i)localIterator.next();
  }
  
  public TreeMap<String, com.viber.voip.contacts.b.f> j()
  {
    if (this.h == null)
    {
      HashMap localHashMap = new HashMap();
      if (this.G != null) {
        for (String str6 : this.G.split(",")) {
          if ((!TextUtils.isEmpty(str6)) && (!"null".equals(str6)))
          {
            String[] arrayOfString4 = str6.split(":");
            if (arrayOfString4.length >= 2) {
              localHashMap.put(arrayOfString4[0], arrayOfString4[1]);
            }
          }
        }
      }
      this.h = new TreeMap();
      if (this.F != null)
      {
        String[] arrayOfString1 = this.F.split(",")[0].split(":");
        int m = arrayOfString1.length;
        int n = 0;
        if (n < m)
        {
          String str1 = arrayOfString1[n];
          String[] arrayOfString2;
          String str2;
          label193:
          String str3;
          label206:
          String str4;
          if (!TextUtils.isEmpty(str1))
          {
            arrayOfString2 = str1.split(":");
            if (arrayOfString2.length < 1) {
              break label274;
            }
            str2 = arrayOfString2[0];
            if (arrayOfString2.length < 2) {
              break label281;
            }
            str3 = arrayOfString2[1];
            if (arrayOfString2.length < 3) {
              break label288;
            }
            str4 = arrayOfString2[2];
            label219:
            if (arrayOfString2.length < 4) {
              break label295;
            }
          }
          label274:
          label281:
          label288:
          label295:
          for (String str5 = arrayOfString2[3];; str5 = "")
          {
            this.h.put(str2, new k(str2, str3, str4, str5, (String)localHashMap.get(str2)));
            n++;
            break;
            str2 = "";
            break label193;
            str3 = "";
            break label206;
            str4 = "";
            break label219;
          }
        }
      }
      this.G = null;
      this.F = null;
    }
    return this.h;
  }
  
  public Uri k()
  {
    com.viber.voip.contacts.b.i locali = i();
    Uri localUri = null;
    if (locali != null)
    {
      localUri = com.viber.voip.contacts.c.a.a(i().b(), false);
      if (localUri == null) {
        localUri = com.viber.voip.contacts.c.a.a(i().c(), false);
      }
      if (localUri == null) {
        com.viber.voip.contacts.c.a.b(i().b());
      }
    }
    return localUri;
  }
  
  public Set<String> l()
  {
    if (this.i == null) {
      if (!TextUtils.isEmpty(this.E)) {
        break label38;
      }
    }
    label38:
    for (this.i = new HashSet();; this.i = new HashSet(Arrays.asList(this.E.split(","))))
    {
      this.E = null;
      return this.i;
    }
  }
  
  public String p()
  {
    return this.J;
  }
  
  public com.viber.voip.contacts.b.f q()
  {
    if (j() == null) {
      return null;
    }
    String str = (String)j().firstKey();
    if (str == null) {
      return null;
    }
    return (com.viber.voip.contacts.b.f)j().get(str);
  }
  
  public String toString()
  {
    return super.toString() + ", smsCount=" + this.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.e
 * JD-Core Version:    0.7.0.1
 */