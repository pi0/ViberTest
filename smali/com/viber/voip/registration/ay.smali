.class Lcom/viber/voip/registration/ay;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/DeActivationActivity;

.field private b:Lcom/viber/voip/util/t;


# direct methods
.method private constructor <init>(Lcom/viber/voip/registration/DeActivationActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/viber/voip/registration/ay;->a:Lcom/viber/voip/registration/DeActivationActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 86
    new-instance v0, Lcom/viber/voip/util/t;

    invoke-direct {v0}, Lcom/viber/voip/util/t;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/registration/ay;->b:Lcom/viber/voip/util/t;

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/registration/DeActivationActivity;Lcom/viber/voip/registration/ax;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/viber/voip/registration/ay;-><init>(Lcom/viber/voip/registration/DeActivationActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .parameter

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/viber/voip/registration/ay;->a:Lcom/viber/voip/registration/DeActivationActivity;

    invoke-virtual {v0}, Lcom/viber/voip/registration/DeActivationActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    .line 99
    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    const-string/jumbo v0, "com.viber.voip.action.CONNECTION_PROBLEM"

    .line 119
    :goto_0
    return-object v0

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v2

    .line 104
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/viber/voip/registration/ActivationController;->setShouldDeactivate(Z)V

    .line 106
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/registration/ActivationController;->getDeActivationManager()Lcom/viber/voip/registration/bc;

    move-result-object v2

    .line 107
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v3

    .line 109
    invoke-virtual {v3}, Lcom/viber/voip/registration/ActivationController;->getRegNumber()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v3}, Lcom/viber/voip/registration/ActivationController;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 113
    :try_start_0
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->getUdid()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/viber/voip/registration/ay;->b:Lcom/viber/voip/util/t;

    invoke-virtual {v2, v4, v3, v0, v5}, Lcom/viber/voip/registration/bc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/t;)Lcom/viber/voip/registration/df;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 85
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/viber/voip/registration/ay;->a([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 142
    iget-object v0, p0, Lcom/viber/voip/registration/ay;->b:Lcom/viber/voip/util/t;

    invoke-virtual {v0}, Lcom/viber/voip/util/t;->b()V

    .line 143
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/viber/voip/registration/ay;->a:Lcom/viber/voip/registration/DeActivationActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/DeActivationActivity;->a(I)V

    .line 125
    if-nez p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/viber/voip/registration/ay;->a:Lcom/viber/voip/registration/DeActivationActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/DeActivationActivity;->b(I)V

    .line 137
    :goto_0
    return-void

    .line 127
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Landroid/content/Intent;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/viber/voip/registration/ay;->a:Lcom/viber/voip/registration/DeActivationActivity;

    invoke-virtual {v1, v0}, Lcom/viber/voip/registration/DeActivationActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    iget-object v0, p0, Lcom/viber/voip/registration/ay;->a:Lcom/viber/voip/registration/DeActivationActivity;

    invoke-virtual {v0}, Lcom/viber/voip/registration/DeActivationActivity;->finish()V

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 132
    check-cast v0, Lcom/viber/voip/registration/df;

    iget-boolean v0, v0, Lcom/viber/voip/registration/df;->a:Z

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/viber/voip/registration/ay;->a:Lcom/viber/voip/registration/DeActivationActivity;

    invoke-static {v0}, Lcom/viber/voip/registration/DeActivationActivity;->a(Lcom/viber/voip/registration/DeActivationActivity;)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/registration/ay;->a:Lcom/viber/voip/registration/DeActivationActivity;

    check-cast p1, Lcom/viber/voip/registration/df;

    iget-object v1, p1, Lcom/viber/voip/registration/df;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/registration/DeActivationActivity;->a(Lcom/viber/voip/registration/DeActivationActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/registration/ay;->a:Lcom/viber/voip/registration/DeActivationActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/DeActivationActivity;->b(I)V

    .line 91
    return-void
.end method
