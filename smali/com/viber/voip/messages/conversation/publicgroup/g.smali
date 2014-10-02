.class Lcom/viber/voip/messages/conversation/publicgroup/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/g;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iput-boolean p2, p0, Lcom/viber/voip/messages/conversation/publicgroup/g;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 800
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/g;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->e(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/g;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/g;->a:Z

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;IZ)V

    .line 802
    :cond_0
    return-void
.end method
