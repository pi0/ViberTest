package com.viber.voip.contacts.b.b.a;

import android.content.ContentValues;
import com.viber.voip.contacts.b.i;
import com.viber.voip.messages.orm.annotation.ViberEntity;
import com.viber.voip.messages.orm.annotation.ViberEntityField;
import com.viber.voip.messages.orm.annotation.ViberEntityType;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.BaseEntity;

@ViberEntity(authority="com.viber.provider.vibercontacts", table="vibernumbers", type=ViberEntityType.Standard)
public class o
  extends BaseEntity
  implements i
{
  public static final CreatorHelper a = new p(o.class);
  private static String b = o.class.getSimpleName();
  private static boolean c = false;
  @ViberEntityField(projection="canonized_number")
  private String d;
  @ViberEntityField(projection="photo")
  private String e;
  @ViberEntityField(projection="actual_photo")
  private String f;
  @ViberEntityField(projection="viber_name")
  private String g;
  @ViberEntityField(projection="clear")
  private boolean h;
  
  public o() {}
  
  public o(String paramString1, String paramString2)
  {
    this.d = paramString1;
    this.e = paramString2;
    this.f = "";
  }
  
  public o(String paramString1, String paramString2, String paramString3)
  {
    this.d = paramString1;
    this.e = paramString2;
    this.f = paramString3;
  }
  
  public String a()
  {
    return this.d;
  }
  
  public void a(String paramString)
  {
    this.d = paramString;
  }
  
  public String b()
  {
    return this.f;
  }
  
  public String c()
  {
    if (this.e == null) {
      return "";
    }
    return this.e;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    o localo;
    do
    {
      do
      {
        return true;
        if (!super.equals(paramObject)) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        localo = (o)paramObject;
        if (this.d != null) {
          break;
        }
      } while (localo.d == null);
      return false;
    } while (this.d.equals(localo.d));
    return false;
  }
  
  public ContentValues getContentValues()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("canonized_number", this.d);
    localContentValues.put("photo", this.e);
    localContentValues.put("clear", Boolean.valueOf(this.h));
    localContentValues.put("viber_name", this.g);
    return localContentValues;
  }
  
  public Creator getCreator()
  {
    return a;
  }
  
  public int hashCode()
  {
    int i = 31 * super.hashCode();
    if (this.d == null) {}
    for (int j = 0;; j = this.d.hashCode()) {
      return j + i;
    }
  }
  
  public String toString()
  {
    return "ViberNumberEntityImpl [canonized=" + this.d + ", viberName=" + this.g + ", clear=" + this.h + ", photoId=" + this.e + ", actualPhotoId=" + this.f + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a.o
 * JD-Core Version:    0.7.0.1
 */