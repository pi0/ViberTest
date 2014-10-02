.class Lcom/viber/voip/registration/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/k;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/k;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/viber/voip/registration/l;->a:Lcom/viber/voip/registration/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 419
    const-string/jumbo v0, "deActivateDone EXIT APP!"

    #calls: Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/registration/ActivationController;->access$100(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/viber/voip/registration/l;->a:Lcom/viber/voip/registration/k;

    iget-object v0, v0, Lcom/viber/voip/registration/k;->a:Lcom/viber/voip/registration/j;

    iget-object v0, v0, Lcom/viber/voip/registration/j;->b:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/ViberApplication;->exit(Landroid/app/Activity;Z)V

    .line 421
    return-void
.end method
