package com.viber.svg.jni;

 enum svg_jni_render$PaintType
{
  static
  {
    BOTH = new PaintType("BOTH", 2);
    NONE = new PaintType("NONE", 3);
    PaintType[] arrayOfPaintType = new PaintType[4];
    arrayOfPaintType[0] = FILL;
    arrayOfPaintType[1] = STROKE;
    arrayOfPaintType[2] = BOTH;
    arrayOfPaintType[3] = NONE;
    $VALUES = arrayOfPaintType;
  }
  
  private svg_jni_render$PaintType() {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.svg.jni.svg_jni_render.PaintType
 * JD-Core Version:    0.7.0.1
 */