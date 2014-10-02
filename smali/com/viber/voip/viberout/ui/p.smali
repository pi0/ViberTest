.class Lcom/viber/voip/viberout/ui/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/ae;

.field final synthetic b:Lcom/viber/voip/viberout/ui/ViberOutDialogs;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/p;->b:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/p;->a:Lcom/viber/voip/billing/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 470
    invoke-static {}, Lcom/viber/voip/billing/a;->a()Lcom/viber/voip/billing/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/viberout/ui/p;->a:Lcom/viber/voip/billing/ae;

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/ae;)Ljava/lang/String;

    move-result-object v0

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Getting country rates, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "600"

    sget-object v4, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "Get Rates"

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 475
    iget-object v1, p0, Lcom/viber/voip/viberout/ui/p;->b:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    iget-object v2, p0, Lcom/viber/voip/viberout/ui/p;->b:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    const v3, 0x7f0c056e

    invoke-virtual {v2, v3}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void
.end method
