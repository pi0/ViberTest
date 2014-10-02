.class public Lcom/viber/voip/billing/dl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Intent;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/viber/voip/billing/dm;->b:Lcom/viber/voip/billing/dm;

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Lcom/viber/voip/billing/dm;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/billing/dl;->a:Landroid/content/Intent;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/billing/cx;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/viber/voip/billing/dl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/viber/voip/billing/dl;
    .locals 2
    .parameter

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/viber/voip/billing/dl;->a:Landroid/content/Intent;

    sget-object v1, Lcom/viber/voip/billing/dn;->a:Lcom/viber/voip/billing/dn;

    invoke-virtual {v1}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    :cond_0
    return-object p0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Showing error dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/billing/dl;->a:Landroid/content/Intent;

    sget-object v2, Lcom/viber/voip/billing/dn;->a:Lcom/viber/voip/billing/dn;

    invoke-virtual {v2}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/billing/dl;->a:Landroid/content/Intent;

    sget-object v2, Lcom/viber/voip/billing/dn;->b:Lcom/viber/voip/billing/dn;

    invoke-virtual {v2}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/billing/dl;->a:Landroid/content/Intent;

    sget-object v2, Lcom/viber/voip/billing/dn;->c:Lcom/viber/voip/billing/dn;

    invoke-virtual {v2}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->b(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/viber/voip/billing/dl;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/viber/voip/billing/dl;
    .locals 2
    .parameter

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/viber/voip/billing/dl;->a:Landroid/content/Intent;

    sget-object v1, Lcom/viber/voip/billing/dn;->b:Lcom/viber/voip/billing/dn;

    invoke-virtual {v1}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    :cond_0
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/viber/voip/billing/dl;
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/viber/voip/billing/dl;->a:Landroid/content/Intent;

    sget-object v1, Lcom/viber/voip/billing/dn;->c:Lcom/viber/voip/billing/dn;

    invoke-virtual {v1}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    return-object p0
.end method
