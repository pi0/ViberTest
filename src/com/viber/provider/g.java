package com.viber.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class g
  extends h
{
  private Set<Uri> a = new HashSet(10);
  private final ContentResolver b;
  
  public g(ContentResolver paramContentResolver)
  {
    this.b = paramContentResolver;
  }
  
  public g(Context paramContext)
  {
    this(paramContext.getContentResolver());
  }
  
  public void a(Uri paramUri)
  {
    this.a.add(paramUri);
  }
  
  public void onCommit()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      Uri localUri = (Uri)localIterator.next();
      this.b.notifyChange(localUri, null);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.provider.g
 * JD-Core Version:    0.7.0.1
 */