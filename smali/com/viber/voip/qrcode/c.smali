.class final Lcom/viber/voip/qrcode/c;
.super Lcom/viber/voip/util/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/util/b/a",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/qrcode/a;


# direct methods
.method private constructor <init>(Lcom/viber/voip/qrcode/a;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/viber/voip/qrcode/c;->a:Lcom/viber/voip/qrcode/a;

    invoke-direct {p0}, Lcom/viber/voip/util/b/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/qrcode/a;Lcom/viber/voip/qrcode/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/viber/voip/qrcode/c;-><init>(Lcom/viber/voip/qrcode/a;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 123
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/c;->a:Lcom/viber/voip/qrcode/a;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/a;->a()V

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method
