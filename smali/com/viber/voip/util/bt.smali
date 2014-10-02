.class Lcom/viber/voip/util/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/bo;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/viber/voip/util/bo;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/viber/voip/util/bt;->a:Lcom/viber/voip/util/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/bt;->b:Landroid/content/Intent;

    .line 1168
    iget-object v0, p0, Lcom/viber/voip/util/bt;->b:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1169
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1170
    if-eqz v0, :cond_0

    .line 1171
    iget-object v1, p0, Lcom/viber/voip/util/bt;->b:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1173
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/viber/voip/util/bt;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/viber/voip/util/bt;->a:Lcom/viber/voip/util/bo;

    invoke-static {v0}, Lcom/viber/voip/util/bo;->f(Lcom/viber/voip/util/bo;)Lcom/viber/voip/user/YouFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/user/YouFragment;->openSettings()V

    .line 1182
    iget-object v0, p0, Lcom/viber/voip/util/bt;->a:Lcom/viber/voip/util/bo;

    iget-object v1, p0, Lcom/viber/voip/util/bt;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/viber/voip/util/bo;->a(Lcom/viber/voip/util/bo;Landroid/content/Intent;)V

    .line 1183
    iget-object v0, p0, Lcom/viber/voip/util/bt;->a:Lcom/viber/voip/util/bo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/util/bo;->a(Lcom/viber/voip/util/bo;Lcom/viber/voip/util/bt;)Lcom/viber/voip/util/bt;

    .line 1184
    return-void
.end method
