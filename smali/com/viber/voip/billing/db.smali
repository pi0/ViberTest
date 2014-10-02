.class Lcom/viber/voip/billing/db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/ai;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/PurchaseSupportActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/PurchaseSupportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/viber/voip/billing/db;->a:Lcom/viber/voip/billing/PurchaseSupportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/ae;Lcom/viber/voip/billing/ah;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/viber/voip/billing/db;->a:Lcom/viber/voip/billing/PurchaseSupportActivity;

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->b(Lcom/viber/voip/billing/PurchaseSupportActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/viber/voip/billing/db;->a:Lcom/viber/voip/billing/PurchaseSupportActivity;

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Lcom/viber/voip/billing/PurchaseSupportActivity;)V

    .line 325
    :goto_0
    return-void

    .line 277
    :cond_0
    new-instance v0, Lcom/viber/voip/billing/dc;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/billing/dc;-><init>(Lcom/viber/voip/billing/db;Lcom/viber/voip/billing/ae;Lcom/viber/voip/billing/ah;)V

    invoke-virtual {p1, v0}, Lcom/viber/voip/billing/ae;->a(Lcom/viber/voip/billing/ag;)V

    goto :goto_0
.end method
