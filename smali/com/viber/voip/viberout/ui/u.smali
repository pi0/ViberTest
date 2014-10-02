.class Lcom/viber/voip/viberout/ui/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/ag;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/ae;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/ae;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/u;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/u;->a:Lcom/viber/voip/billing/ae;

    iput-object p3, p0, Lcom/viber/voip/viberout/ui/u;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 536
    if-eqz p1, :cond_0

    .line 538
    :goto_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "300b"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 540
    new-instance v1, Lcom/viber/voip/viberout/ui/ay;

    iget-object v0, p0, Lcom/viber/voip/viberout/ui/u;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-direct {v1, v0}, Lcom/viber/voip/viberout/ui/ay;-><init>(Landroid/content/Context;)V

    .line 542
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/u;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/viberout/ui/u;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    const v2, 0x7f0c057d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    iget-object v4, p0, Lcom/viber/voip/viberout/ui/u;->b:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 546
    :goto_1
    invoke-virtual {v1, v0}, Lcom/viber/voip/viberout/ui/ay;->a(Ljava/lang/String;)V

    .line 547
    const v0, 0x7f0c0579

    new-instance v2, Lcom/viber/voip/viberout/ui/v;

    invoke-direct {v2, p0}, Lcom/viber/voip/viberout/ui/v;-><init>(Lcom/viber/voip/viberout/ui/u;)V

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/viberout/ui/ay;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/view/View;

    .line 560
    const v0, 0x7f0c057a

    new-instance v2, Lcom/viber/voip/viberout/ui/w;

    invoke-direct {v2, p0}, Lcom/viber/voip/viberout/ui/w;-><init>(Lcom/viber/voip/viberout/ui/u;)V

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/viberout/ui/ay;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/view/View;

    .line 573
    const/high16 v0, 0x104

    new-instance v2, Lcom/viber/voip/viberout/ui/x;

    invoke-direct {v2, p0}, Lcom/viber/voip/viberout/ui/x;-><init>(Lcom/viber/voip/viberout/ui/u;)V

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/viberout/ui/ay;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/view/View;

    .line 586
    invoke-virtual {v1, v5}, Lcom/viber/voip/viberout/ui/ay;->a(Z)V

    .line 587
    new-instance v0, Lcom/viber/voip/viberout/ui/y;

    invoke-direct {v0, p0}, Lcom/viber/voip/viberout/ui/y;-><init>(Lcom/viber/voip/viberout/ui/u;)V

    invoke-virtual {v1, v0}, Lcom/viber/voip/viberout/ui/ay;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 594
    invoke-virtual {v1}, Lcom/viber/voip/viberout/ui/ay;->a()V

    .line 595
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/u;->a:Lcom/viber/voip/billing/ae;

    invoke-virtual {v0}, Lcom/viber/voip/billing/ae;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/u;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    const v2, 0x7f0c057e

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
