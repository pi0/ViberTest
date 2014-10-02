.class Lcom/viber/voip/viberout/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/e;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/viber/voip/viberout/g;->a:Lcom/viber/voip/viberout/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 348
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/controller/cq;->a(Landroid/content/Context;)Z

    move-result v0

    .line 350
    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/viber/voip/viberout/g;->a:Lcom/viber/voip/viberout/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/e;->a(Lcom/viber/voip/viberout/e;Z)Z

    .line 352
    const-string/jumbo v0, "mForegroundCheck.run(), viber gone home!"

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->d(Ljava/lang/String;)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    const-string/jumbo v0, "mForegroundCheck.run(), viber on foreground"

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
