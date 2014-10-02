package com.viber.voip.e.a.a;

import android.net.Uri;
import java.util.List;

public class d
{
  public List<Uri> a;
  public String b;
  
  public d(List<Uri> paramList, String paramString)
  {
    this.a = paramList;
    this.b = paramString;
    a();
  }
  
  private void a()
  {
    int i;
    Uri localUri;
    if ((this.a != null) && (this.a.size() > 0))
    {
      i = this.a.size();
      localUri = (Uri)this.a.get(0);
      if (localUri != null) {
        break label48;
      }
    }
    label48:
    label106:
    for (;;)
    {
      return;
      int j = 1;
      if (j < i) {
        if (localUri.equals(this.a.get(j))) {}
      }
      for (int k = 0;; k = 1)
      {
        if (k == 0) {
          break label106;
        }
        this.a = this.a.subList(0, 1);
        return;
        j++;
        break;
      }
    }
  }
  
  public String toString()
  {
    return "NotificationData [participantPhotos = " + this.a.toString() + ", contentText = " + this.b + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.e.a.a.d
 * JD-Core Version:    0.7.0.1
 */