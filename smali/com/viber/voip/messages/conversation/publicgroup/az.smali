.class Lcom/viber/voip/messages/conversation/publicgroup/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/az;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/az;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 527
    const-string/jumbo v0, "call doLeaveGroup"

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/az;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->e(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)V

    .line 531
    return-void
.end method
