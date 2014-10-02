package com.viber.svg.jni;

import android.graphics.Paint;
import android.graphics.Path;

class svg_jni_render$RenderState
{
  private float dash_offset = 0.0F;
  private float[] dashes;
  double fill_opacity = 1.0D;
  double group_opacity = 1.0D;
  double opacity = 1.0D;
  Paint paint_fill = new Paint(7);
  Paint paint_stroke = new Paint(7);
  private svg_jni_render.PaintType paint_type = svg_jni_render.PaintType.FILL;
  Path path = new Path();
  double stroke_opacity = 1.0D;
  
  svg_jni_render$RenderState(svg_jni_render paramsvg_jni_render) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.svg.jni.svg_jni_render.RenderState
 * JD-Core Version:    0.7.0.1
 */