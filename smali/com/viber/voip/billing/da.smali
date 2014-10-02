.class Lcom/viber/voip/billing/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/PurchaseSupportActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/PurchaseSupportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/viber/voip/billing/da;->a:Lcom/viber/voip/billing/PurchaseSupportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 257
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 258
    iget-object v0, p0, Lcom/viber/voip/billing/da;->a:Lcom/viber/voip/billing/PurchaseSupportActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Lcom/viber/voip/billing/PurchaseSupportActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 259
    iget-object v0, p0, Lcom/viber/voip/billing/da;->a:Lcom/viber/voip/billing/PurchaseSupportActivity;

    invoke-virtual {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->finish()V

    .line 260
    return-void
.end method
