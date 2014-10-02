package com.viber.voip.contacts.b.b.a;

import android.content.ContentValues;
import android.text.TextUtils;
import com.viber.voip.contacts.b.a.d;
import com.viber.voip.contacts.b.h;
import com.viber.voip.messages.orm.annotation.ViberEntity;
import com.viber.voip.messages.orm.annotation.ViberEntityField;
import com.viber.voip.messages.orm.annotation.ViberEntityType;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.BaseEntity;
import com.viber.voip.util.a.b;
import com.viber.voip.util.a.f;
import com.viber.voip.util.bk;

@ViberEntity(authority="com.viber.provider.vibercontacts", table="phonebookcontact", type=ViberEntityType.Standard)
public class a
  extends BaseEntity
  implements h
{
  public static final CreatorHelper D = new d();
  private static String a = a.class.getSimpleName();
  @ViberEntityField(projection="version")
  protected int A;
  @ViberEntityField(projection="phonetic_name")
  protected String B;
  @ViberEntityField(projection="phone_label")
  protected String C;
  @ViberEntityField(projection="native_id")
  protected long l;
  @ViberEntityField(projection="display_name")
  protected String m;
  @ViberEntityField(projection="low_display_name")
  protected String n;
  @ViberEntityField(projection="numbers_name")
  protected String o;
  @ViberEntityField(projection="starred")
  protected boolean p;
  @ViberEntityField(projection="viber")
  protected boolean q;
  @ViberEntityField(projection="viber_out")
  protected boolean r;
  @ViberEntityField(projection="contact_lookup_key")
  protected String s;
  @ViberEntityField(projection="contact_hash")
  protected int t;
  @ViberEntityField(projection="has_number")
  protected boolean u;
  @ViberEntityField(projection="has_name")
  protected boolean v;
  @ViberEntityField(projection="native_photo_id")
  protected long w;
  @ViberEntityField(projection="recently_joined_date")
  protected long x;
  @ViberEntityField(projection="joined_date")
  protected long y;
  @ViberEntityField(projection="flags")
  protected int z;
  
  public a() {}
  
  public a(e parame)
  {
    this.id = parame.e();
    this.l = parame.e();
    this.w = parame.h();
    h(parame.f());
    m(parame.l());
    this.p = parame.j();
    this.s = parame.k();
    this.B = parame.m();
    this.C = parame.n();
  }
  
  public a(String paramString1, String paramString2)
  {
    h(paramString1);
    if ((!TextUtils.isEmpty(paramString1)) && (f.l(paramString1)) && (f.a(paramString1)))
    {
      m(f.k(paramString1).toLowerCase());
      b localb = com.viber.voip.util.a.a.a(paramString1, paramString2, this.n);
      this.n = localb.c;
      this.B = localb.b;
      this.C = localb.d;
      if (TextUtils.isEmpty(paramString1)) {
        break label131;
      }
    }
    label131:
    for (boolean bool = true;; bool = false)
    {
      this.v = bool;
      return;
      String str;
      if (TextUtils.isEmpty(paramString2)) {
        if (paramString1 != null) {
          str = paramString1.toLowerCase();
        }
      }
      for (;;)
      {
        m(str);
        break;
        str = "";
        continue;
        str = paramString2;
      }
    }
  }
  
  public String a()
  {
    return this.m;
  }
  
  public void a(boolean paramBoolean)
  {
    this.p = paramBoolean;
  }
  
  public boolean a(int... paramVarArgs)
  {
    return bk.a(this.z, paramVarArgs);
  }
  
  public void b(int paramInt)
  {
    this.t = paramInt;
  }
  
  public void b(long paramLong)
  {
    this.l = paramLong;
  }
  
  public void b(boolean paramBoolean)
  {
    this.q = paramBoolean;
  }
  
  public long c()
  {
    return this.l;
  }
  
  public void c(int paramInt)
  {
    this.A = paramInt;
  }
  
  public void c(long paramLong)
  {
    this.w = paramLong;
  }
  
  public void c(boolean paramBoolean)
  {
    this.r = paramBoolean;
  }
  
  public void d(int paramInt)
  {
    this.z = paramInt;
  }
  
  public void d(long paramLong)
  {
    this.x = paramLong;
  }
  
  public void d(boolean paramBoolean)
  {
    this.u = paramBoolean;
  }
  
  public boolean d()
  {
    return this.p;
  }
  
  public void e(long paramLong)
  {
    this.y = paramLong;
  }
  
  public void e(boolean paramBoolean)
  {
    this.v = paramBoolean;
  }
  
  public boolean e()
  {
    return this.q;
  }
  
  public long f()
  {
    return this.w;
  }
  
  public String g()
  {
    return this.s;
  }
  
  public ContentValues getContentValues()
  {
    ContentValues localContentValues = new ContentValues();
    if (this.id > 0L) {
      localContentValues.put("_id", Long.valueOf(this.id));
    }
    localContentValues.put("native_id", Long.valueOf(this.l));
    localContentValues.put("starred", Boolean.valueOf(this.p));
    localContentValues.put("display_name", this.m);
    localContentValues.put("low_display_name", this.n);
    localContentValues.put("numbers_name", this.o);
    localContentValues.put("viber_out", Boolean.valueOf(this.r));
    localContentValues.put("joined_date", Long.valueOf(this.y));
    localContentValues.put("has_number", Boolean.valueOf(this.u));
    localContentValues.put("has_name", Boolean.valueOf(this.v));
    localContentValues.put("native_photo_id", Long.valueOf(this.w));
    localContentValues.put("contact_lookup_key", this.s);
    localContentValues.put("viber", Boolean.valueOf(this.q));
    localContentValues.put("contact_hash", Integer.valueOf(this.t));
    localContentValues.put("contact_lookup_key", this.s);
    localContentValues.put("flags", Integer.valueOf(this.z));
    localContentValues.put("version", Integer.valueOf(this.A));
    localContentValues.put("phonetic_name", this.B);
    localContentValues.put("phone_label", this.C);
    return localContentValues;
  }
  
  public Creator getCreator()
  {
    return D;
  }
  
  public void h(String paramString)
  {
    i(paramString);
  }
  
  public void i(String paramString)
  {
    if (paramString == null) {
      paramString = "";
    }
    this.m = paramString;
  }
  
  public void j(String paramString)
  {
    this.B = paramString;
  }
  
  public void k(String paramString)
  {
    this.C = paramString;
  }
  
  public void l(String paramString)
  {
    this.o = paramString;
  }
  
  public void m(String paramString)
  {
    this.n = paramString;
  }
  
  public void n(String paramString)
  {
    this.s = paramString;
  }
  
  public String r()
  {
    return this.C;
  }
  
  public String s()
  {
    return this.B;
  }
  
  public int t()
  {
    return this.t;
  }
  
  public String toString()
  {
    return "ContactEntity [id(contact_id)=" + this.id + ", nativeId=" + this.l + ", hash=" + this.t + ", displayName=" + this.m + "(" + this.n + ")" + ", phoneticName=" + this.B + ", phoneLabel=" + this.C + ", numbersName=" + this.o + ", starred=" + this.p + ", viber=" + this.q + ", viberOut=" + this.r + ", lookupKey=" + this.s + ", hasNumbers=" + this.u + ", hasName=" + this.v + ", nativePhotoId=" + this.w + ", recentlyJoined=" + this.x + ", joinedDate=" + this.y + ", flags=" + this.z + ", version=" + this.A + "]";
  }
  
  public boolean u()
  {
    return this.v;
  }
  
  public long v()
  {
    return this.y;
  }
  
  public int w()
  {
    return this.A;
  }
  
  public int x()
  {
    return this.z;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a.a
 * JD-Core Version:    0.7.0.1
 */