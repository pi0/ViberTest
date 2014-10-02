.class public Lcom/viber/voip/dx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:[Ljava/lang/String;

.field public static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/dx;->a:Z

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/viber/voip/dx;->b:Z

    .line 171
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "cc.cz.madkite.freedom"

    aput-object v3, v0, v2

    const-string/jumbo v2, "cc.madkite.freedom"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/dx;->c:[Ljava/lang/String;

    .line 173
    sput-boolean v1, Lcom/viber/voip/dx;->d:Z

    return-void

    :cond_0
    move v0, v2

    .line 11
    goto :goto_0

    :cond_1
    move v0, v2

    .line 14
    goto :goto_1
.end method
