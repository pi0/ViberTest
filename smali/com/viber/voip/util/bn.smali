.class final Lcom/viber/voip/util/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hj;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/viber/voip/util/bn;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/viber/voip/util/bn;->b:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/viber/voip/util/bn;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 253
    if-eqz p2, :cond_0

    if-ne v3, p2, :cond_3

    .line 254
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIEW_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/viber/voip/util/bn;->a:Landroid/content/Intent;

    const-string/jumbo v2, "EXTRA_RETURN_TO_HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    .line 256
    if-eqz v1, :cond_1

    const-string/jumbo v1, "EXTRA_RETURN_TO_HOME"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    :cond_1
    const-string/jumbo v1, "con_number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lcom/viber/voip/util/bn;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 265
    :cond_2
    :goto_0
    return-void

    .line 259
    :cond_3
    iget-boolean v0, p0, Lcom/viber/voip/util/bn;->c:Z

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/viber/voip/util/bn;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/viber/voip/util/bn;->b:Landroid/app/Activity;

    const-class v2, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 261
    iget-object v0, p0, Lcom/viber/voip/util/bn;->a:Landroid/content/Intent;

    const-string/jumbo v1, "EXTRA_FROM_LAUNCH_ACTIVITY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    iget-object v0, p0, Lcom/viber/voip/util/bn;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/viber/voip/util/bn;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 263
    iget-object v0, p0, Lcom/viber/voip/util/bn;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
