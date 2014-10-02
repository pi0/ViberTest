.class final Lcom/viber/voip/rakuten/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/viber/voip/rakuten/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/viber/voip/rakuten/l;

    invoke-direct {v0, v1}, Lcom/viber/voip/rakuten/l;-><init>(Lcom/viber/voip/rakuten/m;)V

    :goto_0
    sput-object v0, Lcom/viber/voip/rakuten/n;->a:Lcom/viber/voip/rakuten/l;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a()Lcom/viber/voip/rakuten/l;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/viber/voip/rakuten/n;->a:Lcom/viber/voip/rakuten/l;

    return-object v0
.end method
