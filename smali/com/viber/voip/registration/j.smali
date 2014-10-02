.class Lcom/viber/voip/registration/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/y;


# instance fields
.field final synthetic a:Lcom/viber/voip/ViberApplication;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/viber/voip/registration/ActivationController;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/ActivationController;Lcom/viber/voip/ViberApplication;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/viber/voip/registration/j;->c:Lcom/viber/voip/registration/ActivationController;

    iput-object p2, p0, Lcom/viber/voip/registration/j;->a:Lcom/viber/voip/ViberApplication;

    iput-object p3, p0, Lcom/viber/voip/registration/j;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/viber/voip/registration/j;->a:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/viber/voip/registration/k;

    invoke-direct {v2, p0}, Lcom/viber/voip/registration/k;-><init>(Lcom/viber/voip/registration/j;)V

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/controller/x;->a(ZLcom/viber/voip/messages/controller/z;)V

    .line 426
    return-void
.end method
