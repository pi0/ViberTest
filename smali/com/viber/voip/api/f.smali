.class Lcom/viber/voip/api/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/api/ViberUrlHandlerActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/ViberUrlHandlerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/viber/voip/api/f;->a:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/viber/voip/api/f;->a:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.MESSAGES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/api/f;->a:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-virtual {v0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->finish()V

    .line 200
    return-void

    .line 197
    :cond_0
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->resumeActivation()V

    goto :goto_0
.end method
