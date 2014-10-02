.class Lcom/viber/voip/registration/aa;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/viber/voip/registration/df;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/t;

.field private b:Lcom/viber/voip/util/t;


# direct methods
.method private constructor <init>(Lcom/viber/voip/registration/t;)V
    .locals 1
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/viber/voip/registration/aa;->a:Lcom/viber/voip/registration/t;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 637
    new-instance v0, Lcom/viber/voip/util/t;

    invoke-direct {v0}, Lcom/viber/voip/util/t;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/registration/aa;->b:Lcom/viber/voip/util/t;

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/registration/t;Lcom/viber/voip/registration/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 636
    invoke-direct {p0, p1}, Lcom/viber/voip/registration/aa;-><init>(Lcom/viber/voip/registration/t;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/viber/voip/registration/df;
    .locals 5
    .parameter

    .prologue
    .line 641
    const/4 v0, 0x0

    .line 643
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    .line 644
    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/registration/HardwareParameters;->getUdid()Ljava/lang/String;

    move-result-object v1

    .line 645
    iget-object v2, p0, Lcom/viber/voip/registration/aa;->a:Lcom/viber/voip/registration/t;

    invoke-virtual {v2}, Lcom/viber/voip/registration/t;->g()Lcom/viber/voip/registration/ActivationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/registration/ActivationController;->getRegNumberCanonized()Ljava/lang/String;

    move-result-object v2

    .line 647
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v3

    iget-object v3, v3, Lcom/viber/voip/bd;->n:Ljava/lang/String;

    .line 648
    new-instance v4, Lcom/viber/voip/registration/cr;

    invoke-direct {v4, v3}, Lcom/viber/voip/registration/cr;-><init>(Ljava/lang/String;)V

    .line 650
    :try_start_0
    invoke-virtual {v4, v1, v2}, Lcom/viber/voip/registration/cr;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/registration/df;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 654
    :goto_0
    return-object v0

    .line 651
    :catch_0
    move-exception v1

    .line 652
    const/4 v2, 0x6

    const-string/jumbo v3, "ActivationFragment"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Lcom/viber/voip/registration/df;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 659
    iget-object v0, p0, Lcom/viber/voip/registration/aa;->a:Lcom/viber/voip/registration/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/registration/t;->a(Lcom/viber/voip/registration/t;Lcom/viber/voip/registration/aa;)Lcom/viber/voip/registration/aa;

    .line 660
    iget-object v0, p0, Lcom/viber/voip/registration/aa;->a:Lcom/viber/voip/registration/t;

    invoke-virtual {v0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/aa;->a:Lcom/viber/voip/registration/t;

    invoke-virtual {v0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lcom/viber/voip/registration/df;->a:Z

    if-eqz v0, :cond_2

    .line 663
    iget-object v0, p0, Lcom/viber/voip/registration/aa;->a:Lcom/viber/voip/registration/t;

    invoke-virtual {v0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c05d1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 666
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/registration/aa;->a:Lcom/viber/voip/registration/t;

    invoke-static {v0}, Lcom/viber/voip/registration/t;->g(Lcom/viber/voip/registration/t;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 667
    iget-object v0, p0, Lcom/viber/voip/registration/aa;->a:Lcom/viber/voip/registration/t;

    const-string/jumbo v1, "activation_waiting_dialog"

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/t;->g(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 636
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/registration/aa;->a([Ljava/lang/Void;)Lcom/viber/voip/registration/df;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 672
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 673
    iget-object v0, p0, Lcom/viber/voip/registration/aa;->b:Lcom/viber/voip/util/t;

    invoke-virtual {v0}, Lcom/viber/voip/util/t;->b()V

    .line 674
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    check-cast p1, Lcom/viber/voip/registration/df;

    invoke-virtual {p0, p1}, Lcom/viber/voip/registration/aa;->a(Lcom/viber/voip/registration/df;)V

    return-void
.end method
