.class Lcom/viber/voip/billing/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/PurchaseSupportActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/PurchaseSupportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/viber/voip/billing/dg;->a:Lcom/viber/voip/billing/PurchaseSupportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/viber/voip/billing/dg;->a:Lcom/viber/voip/billing/PurchaseSupportActivity;

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Lcom/viber/voip/billing/PurchaseSupportActivity;)V

    .line 345
    return-void
.end method
