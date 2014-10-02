.class Lcom/viber/voip/registration/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/BaseRegistrationActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/BaseRegistrationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/viber/voip/registration/ag;->a:Lcom/viber/voip/registration/BaseRegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 77
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/registration/ah;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/registration/ah;-><init>(Lcom/viber/voip/registration/ag;Lcom/viber/voip/ViberApplication;)V

    invoke-virtual {v1, v2}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 85
    return-void
.end method
