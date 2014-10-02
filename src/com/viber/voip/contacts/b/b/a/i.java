package com.viber.voip.contacts.b.b.a;

import android.content.ContentValues;
import com.viber.voip.messages.orm.annotation.ViberEntity;
import com.viber.voip.messages.orm.annotation.ViberEntityField;
import com.viber.voip.messages.orm.annotation.ViberEntityType;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.BaseEntity;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.entity.EntityUpdater;
import java.util.Iterator;
import java.util.Set;

@ViberEntity(authority="com.viber.provider.vibercontacts", table="phonebookrawcontact", type=ViberEntityType.Standard)
public class i
  extends BaseEntity
{
  public static final CreatorHelper a = new j(i.class);
  private static String b = i.class.getSimpleName();
  private static boolean c = false;
  @ViberEntityField(projection="contact_id")
  private long d;
  @ViberEntityField(projection="version")
  private int e;
  @ViberEntityField(projection="starred")
  private boolean f;
  private Set<l> g;
  private a h;
  
  public i() {}
  
  public i(e parame)
  {
    this.id = parame.i();
    this.d = parame.e();
    this.f = parame.j();
    this.e = parame.g();
  }
  
  public long a()
  {
    return this.d;
  }
  
  public l a(long paramLong)
  {
    Iterator localIterator = this.g.iterator();
    while (localIterator.hasNext())
    {
      l locall = (l)localIterator.next();
      if (locall.getId() == paramLong) {
        return locall;
      }
    }
    return null;
  }
  
  public void a(a parama)
  {
    this.h = parama;
  }
  
  public void a(Set<l> paramSet)
  {
    this.g = paramSet;
  }
  
  public Set<l> b()
  {
    return this.g;
  }
  
  public EntityUpdater<? extends Entity> c()
  {
    return new k(this, new String[0]);
  }
  
  public ContentValues getContentValues()
  {
    ContentValues localContentValues = new ContentValues();
    if (this.id >= 0L) {
      localContentValues.put("_id", Long.valueOf(this.id));
    }
    localContentValues.put("contact_id", Long.valueOf(this.d));
    localContentValues.put("starred", Boolean.valueOf(this.f));
    localContentValues.put("version", Integer.valueOf(this.e));
    return localContentValues;
  }
  
  public Creator getCreator()
  {
    return a;
  }
  
  public String toString()
  {
    return "RawContactEntity [id(raw_id)=" + this.id + ", contactId=" + this.d + ", version=" + this.e + ", starred=" + this.f + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a.i
 * JD-Core Version:    0.7.0.1
 */