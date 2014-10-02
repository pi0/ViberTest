.class abstract Lcom/viber/voip/messages/conversation/publicgroup/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/upload/p;


# instance fields
.field final synthetic h:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/x;->h:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Lcom/viber/voip/messages/conversation/publicgroup/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/x;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 687
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/x;->h:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    const-string/jumbo v1, "onUploadTimeout"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->d(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 675
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/x;->h:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upload error errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->d(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/x;->h:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->d()V

    .line 677
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const-string/jumbo v1, "Error during upload image!"

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->showToast(Ljava/lang/String;)V

    .line 678
    return-void
.end method
