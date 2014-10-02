package com.viber.voip.stickers;

import android.text.TextUtils;
import com.viber.voip.stickers.f.a;
import java.util.HashMap;
import java.util.Map;

class be
{
  private final Map<String, a> b = new HashMap();
  
  private be(bb parambb) {}
  
  private a a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    synchronized (this.b)
    {
      a locala = (a)this.b.get(paramString);
      if (locala == null)
      {
        locala = bb.a(this.a, paramString);
        if (locala.a != -1L) {
          this.b.put(paramString, locala);
        }
      }
      return locala;
    }
  }
  
  private void a()
  {
    synchronized (this.b)
    {
      this.b.clear();
      return;
    }
  }
  
  private void a(String paramString, a parama)
  {
    synchronized (this.b)
    {
      this.b.put(paramString, parama);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.be
 * JD-Core Version:    0.7.0.1
 */