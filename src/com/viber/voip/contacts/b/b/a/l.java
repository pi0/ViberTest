package com.viber.voip.contacts.b.b.a;

import android.content.ContentValues;
import com.viber.voip.messages.orm.annotation.ViberEntity;
import com.viber.voip.messages.orm.annotation.ViberEntityField;
import com.viber.voip.messages.orm.annotation.ViberEntityType;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.BaseEntity;
import com.viber.voip.messages.orm.entity.EntityUpdater;

@ViberEntity(authority="com.viber.provider.vibercontacts", table="phonebookdata", type=ViberEntityType.Standard)
public class l
  extends BaseEntity
{
  private static String a = i.class.getSimpleName();
  public static final CreatorHelper k = new m(l.class);
  private static boolean l = false;
  @ViberEntityField(projection="data1")
  protected String b;
  @ViberEntityField(projection="data2")
  protected String c;
  @ViberEntityField(projection="data3")
  protected String d;
  @ViberEntityField(projection="data4")
  protected String e;
  @ViberEntityField(projection="data5")
  protected String f;
  @ViberEntityField(projection="int_data2")
  protected int g;
  @ViberEntityField(projection="mime_type")
  protected int h;
  @ViberEntityField(projection="contact_id")
  protected long i;
  @ViberEntityField(projection="raw_id")
  protected long j;
  private i m;
  private a n;
  
  public l() {}
  
  public l(e parame)
  {
    this.i = parame.e();
    this.j = parame.i();
    this.id = parame.getId();
  }
  
  public void a(long paramLong)
  {
    this.i = paramLong;
  }
  
  public void a(a parama)
  {
    this.n = parama;
  }
  
  public void a(i parami)
  {
    this.m = parami;
  }
  
  public void b(long paramLong)
  {
    this.j = paramLong;
  }
  
  public ContentValues getContentValues()
  {
    ContentValues localContentValues = new ContentValues();
    if (this.id > 0L) {
      localContentValues.put("_id", Long.valueOf(this.id));
    }
    localContentValues.put("raw_id", Long.valueOf(this.j));
    localContentValues.put("contact_id", Long.valueOf(this.i));
    localContentValues.put("data1", this.b);
    localContentValues.put("data2", this.c);
    localContentValues.put("data3", this.d);
    localContentValues.put("data4", this.e);
    localContentValues.put("data5", this.f);
    localContentValues.put("int_data2", Integer.valueOf(this.g));
    localContentValues.put("mime_type", Integer.valueOf(this.h));
    return localContentValues;
  }
  
  public Creator getCreator()
  {
    return k;
  }
  
  public long i()
  {
    return this.i;
  }
  
  public long j()
  {
    return this.j;
  }
  
  public int k()
  {
    return this.h;
  }
  
  public i l()
  {
    return this.m;
  }
  
  public a m()
  {
    return this.n;
  }
  
  public String n()
  {
    if (k() == 0) {
      return "vnd.android.cursor.item/phone_v2";
    }
    if (k() == 1) {
      return "vnd.android.cursor.item/email_v2";
    }
    return "";
  }
  
  public EntityUpdater<?> o()
  {
    return new n(this, new String[0]);
  }
  
  public String toString()
  {
    String str;
    switch (this.h)
    {
    default: 
      str = "unknouwn";
    }
    for (;;)
    {
      return "DataEntity super of " + str + "  [id(data_id)=" + this.id + ", data1=" + this.b + ", data2=" + this.c + ", data3=" + this.d + "data4=" + this.e + ", data5=" + this.f + ", mimeType=" + this.h + ", contactId=" + this.i + ", rawId=" + this.j + "]";
      str = "PhoneDataEntity";
      continue;
      str = "EmailDataEntity";
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a.l
 * JD-Core Version:    0.7.0.1
 */