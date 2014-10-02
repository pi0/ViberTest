package com.viber.voip.contacts.b.b.a;

import com.viber.voip.messages.orm.annotation.ViberEntity;
import com.viber.voip.messages.orm.annotation.ViberEntityField;
import com.viber.voip.messages.orm.annotation.ViberEntityType;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.entity.BaseEntity;

@ViberEntity(authority="com.android.contacts", table="contacts", type=ViberEntityType.Standard)
public class c
  extends BaseEntity
{
  public static Creator a = new d(c.class);
  private static String b = c.class.getSimpleName();
  private static boolean c = false;
  @ViberEntityField(projection="in_visible_group")
  private boolean d;
  @ViberEntityField(projection="has_phone_number")
  private boolean e;
  
  public Creator getCreator()
  {
    return a;
  }
  
  public String toString()
  {
    return "PhonebookContactEntity [id=" + this.id + ", inVisibleGroup=" + this.d + ", hasNumber=" + this.e + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a.c
 * JD-Core Version:    0.7.0.1
 */