.class Lcom/viber/voip/registration/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/b;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/viber/voip/registration/c;->a:Lcom/viber/voip/registration/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/viber/voip/registration/c;->a:Lcom/viber/voip/registration/b;

    invoke-static {v0}, Lcom/viber/voip/registration/b;->a(Lcom/viber/voip/registration/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const-class v1, Lcom/viber/voip/registration/RegistrationActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->isActivityOnForeground(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const-class v1, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->isActivityOnForeground(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/viber/voip/registration/c;->a:Lcom/viber/voip/registration/b;

    invoke-static {v0}, Lcom/viber/voip/registration/b;->b(Lcom/viber/voip/registration/b;)V

    .line 63
    :cond_0
    return-void
.end method
