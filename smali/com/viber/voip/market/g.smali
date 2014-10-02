.class Lcom/viber/voip/market/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/market/MarketActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/MarketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/viber/voip/market/g;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 408
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/viber/voip/market/g;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 410
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/viber/voip/market/g;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 411
    const-string/jumbo v2, "Enter url"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v2, p0, Lcom/viber/voip/market/g;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v2}, Lcom/viber/voip/market/MarketActivity;->d(Lcom/viber/voip/market/MarketActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 413
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 414
    const v2, 0x7f0c02b6

    new-instance v3, Lcom/viber/voip/market/h;

    invoke-direct {v3, p0}, Lcom/viber/voip/market/h;-><init>(Lcom/viber/voip/market/g;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 420
    const v2, 0x7f0c02b5

    new-instance v3, Lcom/viber/voip/market/i;

    invoke-direct {v3, p0, v1}, Lcom/viber/voip/market/i;-><init>(Lcom/viber/voip/market/g;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 430
    return-void
.end method
