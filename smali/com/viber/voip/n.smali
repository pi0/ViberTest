.class Lcom/viber/voip/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hj;


# instance fields
.field final synthetic a:Lcom/viber/voip/BaseAddFriendActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/BaseAddFriendActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/viber/voip/n;->a:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/n;->a:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->c(Lcom/viber/voip/BaseAddFriendActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/viber/voip/n;->a:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->e(Lcom/viber/voip/BaseAddFriendActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/o;

    invoke-direct {v1, p0}, Lcom/viber/voip/o;-><init>(Lcom/viber/voip/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/n;->a:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->e(Lcom/viber/voip/BaseAddFriendActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/p;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/viber/voip/p;-><init>(Lcom/viber/voip/n;ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
