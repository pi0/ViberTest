.class final Lcom/viber/voip/util/gr;
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
    .line 637
    iput-object p1, p0, Lcom/viber/voip/util/gr;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/viber/voip/util/gr;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/viber/voip/util/gr;->c:Lcom/viber/voip/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 640
    iget-object v0, p0, Lcom/viber/voip/util/gr;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/util/gr;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 641
    iget-object v0, p0, Lcom/viber/voip/util/gr;->c:Lcom/viber/voip/a/k;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/gr;->c:Lcom/viber/voip/a/k;

    invoke-virtual {v1}, Lcom/viber/voip/a/k;->d()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 642
    :cond_0
    if-eqz p1, :cond_1

    .line 643
    invoke-static {}, Lcom/viber/voip/util/gn;->d()V

    .line 645
    :cond_1
    return-void
.end method
