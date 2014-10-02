.class Lcom/viber/voip/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/do;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/BaseAddFriendActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/BaseAddFriendActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/viber/voip/r;->b:Lcom/viber/voip/BaseAddFriendActivity;

    iput-object p2, p0, Lcom/viber/voip/r;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/viber/voip/r;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->e(Lcom/viber/voip/BaseAddFriendActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/r;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v1}, Lcom/viber/voip/BaseAddFriendActivity;->b(Lcom/viber/voip/BaseAddFriendActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    iget-object v0, p0, Lcom/viber/voip/r;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->e(Lcom/viber/voip/BaseAddFriendActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/s;

    invoke-direct {v1, p0}, Lcom/viber/voip/s;-><init>(Lcom/viber/voip/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method public a([Lcom/viber/jni/CGetUserDetails;)V
    .locals 3
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/viber/voip/r;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->e(Lcom/viber/voip/BaseAddFriendActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/r;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v1}, Lcom/viber/voip/BaseAddFriendActivity;->b(Lcom/viber/voip/BaseAddFriendActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 172
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/r;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v1}, Lcom/viber/voip/BaseAddFriendActivity;->e(Lcom/viber/voip/BaseAddFriendActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/t;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/t;-><init>(Lcom/viber/voip/r;Lcom/viber/jni/CGetUserDetails;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
