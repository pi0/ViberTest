.class final Lcom/viber/voip/qrcode/j;
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
.field final synthetic a:Lcom/viber/voip/qrcode/h;


# direct methods
.method private constructor <init>(Lcom/viber/voip/qrcode/h;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/viber/voip/qrcode/j;->a:Lcom/viber/voip/qrcode/h;

    invoke-direct {p0}, Lcom/viber/voip/util/b/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/qrcode/h;Lcom/viber/voip/qrcode/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/viber/voip/qrcode/j;-><init>(Lcom/viber/voip/qrcode/h;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 108
    const-wide/32 v0, 0x493e0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 109
    invoke-static {}, Lcom/viber/voip/qrcode/h;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Finishing activity due to inactivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/viber/voip/qrcode/j;->a:Lcom/viber/voip/qrcode/h;

    invoke-static {v0}, Lcom/viber/voip/qrcode/h;->b(Lcom/viber/voip/qrcode/h;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method
