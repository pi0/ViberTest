.class Lcom/viber/voip/billing/dh;
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
    .line 348
    iput-object p1, p0, Lcom/viber/voip/billing/dh;->a:Lcom/viber/voip/billing/PurchaseSupportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcom/viber/voip/billing/dh;->a:Lcom/viber/voip/billing/PurchaseSupportActivity;

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Lcom/viber/voip/billing/PurchaseSupportActivity;)V

    .line 352
    return-void
.end method
