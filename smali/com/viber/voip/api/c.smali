.class Lcom/viber/voip/api/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/api/y;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Lcom/viber/voip/api/ViberUrlHandlerActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/ViberUrlHandlerActivity;Ljava/util/Iterator;[Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/viber/voip/api/c;->d:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    iput-object p2, p0, Lcom/viber/voip/api/c;->a:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/viber/voip/api/c;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcom/viber/voip/api/c;->c:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 116
    if-nez p1, :cond_3

    .line 117
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    if-eqz p2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/viber/voip/api/c;->d:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-virtual {v0, p2}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/api/c;->d:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-virtual {v0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->finish()V

    .line 147
    :goto_1
    return-void

    .line 122
    :cond_1
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->getStep()I

    move-result v0

    .line 123
    const/4 v1, 0x4

    if-ne v1, v0, :cond_2

    .line 124
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 126
    :cond_2
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->resumeActivation()V

    goto :goto_0

    .line 129
    :cond_3
    const/4 v0, 0x3

    if-ne v0, p1, :cond_5

    .line 130
    if-eqz p2, :cond_4

    .line 131
    iget-object v0, p0, Lcom/viber/voip/api/c;->d:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-virtual {v0, p2}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/api/c;->d:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-virtual {v0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->finish()V

    goto :goto_1

    .line 134
    :cond_5
    const/4 v0, 0x2

    if-ne v0, p1, :cond_7

    .line 135
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    iget-object v0, p0, Lcom/viber/voip/api/c;->d:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-static {v0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a(Lcom/viber/voip/api/ViberUrlHandlerActivity;)V

    goto :goto_1

    .line 138
    :cond_6
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->resumeActivation()V

    .line 139
    iget-object v0, p0, Lcom/viber/voip/api/c;->d:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-virtual {v0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->finish()V

    goto :goto_1

    .line 141
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/api/c;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 142
    iget-object v0, p0, Lcom/viber/voip/api/c;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/api/aa;

    .line 143
    iget-object v1, p0, Lcom/viber/voip/api/c;->d:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    iget-object v2, p0, Lcom/viber/voip/api/c;->b:[Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/api/c;->c:Landroid/net/Uri;

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/viber/voip/api/aa;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/viber/voip/api/y;Landroid/net/Uri;)V

    goto :goto_1

    .line 145
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/api/c;->d:Lcom/viber/voip/api/ViberUrlHandlerActivity;

    invoke-static {v0}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->b(Lcom/viber/voip/api/ViberUrlHandlerActivity;)V

    goto :goto_1
.end method
