package com.viber.voip.contacts.c;

import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.k;
import com.viber.voip.messages.controller.dn;
import com.viber.voip.registration.cp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class n
  implements k
{
  n(m paramm) {}
  
  public void a(Set<com.viber.voip.contacts.b.i> paramSet)
  {
    a.c("addPhotoToParticipants onObtain viberNumbers" + paramSet);
    ArrayList localArrayList = new ArrayList();
    String str1 = ViberApplication.getInstance().getRegistrationValues().f();
    String[] arrayOfString1 = this.a.a;
    int i = arrayOfString1.length;
    int j = 0;
    String str2;
    if (j < i)
    {
      str2 = arrayOfString1[j];
      if ((str1.equals(str2)) || (TextUtils.isEmpty(str2))) {
        a.c("addPhotoToParticipants we don't need update our info.");
      }
    }
    label317:
    for (;;)
    {
      j++;
      break;
      if ((paramSet != null) && (paramSet.size() > 0))
      {
        Iterator localIterator = paramSet.iterator();
        while (localIterator.hasNext())
        {
          com.viber.voip.contacts.b.i locali = (com.viber.voip.contacts.b.i)localIterator.next();
          if (locali.a().equals(str2))
          {
            String str3 = locali.c();
            a.c("addPhotoToParticipants viber from contact book photoId = " + str3);
            a.a(str3, str2, new o(this));
          }
        }
      }
      for (int k = 1;; k = 0)
      {
        if (k != 0) {
          break label317;
        }
        localArrayList.add(str2);
        break;
        localArrayList.add(str2);
        break;
        if (localArrayList.size() > 0)
        {
          String[] arrayOfString2 = (String[])localArrayList.toArray(new String[0]);
          a.c("addPhotoToParticipants needGetInfoList (update list) = " + Arrays.toString(arrayOfString2));
          ViberApplication.getInstance().getMessagesManager().e().a(arrayOfString2, new p(this));
        }
        return;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.n
 * JD-Core Version:    0.7.0.1
 */