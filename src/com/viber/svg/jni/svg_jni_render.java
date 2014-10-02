package com.viber.svg.jni;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.Path.FillType;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import java.util.EmptyStackException;
import java.util.Stack;

public class svg_jni_render
{
  private static final int SSVG_STROKE_LINE_CAP_BUTT = 0;
  private static final int SSVG_STROKE_LINE_CAP_ROUND = 1;
  private static final int SSVG_STROKE_LINE_CAP_SQUARE = 2;
  private static int SVG_FILL_RULE_EVEN_ODD = 1;
  static final int SVG_GRADIENT_LINEAR = 0;
  static final int SVG_GRADIENT_RADIAL = 1;
  static final int SVG_MEET_OR_SLICE_MEET = 1;
  static final int SVG_MEET_OR_SLICE_SLICE = 2;
  static final int SVG_MEET_OR_SLICE_UNKNOWN = 0;
  static final int SVG_PRESERVE_ASPECT_RATIO_NONE = 0;
  static final int SVG_PRESERVE_ASPECT_RATIO_XMAXYMAX = 9;
  static final int SVG_PRESERVE_ASPECT_RATIO_XMAXYMID = 6;
  static final int SVG_PRESERVE_ASPECT_RATIO_XMAXYMIN = 3;
  static final int SVG_PRESERVE_ASPECT_RATIO_XMIDYMAX = 8;
  static final int SVG_PRESERVE_ASPECT_RATIO_XMIDYMID = 5;
  static final int SVG_PRESERVE_ASPECT_RATIO_XMIDYMIN = 2;
  static final int SVG_PRESERVE_ASPECT_RATIO_XMINYMAX = 7;
  static final int SVG_PRESERVE_ASPECT_RATIO_XMINYMID = 4;
  static final int SVG_PRESERVE_ASPECT_RATIO_XMINYMIN = 1;
  private static final int SVG_STATUS_SUCCESS = 0;
  private static final int SVG_STROKE_LINE_JOIN_BEVEL = 0;
  private static final int SVG_STROKE_LINE_JOIN_MITER = 1;
  private static final int SVG_STROKE_LINE_JOIN_ROUND = 2;
  private int _svg_height = 0;
  private int _svg_width = 0;
  private boolean _use_antialiasing = true;
  private Canvas canvas = null;
  svg_jni_render.RenderState curr_render_state;
  private Rect draw_area = null;
  private Matrix draw_area_transform = new Matrix();
  Stack<svg_jni_render.RenderState> mRenderStack = new Stack();
  
  private void apply_draw_area()
  {
    if (this.draw_area != null)
    {
      this.draw_area_transform.reset();
      this.draw_area_transform.postTranslate(this.draw_area.left, this.draw_area.top);
      this.draw_area_transform.postScale((this.draw_area.right - this.draw_area.left) / this.canvas.getWidth(), (this.draw_area.bottom - this.draw_area.top) / this.canvas.getHeight());
    }
  }
  
  private void push_paint(Paint paramPaint) {}
  
  private void reset() {}
  
  private void reset_opacity()
  {
    this.curr_render_state.opacity = 1.0D;
    this.curr_render_state.fill_opacity = 1.0D;
    this.curr_render_state.stroke_opacity = 1.0D;
  }
  
  private void set_antialiasing(boolean paramBoolean)
  {
    this._use_antialiasing = paramBoolean;
  }
  
  private void set_opacity(svg_jni_render.Opacity paramOpacity, double paramDouble)
  {
    switch (svg_jni_render.1.$SwitchMap$com$viber$svg$jni$svg_jni_render$Opacity[paramOpacity.ordinal()])
    {
    }
    for (;;)
    {
      update_opacity();
      return;
      this.curr_render_state.fill_opacity = paramDouble;
      continue;
      this.curr_render_state.stroke_opacity = paramDouble;
      continue;
      this.curr_render_state.group_opacity = paramDouble;
      continue;
      this.curr_render_state.opacity = paramDouble;
    }
  }
  
  private void update_opacity()
  {
    double d = 255.0D * this.curr_render_state.opacity * this.curr_render_state.group_opacity;
    this.curr_render_state.paint_fill.setAlpha((int)(d * this.curr_render_state.fill_opacity));
    this.curr_render_state.paint_stroke.setAlpha((int)(d * this.curr_render_state.stroke_opacity));
  }
  
  int _svg_jni_apply_view_box(svg_view_box_t paramsvg_view_box_t, long paramLong1, long paramLong2)
  {
    Matrix localMatrix = new Matrix();
    localMatrix.postTranslate(-1.0F * (float)paramsvg_view_box_t.x, -1.0F * (float)paramsvg_view_box_t.y);
    localMatrix.postConcat(this.canvas.getMatrix());
    this.canvas.setMatrix(localMatrix);
    return 0;
  }
  
  int _svg_jni_arc_to(double paramDouble1, double paramDouble2, double paramDouble3, int paramInt1, int paramInt2, double paramDouble4, double paramDouble5)
  {
    return 0;
  }
  
  int _svg_jni_begin_element()
  {
    double d = 1.0D;
    if (this.curr_render_state != null) {
      d = this.curr_render_state.group_opacity;
    }
    this.curr_render_state = new svg_jni_render.RenderState(this);
    this.curr_render_state.paint_fill.setAntiAlias(this._use_antialiasing);
    this.curr_render_state.paint_stroke.setAntiAlias(this._use_antialiasing);
    this.curr_render_state.group_opacity = d;
    this.mRenderStack.push(this.curr_render_state);
    update_opacity();
    this.curr_render_state.paint_fill.setStyle(Paint.Style.FILL);
    this.curr_render_state.paint_stroke.setStyle(Paint.Style.STROKE);
    set_antialiasing(this._use_antialiasing);
    this.canvas.save();
    return 0;
  }
  
  int _svg_jni_begin_group(double paramDouble)
  {
    double d = 1.0D;
    if (this.curr_render_state != null) {
      d = this.curr_render_state.group_opacity;
    }
    this.curr_render_state = new svg_jni_render.RenderState(this);
    this.mRenderStack.push(this.curr_render_state);
    this.curr_render_state.group_opacity = (d * paramDouble);
    return 0;
  }
  
  int _svg_jni_close_path()
  {
    this.curr_render_state.path.close();
    return 0;
  }
  
  int _svg_jni_curve_to(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    this.curr_render_state.path.cubicTo((float)paramDouble1, (float)paramDouble2, (float)paramDouble3, (float)paramDouble4, (float)paramDouble5, (float)paramDouble6);
    return 0;
  }
  
  int _svg_jni_end_element()
  {
    this.mRenderStack.pop();
    this.curr_render_state = ((svg_jni_render.RenderState)this.mRenderStack.peek());
    this.canvas.restore();
    return 0;
  }
  
  int _svg_jni_end_group(double paramDouble)
  {
    try
    {
      this.mRenderStack.pop();
      this.curr_render_state = ((svg_jni_render.RenderState)this.mRenderStack.peek());
      label22:
      return 0;
    }
    catch (EmptyStackException localEmptyStackException)
    {
      break label22;
    }
  }
  
  int _svg_jni_line_to(double paramDouble1, double paramDouble2)
  {
    this.curr_render_state.path.lineTo((float)paramDouble1, (float)paramDouble2);
    return 0;
  }
  
  int _svg_jni_move_to(double paramDouble1, double paramDouble2)
  {
    this.curr_render_state.path.moveTo((float)paramDouble1, (float)paramDouble2);
    return 0;
  }
  
  int _svg_jni_quadratic_curve_to(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    this.curr_render_state.path.quadTo((float)paramDouble1, (float)paramDouble2, (float)paramDouble3, (float)paramDouble4);
    return 0;
  }
  
  int _svg_jni_render_ellipse(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    RectF localRectF = new RectF((float)(paramDouble1 - paramDouble3), (float)(paramDouble2 - paramDouble4), (float)(paramDouble1 + paramDouble3), (float)(paramDouble2 + paramDouble4));
    this.curr_render_state.path.addOval(localRectF, Path.Direction.CW);
    return _svg_jni_render_path();
  }
  
  int _svg_jni_render_image(String paramString, long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6)
  {
    return 0;
  }
  
  int _svg_jni_render_line(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    this.curr_render_state.path.moveTo((float)paramDouble1, (float)paramDouble2);
    this.curr_render_state.path.lineTo((float)paramDouble3, (float)paramDouble4);
    return _svg_jni_render_path();
  }
  
  int _svg_jni_render_path()
  {
    switch (svg_jni_render.1.$SwitchMap$com$viber$svg$jni$svg_jni_render$PaintType[svg_jni_render.RenderState.access$000(this.curr_render_state).ordinal()])
    {
    default: 
      this.canvas.drawPath(this.curr_render_state.path, this.curr_render_state.paint_fill);
    }
    for (;;)
    {
      return 0;
      this.canvas.drawPath(this.curr_render_state.path, this.curr_render_state.paint_fill);
      this.canvas.drawPath(this.curr_render_state.path, this.curr_render_state.paint_stroke);
      continue;
      this.canvas.drawPath(this.curr_render_state.path, this.curr_render_state.paint_fill);
      continue;
      this.canvas.drawPath(this.curr_render_state.path, this.curr_render_state.paint_stroke);
    }
  }
  
  int _svg_jni_render_rect(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    this.curr_render_state.path.moveTo((float)paramDouble1, (float)paramDouble2);
    this.curr_render_state.path.addRect((float)paramDouble1, (float)paramDouble2, (float)(paramDouble1 + paramDouble3), (float)(paramDouble2 + paramDouble4), Path.Direction.CW);
    return _svg_jni_render_path();
  }
  
  int _svg_jni_render_set_antialiasing(boolean paramBoolean)
  {
    set_antialiasing(paramBoolean);
    return 0;
  }
  
  int _svg_jni_render_text(long paramLong1, long paramLong2, String paramString)
  {
    return 0;
  }
  
  int _svg_jni_set_canvas(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    this.canvas = paramCanvas;
    this.draw_area = new Rect(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4);
    this._svg_width = paramInt5;
    this._svg_height = paramInt6;
    reset();
    apply_draw_area();
    paramCanvas.setMatrix(this.draw_area_transform);
    return 0;
  }
  
  int _svg_jni_set_color(int paramInt)
  {
    this.curr_render_state.paint_fill.setColor(paramInt);
    update_opacity();
    return 0;
  }
  
  int _svg_jni_set_fill_opacity(double paramDouble)
  {
    set_opacity(svg_jni_render.Opacity.FILL, paramDouble);
    return 0;
  }
  
  int _svg_jni_set_fill_paint(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0)
    {
      this.curr_render_state.paint_fill.setColor(0);
      svg_jni_render.RenderState localRenderState2 = this.curr_render_state;
      if (svg_jni_render.RenderState.access$000(this.curr_render_state) == svg_jni_render.PaintType.STROKE) {}
      for (svg_jni_render.PaintType localPaintType2 = svg_jni_render.PaintType.STROKE;; localPaintType2 = svg_jni_render.PaintType.NONE)
      {
        svg_jni_render.RenderState.access$002(localRenderState2, localPaintType2);
        this.curr_render_state.paint_fill.setAlpha(0);
        svg_jni_render.RenderState.access$002(this.curr_render_state, svg_jni_render.PaintType.NONE);
        return 0;
      }
    }
    svg_jni_render.RenderState localRenderState1 = this.curr_render_state;
    if (svg_jni_render.RenderState.access$000(this.curr_render_state) == svg_jni_render.PaintType.STROKE) {}
    for (svg_jni_render.PaintType localPaintType1 = svg_jni_render.PaintType.BOTH;; localPaintType1 = svg_jni_render.PaintType.FILL)
    {
      svg_jni_render.RenderState.access$002(localRenderState1, localPaintType1);
      this.curr_render_state.paint_fill.setStyle(Paint.Style.FILL);
      this.curr_render_state.paint_fill.setColor(paramInt1);
      update_opacity();
      return 0;
    }
  }
  
  int _svg_jni_set_fill_rule(int paramInt)
  {
    if (SVG_FILL_RULE_EVEN_ODD == paramInt) {
      this.curr_render_state.path.setFillType(Path.FillType.EVEN_ODD);
    }
    for (;;)
    {
      return 0;
      this.curr_render_state.path.setFillType(Path.FillType.WINDING);
    }
  }
  
  int _svg_jni_set_font_family(String paramString)
  {
    return 0;
  }
  
  int _svg_jni_set_font_size(double paramDouble)
  {
    return 0;
  }
  
  int _svg_jni_set_font_style(int paramInt)
  {
    return 0;
  }
  
  int _svg_jni_set_font_weight(long paramLong)
  {
    return 0;
  }
  
  int _svg_jni_set_gradient(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int[] paramArrayOfInt, float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    if ((paramArrayOfInt == null) || (paramArrayOfInt.length <= 0) || (paramArrayOfFloat == null) || (paramArrayOfFloat.length <= 0)) {
      return 0;
    }
    Shader.TileMode localTileMode = Shader.TileMode.REPEAT;
    Object localObject;
    label84:
    svg_jni_render.RenderState localRenderState;
    switch (paramInt1)
    {
    default: 
      localObject = null;
      switch (paramInt2)
      {
      default: 
        this.curr_render_state.paint_fill.setShader((Shader)localObject);
        localRenderState = this.curr_render_state;
        if (svg_jni_render.RenderState.access$000(this.curr_render_state) != svg_jni_render.PaintType.STROKE) {}
        break;
      }
      break;
    }
    for (svg_jni_render.PaintType localPaintType = svg_jni_render.PaintType.BOTH;; localPaintType = svg_jni_render.PaintType.FILL)
    {
      svg_jni_render.RenderState.access$002(localRenderState, localPaintType);
      return 0;
      localTileMode = Shader.TileMode.REPEAT;
      break;
      localTileMode = Shader.TileMode.MIRROR;
      break;
      localTileMode = Shader.TileMode.CLAMP;
      break;
      localObject = new RadialGradient(paramFloat1, paramFloat2, paramFloat3, paramArrayOfInt, paramArrayOfFloat, localTileMode);
      break label84;
      localObject = new LinearGradient(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramArrayOfInt, paramArrayOfFloat, localTileMode);
      break label84;
    }
  }
  
  int _svg_jni_set_opacity(double paramDouble)
  {
    set_opacity(svg_jni_render.Opacity.ALL, paramDouble);
    return 0;
  }
  
  int _svg_jni_set_stroke_dash_array(double[] paramArrayOfDouble)
  {
    if (paramArrayOfDouble != null)
    {
      float[] arrayOfFloat = new float[paramArrayOfDouble.length];
      for (int i = 0; i < paramArrayOfDouble.length; i++) {
        arrayOfFloat[i] = ((float)paramArrayOfDouble[i]);
      }
      svg_jni_render.RenderState.access$102(this.curr_render_state, arrayOfFloat);
      DashPathEffect localDashPathEffect = new DashPathEffect(svg_jni_render.RenderState.access$100(this.curr_render_state), svg_jni_render.RenderState.access$200(this.curr_render_state));
      this.curr_render_state.paint_stroke.setPathEffect(localDashPathEffect);
    }
    return 0;
  }
  
  int _svg_jni_set_stroke_dash_offset(double paramDouble)
  {
    svg_jni_render.RenderState.access$202(this.curr_render_state, (float)paramDouble);
    if (svg_jni_render.RenderState.access$100(this.curr_render_state) != null)
    {
      DashPathEffect localDashPathEffect = new DashPathEffect(svg_jni_render.RenderState.access$100(this.curr_render_state), svg_jni_render.RenderState.access$200(this.curr_render_state));
      this.curr_render_state.paint_stroke.setPathEffect(localDashPathEffect);
    }
    return 0;
  }
  
  int _svg_jni_set_stroke_line_cap(int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      return 0;
      this.curr_render_state.paint_stroke.setStrokeCap(Paint.Cap.BUTT);
      continue;
      this.curr_render_state.paint_stroke.setStrokeCap(Paint.Cap.ROUND);
      continue;
      this.curr_render_state.paint_stroke.setStrokeCap(Paint.Cap.SQUARE);
    }
  }
  
  int _svg_jni_set_stroke_line_join(int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      return 0;
      this.curr_render_state.paint_stroke.setStrokeJoin(Paint.Join.MITER);
      continue;
      this.curr_render_state.paint_stroke.setStrokeJoin(Paint.Join.ROUND);
      continue;
      this.curr_render_state.paint_stroke.setStrokeJoin(Paint.Join.BEVEL);
    }
  }
  
  int _svg_jni_set_stroke_miter_limit(double paramDouble)
  {
    this.curr_render_state.paint_stroke.setStrokeMiter((float)paramDouble);
    return 0;
  }
  
  int _svg_jni_set_stroke_opacity(double paramDouble)
  {
    set_opacity(svg_jni_render.Opacity.STROKE, paramDouble);
    return 0;
  }
  
  int _svg_jni_set_stroke_paint(int paramInt)
  {
    svg_jni_render.RenderState localRenderState = this.curr_render_state;
    if (svg_jni_render.RenderState.access$000(this.curr_render_state) == svg_jni_render.PaintType.FILL) {}
    for (svg_jni_render.PaintType localPaintType = svg_jni_render.PaintType.BOTH;; localPaintType = svg_jni_render.PaintType.STROKE)
    {
      svg_jni_render.RenderState.access$002(localRenderState, localPaintType);
      this.curr_render_state.paint_stroke.setStyle(Paint.Style.STROKE);
      this.curr_render_state.paint_stroke.setColor(paramInt);
      update_opacity();
      return 0;
    }
  }
  
  int _svg_jni_set_stroke_width(double paramDouble)
  {
    this.curr_render_state.paint_stroke.setStrokeWidth((float)paramDouble);
    return 0;
  }
  
  int _svg_jni_set_text_anchor(int paramInt)
  {
    return 0;
  }
  
  int _svg_jni_set_viewport_dimension(double paramDouble1, double paramDouble2)
  {
    float f1 = (float)(this.canvas.getWidth() / paramDouble1);
    float f2 = (float)(this.canvas.getHeight() / paramDouble2);
    this.canvas.scale(f1, f2);
    return 0;
  }
  
  int _svg_jni_transform(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    Matrix localMatrix = new Matrix();
    float[] arrayOfFloat = new float[9];
    arrayOfFloat[0] = ((float)paramDouble1);
    arrayOfFloat[1] = ((float)paramDouble3);
    arrayOfFloat[2] = ((float)paramDouble5);
    arrayOfFloat[3] = ((float)paramDouble2);
    arrayOfFloat[4] = ((float)paramDouble4);
    arrayOfFloat[5] = ((float)paramDouble6);
    arrayOfFloat[6] = 0.0F;
    arrayOfFloat[7] = 0.0F;
    arrayOfFloat[8] = 1.0F;
    localMatrix.setValues(arrayOfFloat);
    localMatrix.postConcat(this.canvas.getMatrix());
    this.canvas.setMatrix(localMatrix);
    return 0;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.svg.jni.svg_jni_render
 * JD-Core Version:    0.7.0.1
 */