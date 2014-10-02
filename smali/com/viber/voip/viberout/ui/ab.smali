.class Lcom/viber/voip/viberout/ui/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/ag;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/ae;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/ae;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/ab;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/ab;->a:Lcom/viber/voip/billing/ae;

    iput-object p3, p0, Lcom/viber/voip/viberout/ui/ab;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 665
    if-eqz p1, :cond_0

    .line 666
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ab;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ab;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    const v1, 0x7f0c057f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/viber/voip/viberout/ui/ab;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 669
    :goto_1
    iget-object v1, p0, Lcom/viber/voip/viberout/ui/ab;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/viber/voip/viberout/ui/ab;->a:Lcom/viber/voip/billing/ae;

    invoke-static {v1, v2, v0, v3}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/billing/ae;)V

    .line 670
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ab;->a:Lcom/viber/voip/billing/ae;

    invoke-virtual {v0}, Lcom/viber/voip/billing/ae;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ab;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    const v1, 0x7f0c0580

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
