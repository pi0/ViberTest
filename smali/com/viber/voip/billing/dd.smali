.class Lcom/viber/voip/billing/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/dc;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/dc;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/viber/voip/billing/dd;->a:Lcom/viber/voip/billing/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 298
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 299
    iget-object v0, p0, Lcom/viber/voip/billing/dd;->a:Lcom/viber/voip/billing/dc;

    iget-object v0, v0, Lcom/viber/voip/billing/dc;->c:Lcom/viber/voip/billing/db;

    iget-object v0, v0, Lcom/viber/voip/billing/db;->a:Lcom/viber/voip/billing/PurchaseSupportActivity;

    iget-object v1, p0, Lcom/viber/voip/billing/dd;->a:Lcom/viber/voip/billing/dc;

    iget-object v1, v1, Lcom/viber/voip/billing/dc;->a:Lcom/viber/voip/billing/ae;

    invoke-static {v0, v1}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Lcom/viber/voip/billing/PurchaseSupportActivity;Lcom/viber/voip/billing/ae;)V

    .line 300
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "602"

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "Call"

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 303
    return-void
.end method
