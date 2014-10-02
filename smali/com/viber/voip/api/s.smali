.class Lcom/viber/voip/api/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/api/x;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/viber/voip/api/y;

.field final synthetic c:Lcom/viber/voip/api/q;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/q;Landroid/content/Context;Lcom/viber/voip/api/y;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/viber/voip/api/s;->c:Lcom/viber/voip/api/q;

    iput-object p2, p0, Lcom/viber/voip/api/s;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/viber/voip/api/s;->b:Lcom/viber/voip/api/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 386
    const/4 v0, 0x0

    .line 387
    if-eqz p1, :cond_0

    if-ne v1, p1, :cond_1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/api/s;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/viber/voip/util/gv;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 390
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/api/s;->b:Lcom/viber/voip/api/y;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-interface {v2, v1, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    .line 391
    return-void
.end method
