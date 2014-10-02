package com.viber.voip.e;

import android.content.res.Resources;
import android.text.TextUtils;
import android.util.SparseIntArray;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.j;
import com.viber.voip.messages.orm.entity.ConversationEntity;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.registration.cp;
import com.viber.voip.util.fq;
import com.viber.voip.util.l;
import java.util.regex.Pattern;

public class ad
{
  private static final String a = ad.class.getSimpleName();
  private Resources b;
  private MessageEntityImpl c;
  private ConversationEntity d;
  private ParticipantInfoEntityImpl e;
  private String f;
  private CharSequence g;
  private CharSequence h;
  private String i;
  private int j = -3;
  private String k;
  private int l;
  private boolean m;
  private boolean n;
  private boolean o;
  
  public ad(Resources paramResources, MessageEntityImpl paramMessageEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, ConversationEntity paramConversationEntity, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.b = paramResources;
    this.c = paramMessageEntityImpl;
    this.d = paramConversationEntity;
    this.e = paramParticipantInfoEntityImpl;
    this.o = paramBoolean2;
    this.m = paramConversationEntity.isConversationGroup();
    this.n = paramBoolean1;
    this.l = j.a(paramMessageEntityImpl.getMimeType());
    this.i = f();
    g();
  }
  
  private void a(MessageEntityImpl paramMessageEntityImpl)
  {
    this.f = this.i;
    Resources localResources = this.b;
    int i1 = u.a.get(this.l);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.c.getBody();
    this.g = localResources.getString(i1, arrayOfObject);
    this.h = (this.i + " " + this.g);
    this.j = ((int)paramMessageEntityImpl.getConversationId());
    this.k = "group_follow";
  }
  
  private void a(MessageEntityImpl paramMessageEntityImpl, ConversationEntity paramConversationEntity)
  {
    String[] arrayOfString = paramMessageEntityImpl.getBody().split("/");
    String str1;
    if (!TextUtils.isEmpty(paramConversationEntity.getGroupName()))
    {
      str1 = paramConversationEntity.getGroupName();
      if (!"group_rename".equals(arrayOfString[0])) {
        break label282;
      }
      if (!paramMessageEntityImpl.isPublicGroup()) {
        break label185;
      }
      this.f = this.b.getString(2131493574);
      Resources localResources7 = this.b;
      Object[] arrayOfObject7 = new Object[3];
      arrayOfObject7[0] = arrayOfString[2];
      arrayOfObject7[1] = arrayOfString[3];
      arrayOfObject7[2] = this.i;
      this.h = localResources7.getString(2131493575, arrayOfObject7);
      Resources localResources8 = this.b;
      Object[] arrayOfObject8 = new Object[3];
      arrayOfObject8[0] = arrayOfString[2];
      arrayOfObject8[1] = arrayOfString[3];
      arrayOfObject8[2] = this.i;
      this.g = localResources8.getString(2131493577, arrayOfObject8);
      label155:
      this.j = ((int)paramMessageEntityImpl.getConversationId());
      this.k = "rename";
    }
    label185:
    label464:
    do
    {
      return;
      str1 = this.b.getString(2131494051);
      break;
      this.f = arrayOfString[2];
      Resources localResources5 = this.b;
      Object[] arrayOfObject5 = new Object[3];
      arrayOfObject5[0] = arrayOfString[2];
      arrayOfObject5[1] = arrayOfString[3];
      arrayOfObject5[2] = this.i;
      this.h = localResources5.getString(2131493575, arrayOfObject5);
      Resources localResources6 = this.b;
      Object[] arrayOfObject6 = new Object[2];
      arrayOfObject6[0] = arrayOfString[3];
      arrayOfObject6[1] = this.i;
      this.g = localResources6.getString(2131493576, arrayOfObject6);
      break label155;
      if (("add".equals(arrayOfString[0])) || ("many_add".equals(arrayOfString[0])))
      {
        String str2 = ViberApplication.getInstance().getRegistrationValues().f();
        if ((!TextUtils.isEmpty(str2)) && (arrayOfString.length > 1) && (str2.equals(arrayOfString[1])))
        {
          this.f = this.b.getString(2131493572, new Object[] { str1 });
          Resources localResources1 = this.b;
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = this.i;
          arrayOfObject1[1] = str1;
          this.h = localResources1.getString(2131493573, arrayOfObject1);
          this.g = this.h;
          this.k = "you_join";
          this.j = ((int)paramMessageEntityImpl.getConversationId());
          return;
        }
        this.f = str1;
        l locall = ViberApplication.getInstance().getBiDiAwareFormatter();
        CharSequence localCharSequence;
        if ("many_add".equals(arrayOfString[0]))
        {
          localCharSequence = locall.g(arrayOfString[2], str1);
          this.h = localCharSequence;
          this.g = this.h;
          if (!paramConversationEntity.isPublicGroup()) {
            break label518;
          }
        }
        for (String str3 = "pg_join";; str3 = "join")
        {
          this.k = str3;
          break;
          localCharSequence = locall.e(this.i, str1);
          break label464;
        }
      }
      if ("group_icon_changed".equals(arrayOfString[0]))
      {
        this.f = str1;
        Resources localResources4 = this.b;
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = this.i;
        this.g = localResources4.getString(2131493582, arrayOfObject4);
        this.h = (this.f + ": " + this.g);
        this.j = ((int)paramMessageEntityImpl.getConversationId());
        this.k = "group_icon_changed";
        return;
      }
      if ("group_background_changed".equals(arrayOfString[0]))
      {
        this.f = this.b.getString(2131493583);
        Resources localResources3 = this.b;
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = this.i;
        arrayOfObject3[1] = str1;
        this.g = localResources3.getString(2131493584, arrayOfObject3);
        this.h = (this.f + ": " + this.g);
        this.j = ((int)paramMessageEntityImpl.getConversationId());
        this.k = "group_background_changed";
        return;
      }
    } while (!"many_group_attrs_changed".equals(arrayOfString[0]));
    label282:
    this.f = str1;
    label518:
    Resources localResources2 = this.b;
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = this.i;
    arrayOfObject2[1] = arrayOfString[2];
    this.g = localResources2.getString(2131493585, arrayOfObject2);
    this.h = (this.f + ": " + this.g);
    this.j = ((int)paramMessageEntityImpl.getConversationId());
    this.k = "group_many_attrs_changed";
  }
  
  private void a(String paramString) {}
  
  private String f()
  {
    String str;
    if (this.e != null)
    {
      str = this.e.getCommonContactName(this.m);
      if ((!TextUtils.isEmpty(str)) || (!this.c.getRecipientNumber().matches(fq.g.pattern()))) {
        break label84;
      }
      str = this.c.getRecipientNumber();
    }
    for (;;)
    {
      a("getParticipantContactName: contactName=" + str);
      return str;
      str = "";
      break;
      label84:
      if (TextUtils.isEmpty(str)) {
        str = this.b.getString(2131494823);
      }
    }
  }
  
  private void g()
  {
    if (10 == this.l)
    {
      a(this.c, this.d);
      return;
    }
    if (-5 == this.l)
    {
      a(this.c);
      return;
    }
    if (12 == this.l)
    {
      i();
      return;
    }
    if (this.n)
    {
      h();
      return;
    }
    j();
  }
  
  private void h()
  {
    int i1;
    String str2;
    label44:
    label50:
    Resources localResources;
    Object[] arrayOfObject;
    if (this.m)
    {
      i1 = 2131493568;
      if (!this.m) {
        break label137;
      }
      if (TextUtils.isEmpty(this.d.getGroupName())) {
        break label123;
      }
      str2 = this.d.getGroupName();
      this.f = str2;
      localResources = this.b;
      arrayOfObject = new Object[1];
      if (!this.m) {
        break label148;
      }
    }
    label137:
    label148:
    for (String str1 = this.f;; str1 = this.i)
    {
      arrayOfObject[0] = str1;
      this.h = localResources.getString(i1, arrayOfObject);
      this.g = this.h;
      this.j = ((int)this.c.getConversationId());
      this.k = "smart";
      return;
      i1 = 2131493569;
      break;
      label123:
      str2 = this.b.getString(2131494051);
      break label44;
      this.f = this.i;
      break label50;
    }
  }
  
  private void i()
  {
    this.f = this.b.getString(2131493810);
    this.g = this.i;
    this.h = (this.i + "\n" + this.b.getString(2131493810));
    this.j = -3;
    this.k = "missed_call";
  }
  
  private void j()
  {
    int i1;
    String str1;
    l locall;
    String str6;
    if ((this.m) && (this.o))
    {
      i1 = 2131493563;
      if (11 == this.l) {
        i1 = 2131494105;
      }
      str1 = this.i;
      this.f = str1;
      this.g = this.c.getBody();
      locall = ViberApplication.getInstance().getBiDiAwareFormatter();
      if ((!this.m) || (!this.o)) {
        break label169;
      }
      this.f = this.b.getString(2131493563);
      if (TextUtils.isEmpty(this.d.getGroupName())) {
        break label155;
      }
      str6 = this.d.getGroupName();
      label113:
      this.h = locall.c(str1, str6);
      this.g = this.h;
    }
    for (;;)
    {
      this.j = -3;
      this.k = "message";
      return;
      i1 = 2131493565;
      break;
      label155:
      str6 = this.b.getString(2131494051);
      break label113;
      label169:
      if ((u.d) && ((this.l == 0) || (11 == this.l)))
      {
        String str4 = this.c.getBody();
        if ((this.m) && (!this.o) && (this.d != null))
        {
          if (!TextUtils.isEmpty(this.d.getGroupName())) {}
          for (String str5 = this.d.getGroupName();; str5 = this.b.getString(2131494051))
          {
            this.f = str5;
            this.h = locall.a(str1, str5, str4);
            this.g = locall.d(str1, str4);
            break;
          }
        }
        this.h = locall.d(str1, str4);
      }
      else
      {
        if ((this.m) && (!this.o))
        {
          String str2 = this.c.getBody();
          String str3;
          if (this.d != null) {
            if (!TextUtils.isEmpty(this.d.getGroupName()))
            {
              str3 = this.d.getGroupName();
              label370:
              int i2 = u.c.get(this.l);
              this.f = str3;
              this.h = locall.a(i2, this.i, str3);
              i1 = i2;
            }
          }
          for (;;)
          {
            this.g = locall.a(i1, str1);
            break;
            str3 = this.b.getString(2131494051);
            break label370;
            this.f = this.b.getString(i1);
            this.h = locall.d(str1, str2);
          }
        }
        this.h = locall.a(u.b.get(this.l), this.i);
        this.g = this.b.getString(u.a.get(this.l));
      }
    }
  }
  
  public String a()
  {
    return this.f;
  }
  
  public CharSequence b()
  {
    return this.g;
  }
  
  public CharSequence c()
  {
    if ((this.h != null) && (this.h.length() > 140)) {
      return this.h.subSequence(0, 137) + "...";
    }
    return this.h;
  }
  
  public String d()
  {
    return this.k;
  }
  
  public int e()
  {
    return this.j;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.e.ad
 * JD-Core Version:    0.7.0.1
 */