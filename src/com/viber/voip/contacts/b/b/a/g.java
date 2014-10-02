package com.viber.voip.contacts.b.b.a;

import com.viber.voip.messages.orm.annotation.ViberEntity;
import com.viber.voip.messages.orm.annotation.ViberEntityField;
import com.viber.voip.messages.orm.annotation.ViberEntityType;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.entity.BaseEntity;

@ViberEntity(authority="com.android.contacts", table="raw_contacts", type=ViberEntityType.Standard)
public class g
  extends BaseEntity
{
  public static Creator a = new h(g.class);
  private static String b = g.class.getSimpleName();
  private static boolean c = false;
  @ViberEntityField(projection="contact_id")
  private long d;
  @ViberEntityField(projection="deleted")
  private boolean e;
  
  public Creator getCreator()
  {
    return a;
  }
  
  public String toString()
  {
    return "ContactRawEntity [contactId=" + this.d + ", deleted=" + this.e + ", id=" + this.id + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a.g
 * JD-Core Version:    0.7.0.1
 */