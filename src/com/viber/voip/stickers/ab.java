package com.viber.voip.stickers;

import com.viber.voip.stickers.c.d;

class ab
  extends am
{
  ab(r paramr) {}
  
  public void a(com.viber.voip.stickers.c.a parama)
  {
    r.a(this.a, "onStickerDeployed: " + parama.b);
    super.a(parama);
  }
  
  public void a(boolean paramBoolean, d paramd)
  {
    super.a(paramBoolean, paramd);
    if (paramBoolean)
    {
      r.a(this.a).d(paramd.e());
      r.a(this.a, "CRITICAL ERROR WHILE PACKAGE WAS DOWNLOADED. DELETE IT FROM DB.");
      r.a(this.a, false);
    }
  }
  
  public void c(d paramd)
  {
    r.a(this.a, "onStickerPackageDeployed: " + paramd.e());
    super.c(paramd);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.ab
 * JD-Core Version:    0.7.0.1
 */