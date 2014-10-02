.class final Lcom/viber/voip/stickers/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/viber/voip/stickers/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/viber/voip/stickers/r;

    invoke-direct {v0, v1}, Lcom/viber/voip/stickers/r;-><init>(Lcom/viber/voip/stickers/s;)V

    :goto_0
    sput-object v0, Lcom/viber/voip/stickers/aj;->a:Lcom/viber/voip/stickers/r;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a()Lcom/viber/voip/stickers/r;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/viber/voip/stickers/aj;->a:Lcom/viber/voip/stickers/r;

    return-object v0
.end method
