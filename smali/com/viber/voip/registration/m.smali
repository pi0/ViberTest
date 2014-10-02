.class Lcom/viber/voip/registration/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/df;

.field final synthetic b:Lcom/viber/voip/registration/ActivationController;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/ActivationController;Lcom/viber/voip/registration/df;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/viber/voip/registration/m;->b:Lcom/viber/voip/registration/ActivationController;

    iput-object p2, p0, Lcom/viber/voip/registration/m;->a:Lcom/viber/voip/registration/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/viber/voip/registration/m;->a:Lcom/viber/voip/registration/df;

    if-nez v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/viber/voip/registration/m;->b:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->callbacks:Lcom/viber/voip/registration/r;
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$700(Lcom/viber/voip/registration/ActivationController;)Lcom/viber/voip/registration/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/m;->b:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->callbacks:Lcom/viber/voip/registration/r;
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$700(Lcom/viber/voip/registration/ActivationController;)Lcom/viber/voip/registration/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/registration/r;->a()V

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/registration/m;->a:Lcom/viber/voip/registration/df;

    iget-boolean v0, v0, Lcom/viber/voip/registration/df;->a:Z

    if-eqz v0, :cond_3

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "$RegisterTask STORING CANONIZED NUMBER IN PREF = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/m;->a:Lcom/viber/voip/registration/df;

    iget-object v1, v1, Lcom/viber/voip/registration/df;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$100(Ljava/lang/String;)V

    .line 474
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lcom/viber/voip/registration/m;->a:Lcom/viber/voip/registration/df;

    iget-object v1, v1, Lcom/viber/voip/registration/df;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/ActivationController;->storeRegNumberCanonized(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/viber/voip/registration/m;->a:Lcom/viber/voip/registration/df;

    iget-boolean v0, v0, Lcom/viber/voip/registration/df;->e:Z

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/viber/voip/registration/m;->b:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->callbacks:Lcom/viber/voip/registration/r;
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$700(Lcom/viber/voip/registration/ActivationController;)Lcom/viber/voip/registration/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/m;->b:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->callbacks:Lcom/viber/voip/registration/r;
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$700(Lcom/viber/voip/registration/ActivationController;)Lcom/viber/voip/registration/r;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/m;->a:Lcom/viber/voip/registration/df;

    invoke-interface {v0, v1}, Lcom/viber/voip/registration/r;->a(Lcom/viber/voip/registration/df;)V

    goto :goto_0

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/registration/m;->b:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->callbacks:Lcom/viber/voip/registration/r;
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$700(Lcom/viber/voip/registration/ActivationController;)Lcom/viber/voip/registration/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/m;->b:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->callbacks:Lcom/viber/voip/registration/r;
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$700(Lcom/viber/voip/registration/ActivationController;)Lcom/viber/voip/registration/r;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/m;->a:Lcom/viber/voip/registration/df;

    invoke-interface {v0, v1}, Lcom/viber/voip/registration/r;->b(Lcom/viber/voip/registration/df;)V

    goto :goto_0

    .line 483
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/registration/m;->b:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->callbacks:Lcom/viber/voip/registration/r;
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$700(Lcom/viber/voip/registration/ActivationController;)Lcom/viber/voip/registration/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/m;->b:Lcom/viber/voip/registration/ActivationController;

    #getter for: Lcom/viber/voip/registration/ActivationController;->callbacks:Lcom/viber/voip/registration/r;
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$700(Lcom/viber/voip/registration/ActivationController;)Lcom/viber/voip/registration/r;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/m;->a:Lcom/viber/voip/registration/df;

    iget-object v1, v1, Lcom/viber/voip/registration/df;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/registration/m;->a:Lcom/viber/voip/registration/df;

    iget-object v2, v2, Lcom/viber/voip/registration/df;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/registration/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
