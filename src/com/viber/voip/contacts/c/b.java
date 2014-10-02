package com.viber.voip.contacts.c;

import java.util.Queue;

final class b
  extends r
{
  b(boolean paramBoolean)
  {
    super(null);
  }
  
  public void a()
  {
    for (;;)
    {
      synchronized ()
      {
        a.c("SYNC Queue onDownloadFail downloadPhotoIdList.size = " + a.a().size());
        if (a.a().size() > 0)
        {
          s locals1 = (s)a.a().peek();
          a.c("SYNC Queue onDownloadFail");
          locals1.b.a();
          a.a().poll();
          if (a.a().size() > 0)
          {
            s locals2 = (s)a.a().peek();
            a.c("SYNC Queue onDownloadFail try to download next photo id = " + locals2.a);
            a.a(locals2.a, this.a, this);
            return;
          }
          a.c("SYNC Queue onDownloadFail downloading finished with errors!");
          a.a(false);
          locals1.b.a();
        }
      }
      a.a(false);
    }
  }
  
  public void a(String paramString)
  {
    synchronized ()
    {
      s locals = (s)a.a().poll();
      if (a.a().size() > 0)
      {
        a.a(((s)a.a().peek()).a, this.a, this);
        a.c("SYNC Queue onDownloadComplete downloadPhotoIdList.size = " + a.a().size() + " is downloading = " + a.b());
        if (locals.b != null) {
          locals.b.a(paramString);
        }
        return;
      }
      a.a(false);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.b
 * JD-Core Version:    0.7.0.1
 */