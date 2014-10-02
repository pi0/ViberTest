.class Lcom/viber/voip/backgrounds/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/du;


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/a;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/viber/voip/backgrounds/f;->a:Lcom/viber/voip/backgrounds/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/viber/voip/backgrounds/f;->a:Lcom/viber/voip/backgrounds/a;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->c(Lcom/viber/voip/backgrounds/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/backgrounds/g;

    invoke-direct {v1, p0}, Lcom/viber/voip/backgrounds/g;-><init>(Lcom/viber/voip/backgrounds/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 553
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 557
    return-void
.end method
