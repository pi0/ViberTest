package com.viber.voip.gallery.preview;

import android.net.Uri;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class a
  implements Runnable
{
  private final List<Uri> a;
  
  public a(List<Uri> paramList)
  {
    this.a = paramList;
  }
  
  public a(Uri... paramVarArgs)
  {
    this.a = Arrays.asList(paramVarArgs);
  }
  
  public void run()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      Uri localUri = (Uri)localIterator.next();
      if (com.viber.voip.gallery.b.a.a(localUri)) {
        com.viber.voip.gallery.b.a.c(localUri);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.preview.a
 * JD-Core Version:    0.7.0.1
 */