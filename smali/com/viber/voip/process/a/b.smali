.class Lcom/viber/voip/process/a/b;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/jni/PhoneControllerWrapper;

.field final synthetic b:Lcom/viber/voip/process/b;

.field final synthetic c:Lcom/viber/voip/process/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/process/a/a;Lcom/viber/jni/PhoneControllerWrapper;Lcom/viber/voip/process/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/viber/voip/process/a/b;->c:Lcom/viber/voip/process/a/a;

    iput-object p2, p0, Lcom/viber/voip/process/a/b;->a:Lcom/viber/jni/PhoneControllerWrapper;

    iput-object p3, p0, Lcom/viber/voip/process/a/b;->b:Lcom/viber/voip/process/b;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetBillingToken(JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/process/a/b;->a:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 33
    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/viber/voip/process/a/b;->b:Lcom/viber/voip/process/b;

    invoke-interface {v1, v0}, Lcom/viber/voip/process/b;->a(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method
