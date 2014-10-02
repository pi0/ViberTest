package com.viber.voip.messages.extras.image.imagezoom;

class d
  extends n
{
  d(ImageViewTouch paramImageViewTouch) {}
  
  public boolean a(l paraml)
  {
    (paraml.d() - paraml.e());
    float f1 = this.a.d * paraml.f();
    float f2 = Math.min(this.a.getMaxZoom(), Math.max(f1, 0.9F));
    this.a.b(f2, paraml.b(), paraml.c());
    this.a.d = Math.min(this.a.getMaxZoom(), Math.max(f2, 0.9F));
    this.a.f = 1;
    this.a.invalidate();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.image.imagezoom.d
 * JD-Core Version:    0.7.0.1
 */