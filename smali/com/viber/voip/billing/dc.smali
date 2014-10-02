.class Lcom/viber/voip/billing/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/ag;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/ae;

.field final synthetic b:Lcom/viber/voip/billing/ah;

.field final synthetic c:Lcom/viber/voip/billing/db;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/db;Lcom/viber/voip/billing/ae;Lcom/viber/voip/billing/ah;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/viber/voip/billing/dc;->c:Lcom/viber/voip/billing/db;

    iput-object p2, p0, Lcom/viber/voip/billing/dc;->a:Lcom/viber/voip/billing/ae;

    iput-object p3, p0, Lcom/viber/voip/billing/dc;->b:Lcom/viber/voip/billing/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 280
    iget-object v0, p0, Lcom/viber/voip/billing/dc;->c:Lcom/viber/voip/billing/db;

    iget-object v0, v0, Lcom/viber/voip/billing/db;->a:Lcom/viber/voip/billing/PurchaseSupportActivity;

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->c(Lcom/viber/voip/billing/PurchaseSupportActivity;)V

    .line 281
    if-eqz p1, :cond_0

    .line 283
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/billing/dc;->b:Lcom/viber/voip/billing/ah;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/billing/dc;->b:Lcom/viber/voip/billing/ah;

    iget-object v0, v0, Lcom/viber/voip/billing/ah;->b:Ljava/lang/String;

    .line 285
    :goto_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "602"

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 287
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/viber/voip/billing/dc;->c:Lcom/viber/voip/billing/db;

    iget-object v2, v2, Lcom/viber/voip/billing/db;->a:Lcom/viber/voip/billing/PurchaseSupportActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    const v2, 0x7f0c0582

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 290
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/viber/voip/billing/dc;->c:Lcom/viber/voip/billing/db;

    iget-object v2, v2, Lcom/viber/voip/billing/db;->a:Lcom/viber/voip/billing/PurchaseSupportActivity;

    const v3, 0x7f0c0584

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/billing/PurchaseSupportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 294
    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 295
    const v0, 0x7f0c0343

    new-instance v2, Lcom/viber/voip/billing/dd;

    invoke-direct {v2, p0}, Lcom/viber/voip/billing/dd;-><init>(Lcom/viber/voip/billing/dc;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 305
    const v0, 0x7f0c03b6

    new-instance v2, Lcom/viber/voip/billing/de;

    invoke-direct {v2, p0}, Lcom/viber/voip/billing/de;-><init>(Lcom/viber/voip/billing/dc;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 316
    new-instance v0, Lcom/viber/voip/billing/df;

    invoke-direct {v0, p0}, Lcom/viber/voip/billing/df;-><init>(Lcom/viber/voip/billing/dc;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 323
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/dc;->a:Lcom/viber/voip/billing/ae;

    invoke-virtual {v0}, Lcom/viber/voip/billing/ae;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 283
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/billing/dc;->c:Lcom/viber/voip/billing/db;

    iget-object v0, v0, Lcom/viber/voip/billing/db;->a:Lcom/viber/voip/billing/PurchaseSupportActivity;

    const v2, 0x7f0c0585

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/billing/PurchaseSupportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
