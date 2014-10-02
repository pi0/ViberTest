.class final Lcom/viber/voip/util/gq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/az;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/viber/voip/a/k;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/viber/voip/a/k;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/viber/voip/util/gq;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/viber/voip/util/gq;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/viber/voip/util/gq;->c:Lcom/viber/voip/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 626
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "327"

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "Continue"

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 630
    iget-object v0, p0, Lcom/viber/voip/util/gq;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/util/gq;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 631
    iget-object v0, p0, Lcom/viber/voip/util/gq;->c:Lcom/viber/voip/a/k;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/gq;->c:Lcom/viber/voip/a/k;

    invoke-virtual {v1}, Lcom/viber/voip/a/k;->d()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 632
    :cond_0
    return-void
.end method
