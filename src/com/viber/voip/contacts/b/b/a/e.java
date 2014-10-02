package com.viber.voip.contacts.b.b.a;

import com.viber.voip.contacts.b.b.k;
import com.viber.voip.contacts.b.g;
import com.viber.voip.messages.orm.annotation.ViberEntity;
import com.viber.voip.messages.orm.annotation.ViberEntityField;
import com.viber.voip.messages.orm.annotation.ViberEntityType;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.entity.BaseEntity;

@ViberEntity(authority="com.android.contacts", table="data", type=ViberEntityType.Standard)
public class e
  extends BaseEntity
  implements g
{
  public static Creator a = new f(e.class);
  private static String b = e.class.getSimpleName();
  private static boolean c = false;
  @ViberEntityField(projection="contact_id")
  private long d;
  @ViberEntityField(projection="raw_contact_id")
  private long e;
  @ViberEntityField(projection="photo_id")
  private long f;
  @ViberEntityField(projection="version")
  private int g;
  @ViberEntityField(projection="display_name")
  private String h;
  @ViberEntityField(projection="data1")
  private String i;
  @ViberEntityField(projection="data2")
  private String j;
  @ViberEntityField(projection="data3")
  private String k;
  @ViberEntityField(projection="data5")
  private String l;
  @ViberEntityField(projection="data6")
  private String m;
  @ViberEntityField(projection="mimetype")
  private String n;
  @ViberEntityField(projection="starred")
  private int o;
  @ViberEntityField(projection="in_visible_group")
  private int p;
  @ViberEntityField(projection="lookup")
  private String q;
  @ViberEntityField(api=11, projection="sort_key")
  private String r;
  @ViberEntityField(api=11, projection="phonetic_name")
  private String s;
  private String t;
  
  public e() {}
  
  public e(k paramk)
  {
    this.i = paramk.c();
    try
    {
      this.j = String.valueOf(paramk.d());
      this.k = paramk.e();
      this.d = paramk.i();
      this.e = paramk.j();
      this.n = paramk.n();
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        this.j = "0";
      }
    }
  }
  
  public e(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, null);
  }
  
  public e(String paramString1, String paramString2, String paramString3)
  {
    this.i = paramString1;
    this.j = paramString2;
    this.k = paramString3;
  }
  
  public String a()
  {
    return this.n;
  }
  
  public String b()
  {
    return this.i;
  }
  
  public String c()
  {
    return this.j;
  }
  
  public String d()
  {
    return this.k;
  }
  
  public long e()
  {
    return this.d;
  }
  
  public String f()
  {
    return this.h;
  }
  
  public int g()
  {
    return this.g;
  }
  
  public Creator getCreator()
  {
    return a;
  }
  
  public long h()
  {
    return this.f;
  }
  
  public long i()
  {
    return this.e;
  }
  
  public boolean j()
  {
    return this.o == 1;
  }
  
  public String k()
  {
    return this.q;
  }
  
  public String l()
  {
    return this.r;
  }
  
  public String m()
  {
    return this.s;
  }
  
  public String n()
  {
    return this.t;
  }
  
  public String toString()
  {
    return "PhonebookDataEntityImpl [contactId=" + this.d + ", rawContactId=" + this.e + ", photoId=" + this.f + ", version=" + this.g + ", displayName=" + this.h + ", phoneticName=" + this.s + ", sortKey=" + this.r + ", phoneLabel=" + this.t + ", data1=" + this.i + ", data2=" + this.j + ", data3=" + this.k + ", data5=" + this.l + ", data6=" + this.m + ", mimeType=" + this.n + ", starred=" + this.o + ", inVisibleGroup=" + this.p + ", lookupKey=" + this.q + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a.e
 * JD-Core Version:    0.7.0.1
 */