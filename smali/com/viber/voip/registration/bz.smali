.class Lcom/viber/voip/registration/bz;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/RegistrationActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/RegistrationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/viber/voip/registration/bz;->a:Lcom/viber/voip/registration/RegistrationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/viber/voip/registration/bz;->a:Lcom/viber/voip/registration/RegistrationActivity;

    invoke-virtual {v0, p2}, Lcom/viber/voip/registration/RegistrationActivity;->setIntent(Landroid/content/Intent;)V

    .line 87
    iget-object v0, p0, Lcom/viber/voip/registration/bz;->a:Lcom/viber/voip/registration/RegistrationActivity;

    invoke-static {v0}, Lcom/viber/voip/registration/RegistrationActivity;->a(Lcom/viber/voip/registration/RegistrationActivity;)V

    .line 88
    return-void
.end method
