package com.viber.svg.jni;

 enum svg_jni_render$Opacity
{
  static
  {
    FILL = new Opacity("FILL", 1);
    GROUP = new Opacity("GROUP", 2);
    ALL = new Opacity("ALL", 3);
    Opacity[] arrayOfOpacity = new Opacity[4];
    arrayOfOpacity[0] = STROKE;
    arrayOfOpacity[1] = FILL;
    arrayOfOpacity[2] = GROUP;
    arrayOfOpacity[3] = ALL;
    $VALUES = arrayOfOpacity;
  }
  
  private svg_jni_render$Opacity() {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.svg.jni.svg_jni_render.Opacity
 * JD-Core Version:    0.7.0.1
 */