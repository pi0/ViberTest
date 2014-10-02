.class Lcom/viber/voip/billing/di;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic b:Lcom/viber/voip/billing/PurchaseSupportActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/PurchaseSupportActivity;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/viber/voip/billing/di;->b:Lcom/viber/voip/billing/PurchaseSupportActivity;

    iput-object p2, p0, Lcom/viber/voip/billing/di;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 378
    iget-object v0, p0, Lcom/viber/voip/billing/di;->a:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/billing/di;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 379
    :cond_0
    return-void
.end method
