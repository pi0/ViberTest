.class Lcom/viber/voip/registration/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Lcom/viber/voip/registration/RegistrationActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/RegistrationActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/viber/voip/registration/ca;->b:Lcom/viber/voip/registration/RegistrationActivity;

    iput-object p2, p0, Lcom/viber/voip/registration/ca;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/viber/voip/registration/ca;->b:Lcom/viber/voip/registration/RegistrationActivity;

    iget-object v1, p0, Lcom/viber/voip/registration/ca;->a:Landroid/support/v4/app/Fragment;

    invoke-static {v0, v1}, Lcom/viber/voip/registration/RegistrationActivity;->a(Lcom/viber/voip/registration/RegistrationActivity;Landroid/support/v4/app/Fragment;)V

    .line 209
    return-void
.end method
