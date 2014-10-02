.class Lcom/viber/voip/api/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/api/x;


# instance fields
.field final synthetic a:Lcom/viber/voip/api/y;

.field final synthetic b:Lcom/viber/voip/api/o;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/o;Lcom/viber/voip/api/y;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/viber/voip/api/p;->b:Lcom/viber/voip/api/o;

    iput-object p2, p0, Lcom/viber/voip/api/p;->a:Lcom/viber/voip/api/y;

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

    .line 515
    const/4 v0, 0x0

    .line 516
    if-eqz p1, :cond_0

    if-ne v1, p1, :cond_1

    .line 517
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.VIEW_CONTACT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    const-string/jumbo v2, "con_number"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/api/p;->a:Lcom/viber/voip/api/y;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-interface {v2, v1, v0}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    .line 521
    return-void
.end method
