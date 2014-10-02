package com.viber.voip.contacts.b.b;

import android.net.Uri;
import android.telephony.PhoneNumberUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.a;
import com.viber.voip.contacts.b.b.a.e;
import com.viber.voip.contacts.b.b.a.o;
import com.viber.voip.contacts.b.i;
import com.viber.voip.contacts.c.f.b.d;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.util.hd;

public class k
  extends com.viber.voip.contacts.b.b.a.l
  implements com.viber.voip.contacts.b.f
{
  public static final CreatorHelper a;
  private static String l = k.class.getSimpleName();
  private static boolean m = false;
  private i n;
  private a o;
  
  static
  {
    Uri localUri = com.viber.provider.contacts.f.c;
    Creator[] arrayOfCreator = new Creator[3];
    arrayOfCreator[0] = com.viber.voip.contacts.b.b.a.l.k;
    arrayOfCreator[1] = o.a;
    arrayOfCreator[2] = b.a;
    a = new l(localUri, com.viber.voip.contacts.b.b.a.l.class, arrayOfCreator);
  }
  
  public k() {}
  
  public k(e parame)
  {
    super(parame);
    this.b = PhoneNumberUtils.stripSeparators(parame.b());
    this.c = hd.a(ViberApplication.getInstance(), this.b, this.b);
    this.d = parame.b();
    this.e = parame.c();
    this.f = parame.d();
    this.g = a(b());
    this.h = 0;
  }
  
  public k(d paramd)
  {
    this.b = PhoneNumberUtils.stripSeparators(paramd.a);
    this.c = paramd.b;
    this.d = paramd.a;
    this.g = a(b());
    this.h = 0;
  }
  
  public k(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this.b = paramString3;
    this.c = paramString1;
    this.d = paramString2;
    this.e = paramString4;
    this.f = paramString5;
    this.g = a(b());
    this.h = 0;
  }
  
  public static int a(String paramString)
  {
    int i = hd.b(ViberApplication.getInstance(), paramString);
    if (i > 0)
    {
      if (hd.a(ViberApplication.getInstance(), i)) {
        return 0;
      }
      return 1;
    }
    return -1;
  }
  
  public String a()
  {
    return this.b;
  }
  
  public void a(i parami)
  {
    this.n = parami;
  }
  
  public String b()
  {
    return this.c;
  }
  
  public String c()
  {
    return this.d;
  }
  
  public int d()
  {
    int i = -1;
    try
    {
      if (this.e != null)
      {
        int j = Integer.valueOf(this.e).intValue();
        i = j;
      }
      return i;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return i;
  }
  
  public String e()
  {
    return this.f;
  }
  
  public i f()
  {
    return this.n;
  }
  
  public boolean g()
  {
    return this.g == 1;
  }
  
  public a h()
  {
    return this.o;
  }
  
  public String toString()
  {
    return "NumberDataEntityImpl [id=" + this.id + ", number=" + this.b + ", canonized=" + this.c + ", original=" + this.d + ", type=" + this.e + ", label=" + this.f + ", localNumber=" + this.g + ", mimeType=" + this.h + ", contactId=" + this.i + ", rawId=" + this.j + ", viberNumber=" + this.n + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.k
 * JD-Core Version:    0.7.0.1
 */