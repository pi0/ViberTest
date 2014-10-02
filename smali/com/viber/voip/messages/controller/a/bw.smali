.class Lcom/viber/voip/messages/controller/a/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/a/br;

.field final synthetic b:Lcom/viber/voip/messages/controller/a/bv;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/bv;Lcom/viber/voip/messages/controller/a/br;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/bw;->b:Lcom/viber/voip/messages/controller/a/bv;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/a/bw;->a:Lcom/viber/voip/messages/controller/a/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bw;->b:Lcom/viber/voip/messages/controller/a/bv;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/bv;->a:Lcom/viber/voip/messages/controller/a/br;

    const-string/jumbo v1, "SyncUserInfoManager.onTimeout"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/controller/a/br;->a(Lcom/viber/voip/messages/controller/a/br;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bw;->b:Lcom/viber/voip/messages/controller/a/bv;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/bv;->a(Lcom/viber/voip/messages/controller/a/bv;)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/bw;->b:Lcom/viber/voip/messages/controller/a/bv;

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 217
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bw;->b:Lcom/viber/voip/messages/controller/a/bv;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/bv;->b(Lcom/viber/voip/messages/controller/a/bv;)Lcom/viber/voip/messages/controller/do;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/controller/do;->a()V

    .line 218
    return-void
.end method
