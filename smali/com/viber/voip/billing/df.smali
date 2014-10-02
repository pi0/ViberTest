.class Lcom/viber/voip/billing/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/dc;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/dc;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/viber/voip/billing/df;->a:Lcom/viber/voip/billing/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lcom/viber/voip/billing/df;->a:Lcom/viber/voip/billing/dc;

    iget-object v0, v0, Lcom/viber/voip/billing/dc;->c:Lcom/viber/voip/billing/db;

    iget-object v0, v0, Lcom/viber/voip/billing/db;->a:Lcom/viber/voip/billing/PurchaseSupportActivity;

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Lcom/viber/voip/billing/PurchaseSupportActivity;)V

    .line 320
    return-void
.end method
