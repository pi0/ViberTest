.class Lcom/viber/voip/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/viber/voip/cn;->a:Lcom/viber/voip/SystemDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 960
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleClose()V

    .line 961
    iget-object v0, p0, Lcom/viber/voip/cn;->a:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v0, p1}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/content/DialogInterface;)V

    .line 962
    return-void
.end method
