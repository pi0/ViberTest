.class Lcom/viber/voip/widget/c;
.super Lcom/viber/voip/messages/controller/di;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/FollowPublicGroupLayout;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/FollowPublicGroupLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/viber/voip/widget/c;->a:Lcom/viber/voip/widget/FollowPublicGroupLayout;

    invoke-direct {p0}, Lcom/viber/voip/messages/controller/di;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/viber/voip/widget/c;->a:Lcom/viber/voip/widget/FollowPublicGroupLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/FollowPublicGroupLayout;->a(Lcom/viber/voip/widget/FollowPublicGroupLayout;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 117
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/controller/c/e;->b(Lcom/viber/voip/messages/controller/dc;)V

    .line 118
    iget-object v0, p0, Lcom/viber/voip/widget/c;->a:Lcom/viber/voip/widget/FollowPublicGroupLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/FollowPublicGroupLayout;->b(Lcom/viber/voip/widget/FollowPublicGroupLayout;)Lcom/viber/voip/widget/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/viber/voip/widget/c;->a:Lcom/viber/voip/widget/FollowPublicGroupLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/FollowPublicGroupLayout;->b(Lcom/viber/voip/widget/FollowPublicGroupLayout;)Lcom/viber/voip/widget/d;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/c;->a:Lcom/viber/voip/widget/FollowPublicGroupLayout;

    invoke-static {v1}, Lcom/viber/voip/widget/FollowPublicGroupLayout;->c(Lcom/viber/voip/widget/FollowPublicGroupLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/widget/d;->a(Lcom/viber/voip/messages/conversation/a/a/a;)V

    .line 122
    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/viber/voip/widget/c;->a:Lcom/viber/voip/widget/FollowPublicGroupLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/FollowPublicGroupLayout;->a(Lcom/viber/voip/widget/FollowPublicGroupLayout;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 127
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/controller/c/e;->b(Lcom/viber/voip/messages/controller/dc;)V

    .line 132
    :cond_0
    return-void
.end method
