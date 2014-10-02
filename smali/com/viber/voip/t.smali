.class Lcom/viber/voip/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/jni/CGetUserDetails;

.field final synthetic b:Lcom/viber/voip/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/r;Lcom/viber/jni/CGetUserDetails;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/viber/voip/t;->b:Lcom/viber/voip/r;

    iput-object p2, p0, Lcom/viber/voip/t;->a:Lcom/viber/jni/CGetUserDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 175
    iget-object v0, p0, Lcom/viber/voip/t;->b:Lcom/viber/voip/r;

    iget-object v0, v0, Lcom/viber/voip/r;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->d(Lcom/viber/voip/BaseAddFriendActivity;)V

    .line 176
    iget-object v0, p0, Lcom/viber/voip/t;->b:Lcom/viber/voip/r;

    iget-object v0, v0, Lcom/viber/voip/r;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->c(Lcom/viber/voip/BaseAddFriendActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/t;->b:Lcom/viber/voip/r;

    iget-object v0, v0, Lcom/viber/voip/r;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->a(Lcom/viber/voip/BaseAddFriendActivity;)Lcom/viber/voip/v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/viber/voip/t;->a:Lcom/viber/jni/CGetUserDetails;

    iget-object v0, v0, Lcom/viber/jni/CGetUserDetails;->Name:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/viber/voip/t;->a:Lcom/viber/jni/CGetUserDetails;

    iget-object v1, v1, Lcom/viber/jni/CGetUserDetails;->DownloadID:Ljava/lang/String;

    invoke-static {v1}, Lcom/viber/voip/util/hv;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/viber/voip/t;->b:Lcom/viber/voip/r;

    iget-object v2, v2, Lcom/viber/voip/r;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v2}, Lcom/viber/voip/BaseAddFriendActivity;->a(Lcom/viber/voip/BaseAddFriendActivity;)Lcom/viber/voip/v;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/t;->b:Lcom/viber/voip/r;

    iget-object v3, v3, Lcom/viber/voip/r;->a:Ljava/lang/String;

    new-instance v4, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;

    invoke-direct {v4, v0, v1}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v2, v3, v4}, Lcom/viber/voip/v;->a(Ljava/lang/String;Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;)V

    goto :goto_0
.end method
