.class final enum Lcom/viber/svg/jni/svg_jni_render$PaintType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/svg/jni/svg_jni_render$PaintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/viber/svg/jni/svg_jni_render$PaintType;

.field public static final enum BOTH:Lcom/viber/svg/jni/svg_jni_render$PaintType;

.field public static final enum FILL:Lcom/viber/svg/jni/svg_jni_render$PaintType;

.field public static final enum NONE:Lcom/viber/svg/jni/svg_jni_render$PaintType;

.field public static final enum STROKE:Lcom/viber/svg/jni/svg_jni_render$PaintType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;

    const-string/jumbo v1, "FILL"

    invoke-direct {v0, v1, v2}, Lcom/viber/svg/jni/svg_jni_render$PaintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;->FILL:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    .line 32
    new-instance v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;

    const-string/jumbo v1, "STROKE"

    invoke-direct {v0, v1, v3}, Lcom/viber/svg/jni/svg_jni_render$PaintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;->STROKE:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    .line 33
    new-instance v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;

    const-string/jumbo v1, "BOTH"

    invoke-direct {v0, v1, v4}, Lcom/viber/svg/jni/svg_jni_render$PaintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;->BOTH:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    .line 34
    new-instance v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/viber/svg/jni/svg_jni_render$PaintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;->NONE:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/viber/svg/jni/svg_jni_render$PaintType;

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$PaintType;->FILL:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$PaintType;->STROKE:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$PaintType;->BOTH:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$PaintType;->NONE:Lcom/viber/svg/jni/svg_jni_render$PaintType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;->$VALUES:[Lcom/viber/svg/jni/svg_jni_render$PaintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/svg/jni/svg_jni_render$PaintType;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;

    return-object v0
.end method

.method public static values()[Lcom/viber/svg/jni/svg_jni_render$PaintType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$PaintType;->$VALUES:[Lcom/viber/svg/jni/svg_jni_render$PaintType;

    invoke-virtual {v0}, [Lcom/viber/svg/jni/svg_jni_render$PaintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/svg/jni/svg_jni_render$PaintType;

    return-object v0
.end method
