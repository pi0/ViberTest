.class Lcom/viber/voip/viberout/ui/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/bj;


# instance fields
.field final synthetic a:[Landroid/app/ProgressDialog;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/viber/voip/viberout/ui/ae;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ae;[Landroid/app/ProgressDialog;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 821
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/ai;->c:Lcom/viber/voip/viberout/ui/ae;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/ai;->a:[Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/viber/voip/viberout/ui/ai;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bm;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 824
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ai;->a:[Landroid/app/ProgressDialog;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ai;->c:Lcom/viber/voip/viberout/ui/ae;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ae;->e:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {p1}, Lcom/viber/voip/billing/bo;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ai;->c:Lcom/viber/voip/viberout/ui/ae;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ae;->c:Lcom/viber/voip/billing/q;

    invoke-virtual {v0}, Lcom/viber/voip/billing/q;->b()Lcom/viber/voip/billing/bn;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/billing/bm;->b(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/bu;

    move-result-object v0

    .line 827
    if-nez v0, :cond_1

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "No stale VO purchase for product "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/viberout/ui/ai;->c:Lcom/viber/voip/viberout/ui/ae;

    iget-object v1, v1, Lcom/viber/voip/viberout/ui/ae;->c:Lcom/viber/voip/billing/q;

    invoke-virtual {v1}, Lcom/viber/voip/billing/q;->b()Lcom/viber/voip/billing/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ai;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "STALE VO purchase!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Ljava/lang/String;)V

    .line 832
    const-string/jumbo v1, "Consuming..."

    invoke-static {v1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Ljava/lang/String;)V

    .line 833
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/billing/bv;->c()Lcom/viber/voip/billing/ap;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/viberout/ui/aj;

    invoke-direct {v2, p0}, Lcom/viber/voip/viberout/ui/aj;-><init>(Lcom/viber/voip/viberout/ui/ai;)V

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/bf;)V

    goto :goto_0

    .line 844
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ai;->a:[Landroid/app/ProgressDialog;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 845
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ai;->c:Lcom/viber/voip/viberout/ui/ae;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ae;->e:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->finish()V

    .line 846
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/billing/bv;->a(Lcom/viber/voip/billing/bo;)V

    goto :goto_0
.end method
