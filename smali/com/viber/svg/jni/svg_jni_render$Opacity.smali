.class final enum Lcom/viber/svg/jni/svg_jni_render$Opacity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/svg/jni/svg_jni_render$Opacity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/viber/svg/jni/svg_jni_render$Opacity;

.field public static final enum ALL:Lcom/viber/svg/jni/svg_jni_render$Opacity;

.field public static final enum FILL:Lcom/viber/svg/jni/svg_jni_render$Opacity;

.field public static final enum GROUP:Lcom/viber/svg/jni/svg_jni_render$Opacity;

.field public static final enum STROKE:Lcom/viber/svg/jni/svg_jni_render$Opacity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/viber/svg/jni/svg_jni_render$Opacity;

    const-string/jumbo v1, "STROKE"

    invoke-direct {v0, v1, v2}, Lcom/viber/svg/jni/svg_jni_render$Opacity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/svg/jni/svg_jni_render$Opacity;->STROKE:Lcom/viber/svg/jni/svg_jni_render$Opacity;

    .line 24
    new-instance v0, Lcom/viber/svg/jni/svg_jni_render$Opacity;

    const-string/jumbo v1, "FILL"

    invoke-direct {v0, v1, v3}, Lcom/viber/svg/jni/svg_jni_render$Opacity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/svg/jni/svg_jni_render$Opacity;->FILL:Lcom/viber/svg/jni/svg_jni_render$Opacity;

    .line 25
    new-instance v0, Lcom/viber/svg/jni/svg_jni_render$Opacity;

    const-string/jumbo v1, "GROUP"

    invoke-direct {v0, v1, v4}, Lcom/viber/svg/jni/svg_jni_render$Opacity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/svg/jni/svg_jni_render$Opacity;->GROUP:Lcom/viber/svg/jni/svg_jni_render$Opacity;

    .line 26
    new-instance v0, Lcom/viber/svg/jni/svg_jni_render$Opacity;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v5}, Lcom/viber/svg/jni/svg_jni_render$Opacity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/svg/jni/svg_jni_render$Opacity;->ALL:Lcom/viber/svg/jni/svg_jni_render$Opacity;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/viber/svg/jni/svg_jni_render$Opacity;

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$Opacity;->STROKE:Lcom/viber/svg/jni/svg_jni_render$Opacity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$Opacity;->FILL:Lcom/viber/svg/jni/svg_jni_render$Opacity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$Opacity;->GROUP:Lcom/viber/svg/jni/svg_jni_render$Opacity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/svg/jni/svg_jni_render$Opacity;->ALL:Lcom/viber/svg/jni/svg_jni_render$Opacity;

    aput-object v1, v0, v5

    sput-object v0, Lcom/viber/svg/jni/svg_jni_render$Opacity;->$VALUES:[Lcom/viber/svg/jni/svg_jni_render$Opacity;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/svg/jni/svg_jni_render$Opacity;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/viber/svg/jni/svg_jni_render$Opacity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/svg/jni/svg_jni_render$Opacity;

    return-object v0
.end method

.method public static values()[Lcom/viber/svg/jni/svg_jni_render$Opacity;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/viber/svg/jni/svg_jni_render$Opacity;->$VALUES:[Lcom/viber/svg/jni/svg_jni_render$Opacity;

    invoke-virtual {v0}, [Lcom/viber/svg/jni/svg_jni_render$Opacity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/svg/jni/svg_jni_render$Opacity;

    return-object v0
.end method
