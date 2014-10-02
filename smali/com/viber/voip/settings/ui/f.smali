.class Lcom/viber/voip/settings/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/a;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/viber/voip/settings/ui/f;->a:Lcom/viber/voip/settings/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 3
    .parameter

    .prologue
    .line 198
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getSecureCallsController()Lcom/viber/jni/secure/SecureCallsController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/jni/secure/SecureCallsController;->handleClearSecureCallStorage()I

    .line 199
    iget-object v0, p0, Lcom/viber/voip/settings/ui/f;->a:Lcom/viber/voip/settings/ui/a;

    invoke-virtual {v0}, Lcom/viber/voip/settings/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0668

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
