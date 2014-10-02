.class Lcom/viber/svg/jni/svg_jni_render$RenderState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dash_offset:F

.field private dashes:[F

.field fill_opacity:D

.field group_opacity:D

.field opacity:D

.field paint_fill:Landroid/graphics/Paint;

.field paint_stroke:Landroid/graphics/Paint;

.field private paint_type:Lcom/viber/svg/jni/svg_jni_render$PaintType;

.field path:Landroid/graphics/Path;

.field stroke_opacity:D

.field final synthetic this$0:Lcom/viber/svg/jni/svg_jni_render;


# direct methods
.method constructor <init>(Lcom/viber/svg/jni/svg_jni_render;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x7

    const-wide/high16 v1, 0x3ff0

    .line 38
    iput-object p1, p0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->this$0:Lcom/viber/svg/jni/svg_jni_render;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->path:Landroid/graphics/Path;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_fill:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_stroke:Landroid/graphics/Paint;

    .line 42
    iput-wide v1, p0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->opacity:D

    .line 43
    iput-wide v1, p0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->group_opacity:D

    .line 44
    iput-wide v1, p0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->fill_opacity:D

    .line 45
    iput-wide v1, p0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->stroke_opacity:D

    .line 46
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;->FILL:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    iput-object v0, p0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_type:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->dash_offset:F

    return-void
.end method

.method static synthetic access$000(Lcom/viber/svg/jni/svg_jni_render$RenderState;)Lcom/viber/svg/jni/svg_jni_render$PaintType;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_type:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    return-object v0
.end method

.method static synthetic access$002(Lcom/viber/svg/jni/svg_jni_render$RenderState;Lcom/viber/svg/jni/svg_jni_render$PaintType;)Lcom/viber/svg/jni/svg_jni_render$PaintType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->paint_type:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    return-object p1
.end method

.method static synthetic access$100(Lcom/viber/svg/jni/svg_jni_render$RenderState;)[F
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->dashes:[F

    return-object v0
.end method

.method static synthetic access$102(Lcom/viber/svg/jni/svg_jni_render$RenderState;[F)[F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->dashes:[F

    return-object p1
.end method

.method static synthetic access$200(Lcom/viber/svg/jni/svg_jni_render$RenderState;)F
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->dash_offset:F

    return v0
.end method

.method static synthetic access$202(Lcom/viber/svg/jni/svg_jni_render$RenderState;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/viber/svg/jni/svg_jni_render$RenderState;->dash_offset:F

    return p1
.end method
