package com.viber.provider;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import android.text.TextUtils;

class c
  implements LoaderManager.LoaderCallbacks<Cursor>
{
  c(b paramb) {}
  
  public void a(Loader<Cursor> paramLoader, Cursor paramCursor)
  {
    if (b.f(this.a)) {
      b.a(this.a, false);
    }
    synchronized (this.a)
    {
      if (b.g(this.a))
      {
        b.b(this.a, false);
        this.a.g();
      }
      return;
      b.a(this.a, paramCursor);
    }
  }
  
  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    synchronized (this.a)
    {
      Context localContext = this.a.c;
      Uri localUri = this.a.d;
      String[] arrayOfString1 = b.a(this.a);
      String str1 = b.b(this.a);
      String[] arrayOfString2 = b.c(this.a);
      if (!TextUtils.isEmpty(b.d(this.a)))
      {
        str2 = b.e(this.a) + " LIMIT " + b.d(this.a);
        CursorLoader localCursorLoader = new CursorLoader(localContext, localUri, arrayOfString1, str1, arrayOfString2, str2);
        return localCursorLoader;
      }
      String str2 = b.e(this.a);
    }
  }
  
  public void onLoaderReset(Loader<Cursor> paramLoader)
  {
    b.h(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.provider.c
 * JD-Core Version:    0.7.0.1
 */