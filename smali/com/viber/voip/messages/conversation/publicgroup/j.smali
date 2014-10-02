.class Lcom/viber/voip/messages/conversation/publicgroup/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/image/e;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 980
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/j;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/viber/voip/messages/ui/media/SendMediaDataContainer;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 983
    return-void
.end method

.method public a(I[Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 987
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    aget-object v0, p2, v1

    if-eqz v0, :cond_0

    .line 988
    invoke-static {}, Lcom/viber/voip/messages/extras/image/b;->a()Lcom/viber/voip/messages/extras/image/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/extras/image/b;->b(Lcom/viber/voip/messages/extras/image/e;)V

    .line 989
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/j;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    aget-object v1, p2, v1

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->b:Landroid/net/Uri;

    iput-object v1, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->o:Landroid/net/Uri;

    .line 990
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/j;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->r:Lcom/viber/voip/util/b/w;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/j;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->o:Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/j;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v2, v2, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->s:Lcom/viber/voip/util/b/x;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/j;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v3, v3, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->v:Lcom/viber/voip/util/b/al;

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 992
    :cond_0
    return-void
.end method
