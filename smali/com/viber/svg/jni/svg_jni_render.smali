.class public Lcom/viber/svg/jni/svg_jni_render;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SSVG_STROKE_LINE_CAP_BUTT:I = 0x0

.field private static final SSVG_STROKE_LINE_CAP_ROUND:I = 0x1

.field private static final SSVG_STROKE_LINE_CAP_SQUARE:I = 0x2

.field private static SVG_FILL_RULE_EVEN_ODD:I = 0x0

.field static final SVG_GRADIENT_LINEAR:I = 0x0

.field static final SVG_GRADIENT_RADIAL:I = 0x1

.field static final SVG_MEET_OR_SLICE_MEET:I = 0x1

.field static final SVG_MEET_OR_SLICE_SLICE:I = 0x2

.field static final SVG_MEET_OR_SLICE_UNKNOWN:I = 0x0

.field static final SVG_PRESERVE_ASPECT_RATIO_NONE:I = 0x0

.field static final SVG_PRESERVE_ASPECT_RATIO_XMAXYMAX:I = 0x9

.field static final SVG_PRESERVE_ASPECT_RATIO_XMAXYMID:I = 0x6

.field static final SVG_PRESERVE_ASPECT_RATIO_XMAXYMIN:I = 0x3

.field static final SVG_PRESERVE_ASPECT_RATIO_XMIDYMAX:I = 0x8

.field static final SVG_PRESERVE_ASPECT_RATIO_XMIDYMID:I = 0x5

.field static final SVG_PRESERVE_ASPECT_RATIO_XMIDYMIN:I = 0x2

.field static final SVG_PRESERVE_ASPECT_RATIO_XMINYMAX:I = 0x7

.field static final SVG_PRESERVE_ASPECT_RATIO_XMINYMID:I = 0x4

.field static final SVG_PRESERVE_ASPECT_RATIO_XMINYMIN:I = 0x1

.field private static final SVG_STATUS_SUCCESS:I = 0x0

.field private static final SVG_STROKE_LINE_JOIN_BEVEL:I = 0x0

.field private static final SVG_STROKE_LINE_JOIN_MITER:I = 0x1

.field private static final SVG_STROKE_LINE_JOIN_ROUND:I = 0x2


# instance fields
.field private _svg_height:I

.field private _svg_width:I

.field private _use_antialiasing:Z

.field private canvas:Landroid/graphics/Canvas;

.field curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

.field private draw_area:Landroid/graphics/Rect;

.field private draw_area_transform:Landroid/graphics/Matrix;

.field mRenderStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/viber/svg/jni/svg_jni_render$RenderState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    sput v0, Lcom/viber/svg/jni/svg_jni_render;->SVG_FILL_RULE_EVEN_ODD:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->mRenderStack:Ljava/util/Stack;

    .line 53
    iput-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    .line 54
    iput-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->draw_area:Landroid/graphics/Rect;

    .line 55
    iput v1, p0, Lcom/viber/svg/jni/svg_jni_render;->_svg_width:I

    .line 56
    iput v1, p0, Lcom/viber/svg/jni/svg_jni_render;->_svg_height:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/svg/jni/svg_jni_render;->_use_antialiasing:Z

    .line 58
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->draw_area_transform:Landroid/graphics/Matrix;

    .line 64
    return-void
.end method

.method private apply_draw_area()V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->draw_area:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->draw_area_transform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 152
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->draw_area_transform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->draw_area:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->draw_area:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 153
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->draw_area_transform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->draw_area:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->draw_area:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->draw_area:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/viber/svg/jni/svg_jni_render;->draw_area:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 155
    :cond_0
    return-void
.end method

.method private push_paint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    return-void
.end method

.method private reset()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method private reset_opacity()V
    .locals 3

    .prologue
    const-wide/high16 v1, 0x3ff0

    .line 170
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iput-wide v1, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->opacity:D

    .line 171
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iput-wide v1, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->fill_opacity:D

    .line 172
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iput-wide v1, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->stroke_opacity:D

    .line 173
    return-void
.end method

.method private set_antialiasing(Z)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/viber/svg/jni/svg_jni_render;->_use_antialiasing:Z

    .line 127
    return-void
.end method

.method private set_opacity(Lcom/viber/svg/jni/svg_jni_render$Opacity;D)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 108
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$1;->$SwitchMap$com$viber$svg$jni$svg_jni_render$Opacity:[I

    invoke-virtual {p1}, Lcom/viber/svg/jni/svg_jni_render$Opacity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    invoke-direct {p0}, Lcom/viber/svg/jni/svg_jni_render;->update_opacity()V

    .line 123
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iput-wide p2, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->fill_opacity:D

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iput-wide p2, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->stroke_opacity:D

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iput-wide p2, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->group_opacity:D

    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iput-wide p2, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->opacity:D

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private update_opacity()V
    .locals 5

    .prologue
    .line 213
    const-wide v0, 0x406fe00000000000L

    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-wide v2, v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;->opacity:D

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-wide v2, v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;->group_opacity:D

    mul-double/2addr v0, v2

    .line 214
    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v2, v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_fill:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-wide v3, v3, Lcom/viber/svg/jni/svg_jni_render$RenderState;->fill_opacity:D

    mul-double/2addr v3, v0

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 215
    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v2, v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-wide v3, v3, Lcom/viber/svg/jni/svg_jni_render$RenderState;->stroke_opacity:D

    mul-double/2addr v0, v3

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 216
    return-void
.end method


# virtual methods
.method _svg_jni_apply_view_box(Lcom/viber/svg/jni/svg_view_box_t;JJ)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, -0x4080

    .line 437
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 438
    iget v1, p1, Lcom/viber/svg/jni/svg_view_box_t;->aspect_ratio:I

    .line 444
    iget-wide v1, p1, Lcom/viber/svg/jni/svg_view_box_t;->x:D

    double-to-float v1, v1

    mul-float/2addr v1, v4

    iget-wide v2, p1, Lcom/viber/svg/jni/svg_view_box_t;->y:D

    double-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 445
    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 449
    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_arc_to(DDDIIDD)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_begin_element()I
    .locals 4

    .prologue
    .line 89
    const-wide/high16 v0, 0x3ff0

    .line 90
    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    if-eqz v2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-wide v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->group_opacity:D

    .line 93
    :cond_0
    new-instance v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;

    invoke-direct {v2, p0}, Lcom/viber/svg/jni/svg_jni_render$RenderState;-><init>(Lcom/viber/svg/jni/svg_jni_render;)V

    iput-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    .line 94
    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v2, v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_fill:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/viber/svg/jni/svg_jni_render;->_use_antialiasing:Z

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v2, v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/viber/svg/jni/svg_jni_render;->_use_antialiasing:Z

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iput-wide v0, v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;->group_opacity:D

    .line 98
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->mRenderStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-direct {p0}, Lcom/viber/svg/jni/svg_jni_render;->update_opacity()V

    .line 100
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_fill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-boolean v0, p0, Lcom/viber/svg/jni/svg_jni_render;->_use_antialiasing:Z

    invoke-direct {p0, v0}, Lcom/viber/svg/jni/svg_jni_render;->set_antialiasing(Z)V

    .line 103
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_begin_group(D)I
    .locals 4
    .parameter

    .prologue
    .line 78
    const-wide/high16 v0, 0x3ff0

    .line 79
    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    if-eqz v2, :cond_0

    .line 80
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-wide v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->group_opacity:D

    .line 82
    :cond_0
    new-instance v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;

    invoke-direct {v2, p0}, Lcom/viber/svg/jni/svg_jni_render$RenderState;-><init>(Lcom/viber/svg/jni/svg_jni_render;)V

    iput-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    .line 83
    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->mRenderStack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    mul-double/2addr v0, p1

    iput-wide v0, v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;->group_opacity:D

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_close_path()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_curve_to(DDDDDD)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v2, v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    double-to-float v3, p1

    double-to-float v4, p3

    double-to-float v5, p5

    move-wide/from16 v0, p7

    double-to-float v6, v0

    move-wide/from16 v0, p9

    double-to-float v7, v0

    move-wide/from16 v0, p11

    double-to-float v8, v0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 188
    const/4 v2, 0x0

    return v2
.end method

.method _svg_jni_end_element()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->mRenderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->mRenderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iput-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    .line 134
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_end_group(D)I
    .locals 1
    .parameter

    .prologue
    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->mRenderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->mRenderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iput-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 161
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method _svg_jni_line_to(DD)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    double-to-float v1, p1

    double-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_move_to(DD)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    double-to-float v1, p1

    double-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_quadratic_curve_to(DDDD)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    double-to-float v1, p1

    double-to-float v2, p3

    double-to-float v3, p5

    double-to-float v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_render_ellipse(DDDD)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 493
    new-instance v0, Landroid/graphics/RectF;

    sub-double v1, p1, p5

    double-to-float v1, v1

    sub-double v2, p3, p7

    double-to-float v2, v2

    add-double v3, p1, p5

    double-to-float v3, v3

    add-double v4, p3, p7

    double-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 494
    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v1, v1, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 495
    invoke-virtual {p0}, Lcom/viber/svg/jni/svg_jni_render;->_svg_jni_render_path()I

    move-result v0

    return v0
.end method

.method _svg_jni_render_image(Ljava/lang/String;JJJJJJ)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_render_line(DDDD)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 464
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    double-to-float v1, p1

    double-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 465
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    double-to-float v1, p5

    double-to-float v2, p7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 466
    invoke-virtual {p0}, Lcom/viber/svg/jni/svg_jni_render;->_svg_jni_render_path()I

    move-result v0

    return v0
.end method

.method _svg_jni_render_path()I
    .locals 3

    .prologue
    .line 470
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$1;->$SwitchMap$com$viber$svg$jni$svg_jni_render$PaintType:[I

    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    #getter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_type:Lcom/viber/svg/jni/svg_jni_render$PaintType;
    invoke-static {v1}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$000(Lcom/viber/svg/jni/svg_jni_render$RenderState;)Lcom/viber/svg/jni/svg_jni_render$PaintType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/svg/jni/svg_jni_render$PaintType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 487
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v1, v1, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v2, v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_fill:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 489
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 472
    :pswitch_1
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v1, v1, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v2, v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_fill:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 473
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v1, v1, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v2, v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 477
    :pswitch_2
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v1, v1, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v2, v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_fill:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 481
    :pswitch_3
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v1, v1, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v2, v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method _svg_jni_render_rect(DDDDDD)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 500
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    double-to-float v1, p1

    double-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 501
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    double-to-float v1, p1

    double-to-float v2, p3

    add-double v3, p1, p5

    double-to-float v3, v3

    add-double v4, p3, p7

    double-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 502
    invoke-virtual {p0}, Lcom/viber/svg/jni/svg_jni_render;->_svg_jni_render_path()I

    move-result v0

    return v0
.end method

.method _svg_jni_render_set_antialiasing(Z)I
    .locals 1
    .parameter

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/viber/svg/jni/svg_jni_render;->set_antialiasing(Z)V

    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_render_text(JJLjava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_set_canvas(Landroid/graphics/Canvas;IIIIII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p2, p4

    add-int v2, p3, p5

    invoke-direct {v0, p2, p3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->draw_area:Landroid/graphics/Rect;

    .line 69
    iput p6, p0, Lcom/viber/svg/jni/svg_jni_render;->_svg_width:I

    .line 70
    iput p7, p0, Lcom/viber/svg/jni/svg_jni_render;->_svg_height:I

    .line 71
    invoke-direct {p0}, Lcom/viber/svg/jni/svg_jni_render;->reset()V

    .line 72
    invoke-direct {p0}, Lcom/viber/svg/jni/svg_jni_render;->apply_draw_area()V

    .line 73
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->draw_area_transform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_set_color(I)I
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_fill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    invoke-direct {p0}, Lcom/viber/svg/jni/svg_jni_render;->update_opacity()V

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_set_fill_opacity(D)I
    .locals 1
    .parameter

    .prologue
    .line 219
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$Opacity;->FILL:Lcom/viber/svg/jni/svg_jni_render$Opacity;

    invoke-direct {p0, v0, p1, p2}, Lcom/viber/svg/jni/svg_jni_render;->set_opacity(Lcom/viber/svg/jni/svg_jni_render$Opacity;D)V

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_set_fill_paint(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 266
    if-nez p2, :cond_1

    .line 268
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_fill:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    #getter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_type:Lcom/viber/svg/jni/svg_jni_render$PaintType;
    invoke-static {v0}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$000(Lcom/viber/svg/jni/svg_jni_render$RenderState;)Lcom/viber/svg/jni/svg_jni_render$PaintType;

    move-result-object v0

    sget-object v2, Lcom/viber/svg/jni/svg_jni_render$PaintType;->STROKE:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;->STROKE:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    :goto_0
    #setter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_type:Lcom/viber/svg/jni/svg_jni_render$PaintType;
    invoke-static {v1, v0}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$002(Lcom/viber/svg/jni/svg_jni_render$RenderState;Lcom/viber/svg/jni/svg_jni_render$PaintType;)Lcom/viber/svg/jni/svg_jni_render$PaintType;

    .line 270
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_fill:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 271
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$PaintType;->NONE:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    #setter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_type:Lcom/viber/svg/jni/svg_jni_render$PaintType;
    invoke-static {v0, v1}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$002(Lcom/viber/svg/jni/svg_jni_render$RenderState;Lcom/viber/svg/jni/svg_jni_render$PaintType;)Lcom/viber/svg/jni/svg_jni_render$PaintType;

    .line 279
    :goto_1
    return v3

    .line 269
    :cond_0
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;->NONE:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    goto :goto_0

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    #getter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_type:Lcom/viber/svg/jni/svg_jni_render$PaintType;
    invoke-static {v0}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$000(Lcom/viber/svg/jni/svg_jni_render$RenderState;)Lcom/viber/svg/jni/svg_jni_render$PaintType;

    move-result-object v0

    sget-object v2, Lcom/viber/svg/jni/svg_jni_render$PaintType;->STROKE:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;->BOTH:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    :goto_2
    #setter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_type:Lcom/viber/svg/jni/svg_jni_render$PaintType;
    invoke-static {v1, v0}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$002(Lcom/viber/svg/jni/svg_jni_render$RenderState;Lcom/viber/svg/jni/svg_jni_render$PaintType;)Lcom/viber/svg/jni/svg_jni_render$PaintType;

    .line 274
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_fill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 275
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_fill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    invoke-direct {p0}, Lcom/viber/svg/jni/svg_jni_render;->update_opacity()V

    goto :goto_1

    .line 273
    :cond_2
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;->FILL:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    goto :goto_2
.end method

.method _svg_jni_set_fill_rule(I)I
    .locals 2
    .parameter

    .prologue
    .line 285
    sget v0, Lcom/viber/svg/jni/svg_jni_render;->SVG_FILL_RULE_EVEN_ODD:I

    if-ne v0, p1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 289
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0
.end method

.method _svg_jni_set_font_family(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_set_font_size(D)I
    .locals 1
    .parameter

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_set_font_style(I)I
    .locals 1
    .parameter

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_set_font_weight(J)I
    .locals 1
    .parameter

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_set_gradient(FFFF[I[FII)I
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v1, v0

    if-lez v1, :cond_0

    if-eqz p6, :cond_0

    move-object/from16 v0, p6

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 229
    :cond_0
    const/4 v1, 0x0

    .line 257
    :goto_0
    return v1

    .line 231
    :cond_1
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 232
    packed-switch p7, :pswitch_data_0

    .line 244
    :goto_1
    const/4 v1, 0x0

    .line 246
    packed-switch p8, :pswitch_data_1

    .line 255
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v2, v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_fill:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    #getter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_type:Lcom/viber/svg/jni/svg_jni_render$PaintType;
    invoke-static {v1}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$000(Lcom/viber/svg/jni/svg_jni_render$RenderState;)Lcom/viber/svg/jni/svg_jni_render$PaintType;

    move-result-object v1

    sget-object v3, Lcom/viber/svg/jni/svg_jni_render$PaintType;->STROKE:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    if-ne v1, v3, :cond_2

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$PaintType;->BOTH:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    :goto_3
    #setter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_type:Lcom/viber/svg/jni/svg_jni_render$PaintType;
    invoke-static {v2, v1}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$002(Lcom/viber/svg/jni/svg_jni_render$RenderState;Lcom/viber/svg/jni/svg_jni_render$PaintType;)Lcom/viber/svg/jni/svg_jni_render$PaintType;

    .line 257
    const/4 v1, 0x0

    goto :goto_0

    .line 234
    :pswitch_0
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_1

    .line 237
    :pswitch_1
    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_1

    .line 240
    :pswitch_2
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_1

    .line 248
    :pswitch_3
    new-instance v1, Landroid/graphics/RadialGradient;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_2

    .line 251
    :pswitch_4
    new-instance v8, Landroid/graphics/LinearGradient;

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object v15, v7

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v1, v8

    goto :goto_2

    .line 256
    :cond_2
    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$PaintType;->FILL:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    goto :goto_3

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 246
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method _svg_jni_set_opacity(D)I
    .locals 1
    .parameter

    .prologue
    .line 309
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$Opacity;->ALL:Lcom/viber/svg/jni/svg_jni_render$Opacity;

    invoke-direct {p0, v0, p1, p2}, Lcom/viber/svg/jni/svg_jni_render;->set_opacity(Lcom/viber/svg/jni/svg_jni_render$Opacity;D)V

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_set_stroke_dash_array([D)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 314
    if-eqz p1, :cond_1

    .line 315
    array-length v0, p1

    new-array v2, v0, [F

    move v0, v1

    .line 316
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 317
    aget-wide v3, p1, v0

    double-to-float v3, v3

    aput v3, v2, v0

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    #setter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->dashes:[F
    invoke-static {v0, v2}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$102(Lcom/viber/svg/jni/svg_jni_render$RenderState;[F)[F

    .line 320
    new-instance v0, Landroid/graphics/DashPathEffect;

    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    #getter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->dashes:[F
    invoke-static {v2}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$100(Lcom/viber/svg/jni/svg_jni_render$RenderState;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    #getter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->dash_offset:F
    invoke-static {v3}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$200(Lcom/viber/svg/jni/svg_jni_render$RenderState;)F

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 321
    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v2, v2, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 323
    :cond_1
    return v1
.end method

.method _svg_jni_set_stroke_dash_offset(D)I
    .locals 3
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    double-to-float v1, p1

    #setter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->dash_offset:F
    invoke-static {v0, v1}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$202(Lcom/viber/svg/jni/svg_jni_render$RenderState;F)F

    .line 328
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    #getter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->dashes:[F
    invoke-static {v0}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$100(Lcom/viber/svg/jni/svg_jni_render$RenderState;)[F

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Landroid/graphics/DashPathEffect;

    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    #getter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->dashes:[F
    invoke-static {v1}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$100(Lcom/viber/svg/jni/svg_jni_render$RenderState;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    #getter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->dash_offset:F
    invoke-static {v2}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$200(Lcom/viber/svg/jni/svg_jni_render$RenderState;)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 331
    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v1, v1, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 333
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_set_stroke_line_cap(I)I
    .locals 2
    .parameter

    .prologue
    .line 341
    packed-switch p1, :pswitch_data_0

    .line 352
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 343
    :pswitch_0
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    .line 346
    :pswitch_1
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    .line 349
    :pswitch_2
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method _svg_jni_set_stroke_line_join(I)I
    .locals 2
    .parameter

    .prologue
    .line 361
    packed-switch p1, :pswitch_data_0

    .line 372
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 363
    :pswitch_0
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_0

    .line 366
    :pswitch_1
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_0

    .line 369
    :pswitch_2
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method _svg_jni_set_stroke_miter_limit(D)I
    .locals 2
    .parameter

    .prologue
    .line 376
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_set_stroke_opacity(D)I
    .locals 1
    .parameter

    .prologue
    .line 381
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$Opacity;->STROKE:Lcom/viber/svg/jni/svg_jni_render$Opacity;

    invoke-direct {p0, v0, p1, p2}, Lcom/viber/svg/jni/svg_jni_render;->set_opacity(Lcom/viber/svg/jni/svg_jni_render$Opacity;D)V

    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_set_stroke_paint(I)I
    .locals 3
    .parameter

    .prologue
    .line 386
    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    #getter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_type:Lcom/viber/svg/jni/svg_jni_render$PaintType;
    invoke-static {v0}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$000(Lcom/viber/svg/jni/svg_jni_render$RenderState;)Lcom/viber/svg/jni/svg_jni_render$PaintType;

    move-result-object v0

    sget-object v2, Lcom/viber/svg/jni/svg_jni_render$PaintType;->FILL:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;->BOTH:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    :goto_0
    #setter for: Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_type:Lcom/viber/svg/jni/svg_jni_render$PaintType;
    invoke-static {v1, v0}, Lcom/viber/svg/jni/svg_jni_render$RenderState;->access$002(Lcom/viber/svg/jni/svg_jni_render$RenderState;Lcom/viber/svg/jni/svg_jni_render$PaintType;)Lcom/viber/svg/jni/svg_jni_render$PaintType;

    .line 387
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 388
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    invoke-direct {p0}, Lcom/viber/svg/jni/svg_jni_render;->update_opacity()V

    .line 390
    const/4 v0, 0x0

    return v0

    .line 386
    :cond_0
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;->STROKE:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    goto :goto_0
.end method

.method _svg_jni_set_stroke_width(D)I
    .locals 2
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->curr_render_state:Lcom/viber/svg/jni/svg_jni_render$RenderState;

    iget-object v0, v0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_set_text_anchor(I)I
    .locals 1
    .parameter

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_set_viewport_dimension(DD)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, p1

    double-to-float v0, v0

    .line 458
    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, p3

    double-to-float v1, v1

    .line 459
    iget-object v2, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method _svg_jni_transform(DDDDDD)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 407
    const/16 v1, 0x9

    new-array v1, v1, [F

    const/4 v2, 0x0

    double-to-float v3, p1

    aput v3, v1, v2

    const/4 v2, 0x1

    double-to-float v3, p5

    aput v3, v1, v2

    const/4 v2, 0x2

    double-to-float v3, p9

    aput v3, v1, v2

    const/4 v2, 0x3

    double-to-float v3, p3

    aput v3, v1, v2

    const/4 v2, 0x4

    double-to-float v3, p7

    aput v3, v1, v2

    const/4 v2, 0x5

    double-to-float v3, p11

    aput v3, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x0

    aput v3, v1, v2

    const/16 v2, 0x8

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    .line 412
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 414
    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 416
    iget-object v1, p0, Lcom/viber/svg/jni/svg_jni_render;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 418
    const/4 v0, 0x0

    return v0
.end method
