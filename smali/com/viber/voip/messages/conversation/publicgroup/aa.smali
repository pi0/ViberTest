.class Lcom/viber/voip/messages/conversation/publicgroup/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;

.field final synthetic b:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/aa;->b:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/publicgroup/aa;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aa;->b:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->e:Lcom/viber/voip/messages/conversation/ax;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/aa;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupDataLoaderEntity;->M()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ax;->a([Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aa;->b:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->c(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)V

    .line 188
    return-void
.end method
