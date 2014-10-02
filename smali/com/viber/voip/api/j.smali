.class final Lcom/viber/voip/api/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/api/z;


# instance fields
.field final synthetic a:Lcom/viber/voip/api/w;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/api/y;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/w;Ljava/lang/String;Lcom/viber/voip/api/y;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/viber/voip/api/j;->a:Lcom/viber/voip/api/w;

    iput-object p2, p0, Lcom/viber/voip/api/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/api/j;->c:Lcom/viber/voip/api/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 700
    iget-object v0, p0, Lcom/viber/voip/api/j;->c:Lcom/viber/voip/api/y;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    .line 701
    return-void
.end method

.method public a(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 4
    .parameter

    .prologue
    .line 681
    invoke-virtual {p1}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getPublicGroupInfoReceiverListener()Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;

    move-result-object v0

    .line 682
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$PublicGroupInfoReceiver;

    const/4 v2, 0x0

    new-instance v3, Lcom/viber/voip/api/k;

    invoke-direct {v3, p0, v0}, Lcom/viber/voip/api/k;-><init>(Lcom/viber/voip/api/j;Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 695
    invoke-virtual {p1}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/api/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->handleGetPublicGroupInfoUri(ILjava/lang/String;)Z

    .line 696
    return-void
.end method
