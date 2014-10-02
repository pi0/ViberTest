.class Lcom/viber/voip/viberout/ui/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/bf;


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/ui/ai;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 833
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/aj;->a:Lcom/viber/voip/viberout/ui/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/bo;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Consume IabResult, success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/viber/voip/billing/bo;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/aj;->a:Lcom/viber/voip/viberout/ui/ai;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ai;->a:[Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/viberout/ui/aj;->a:Lcom/viber/voip/viberout/ui/ai;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ai;->c:Lcom/viber/voip/viberout/ui/ae;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ae;->e:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/aj;->a:Lcom/viber/voip/viberout/ui/ai;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ai;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 840
    :cond_0
    return-void
.end method
