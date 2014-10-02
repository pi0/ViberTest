.class Lcom/viber/voip/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/i;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/BaseAddFriendActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/BaseAddFriendActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/viber/voip/q;->b:Lcom/viber/voip/BaseAddFriendActivity;

    iput-object p2, p0, Lcom/viber/voip/q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/viber/voip/q;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->d(Lcom/viber/voip/BaseAddFriendActivity;)V

    .line 139
    iget-object v0, p0, Lcom/viber/voip/q;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->c(Lcom/viber/voip/BaseAddFriendActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/q;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->e(Lcom/viber/voip/BaseAddFriendActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/q;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v1}, Lcom/viber/voip/BaseAddFriendActivity;->b(Lcom/viber/voip/BaseAddFriendActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b;

    .line 145
    iget-object v1, p0, Lcom/viber/voip/q;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v1}, Lcom/viber/voip/BaseAddFriendActivity;->a(Lcom/viber/voip/BaseAddFriendActivity;)Lcom/viber/voip/v;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/viber/voip/q;->b:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v1}, Lcom/viber/voip/BaseAddFriendActivity;->a(Lcom/viber/voip/BaseAddFriendActivity;)Lcom/viber/voip/v;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/q;->a:Ljava/lang/String;

    new-instance v3, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;

    invoke-direct {v3, v0}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;-><init>(Lcom/viber/voip/contacts/b/b;)V

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/v;->a(Ljava/lang/String;Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;)V

    goto :goto_0
.end method
