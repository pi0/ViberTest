.class final Lcom/viber/voip/billing/dj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/viber/voip/billing/dj;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/viber/voip/billing/dj;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    const-string/jumbo v0, "$0.99"

    new-instance v1, Lcom/viber/voip/billing/ae;

    invoke-static {}, Lcom/viber/voip/billing/PurchaseSupportActivity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/viber/voip/billing/ae;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Ljava/lang/String;Lcom/viber/voip/billing/ae;)V

    .line 416
    return-void
.end method
