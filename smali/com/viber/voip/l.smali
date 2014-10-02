.class Lcom/viber/voip/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/BaseAddFriendActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/BaseAddFriendActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/viber/voip/l;->a:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/viber/voip/l;->a:Lcom/viber/voip/BaseAddFriendActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/BaseAddFriendActivity;->a(Lcom/viber/voip/BaseAddFriendActivity;Z)Z

    .line 45
    iget-object v0, p0, Lcom/viber/voip/l;->a:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->a(Lcom/viber/voip/BaseAddFriendActivity;)Lcom/viber/voip/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/l;->a:Lcom/viber/voip/BaseAddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/BaseAddFriendActivity;->a(Lcom/viber/voip/BaseAddFriendActivity;)Lcom/viber/voip/v;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/v;->a()V

    .line 46
    :cond_0
    return-void
.end method
