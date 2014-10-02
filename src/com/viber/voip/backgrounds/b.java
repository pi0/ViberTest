package com.viber.voip.backgrounds;

import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.b.w;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

class b
  implements m
{
  b(a parama) {}
  
  public void a(o paramo)
  {
    a.c("onBackgroundPackageDeployed: " + paramo.a + ", background count: " + paramo.a().size());
    this.a.b(paramo);
    Iterator localIterator = new HashSet(a.a(this.a)).iterator();
    while (localIterator.hasNext()) {
      ((m)localIterator.next()).a(paramo);
    }
  }
  
  public void a(o paramo, int paramInt)
  {
    Iterator localIterator = new HashSet(a.a(this.a)).iterator();
    while (localIterator.hasNext()) {
      ((m)localIterator.next()).a(paramo, paramInt);
    }
  }
  
  public void a(o paramo, q paramq)
  {
    a.c("onBackgroundPackageDeployed background: " + paramq.a);
    w.a(ViberApplication.getInstance()).b(Uri.parse(paramq.h.getPath()));
    Iterator localIterator = new HashSet(a.a(this.a)).iterator();
    while (localIterator.hasNext()) {
      ((m)localIterator.next()).a(paramo, paramq);
    }
  }
  
  public void a(q paramq)
  {
    a.c("onBackgroundDeployed: " + paramq.a);
    Iterator localIterator = new HashSet(a.a(this.a)).iterator();
    while (localIterator.hasNext()) {
      ((m)localIterator.next()).a(paramq);
    }
  }
  
  public void b(o paramo)
  {
    a.c("onDownloadError: " + paramo.a);
    Iterator localIterator = new HashSet(a.a(this.a)).iterator();
    while (localIterator.hasNext()) {
      ((m)localIterator.next()).b(paramo);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.backgrounds.b
 * JD-Core Version:    0.7.0.1
 */