package com.viber.voip.contacts.b.b;

import android.content.ContentValues;
import com.viber.voip.messages.orm.annotation.ViberEntity;
import com.viber.voip.messages.orm.annotation.ViberEntityField;
import com.viber.voip.messages.orm.annotation.ViberEntityType;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.BaseEntity;

@ViberEntity(authority="com.viber.provider.vibercontacts", table="blockednumbers", type=ViberEntityType.Standard)
public class b
  extends BaseEntity
  implements com.viber.voip.contacts.b.a
{
  public static final CreatorHelper a = new c(b.class);
  @ViberEntityField(projection="canonized_number")
  private String b;
  @ViberEntityField(projection="blocked_date")
  private long c;
  
  public String a()
  {
    return this.b;
  }
  
  public void a(long paramLong)
  {
    this.c = paramLong;
  }
  
  public void a(String paramString)
  {
    this.b = paramString;
  }
  
  public long b()
  {
    return this.c;
  }
  
  public ContentValues getContentValues()
  {
    return a.a(this);
  }
  
  public Creator getCreator()
  {
    return a;
  }
  
  public String toString()
  {
    return "BlockedNumberEntityImpl{canonizedNumber='" + this.b + '\'' + ", blockedDate=" + this.c + '}';
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.b
 * JD-Core Version:    0.7.0.1
 */