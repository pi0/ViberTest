.class Lcom/viber/voip/messages/conversation/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/lastonline/LastOnlineDelegate;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/m;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/v;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastOnline([Lcom/viber/jni/OnlineContactInfo;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/v;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->l(Lcom/viber/voip/messages/conversation/ui/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/v;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/v;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->d(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/v;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->d(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 265
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 266
    iget-object v3, v2, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    .line 268
    :cond_0
    iget-object v3, v2, Lcom/viber/jni/OnlineContactInfo;->contactPhone:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/v;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v4}, Lcom/viber/voip/messages/conversation/ui/m;->d(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/h;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/v;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->j(Lcom/viber/voip/messages/conversation/ui/m;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/w;

    invoke-direct {v1, p0, v2}, Lcom/viber/voip/messages/conversation/ui/w;-><init>(Lcom/viber/voip/messages/conversation/ui/v;Lcom/viber/jni/OnlineContactInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    :cond_1
    return-void

    .line 265
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
