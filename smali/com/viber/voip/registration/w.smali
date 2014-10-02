.class Lcom/viber/voip/registration/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/t;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/t;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/viber/voip/registration/w;->a:Lcom/viber/voip/registration/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/viber/voip/registration/w;->a:Lcom/viber/voip/registration/t;

    invoke-static {v0}, Lcom/viber/voip/registration/t;->c(Lcom/viber/voip/registration/t;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/viber/voip/registration/w;->a:Lcom/viber/voip/registration/t;

    const-string/jumbo v1, "activation_waiting_dialog"

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/t;->g(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/viber/voip/registration/w;->a:Lcom/viber/voip/registration/t;

    invoke-virtual {v0}, Lcom/viber/voip/registration/t;->h()V

    .line 387
    return-void
.end method
