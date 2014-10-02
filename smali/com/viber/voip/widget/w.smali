.class Lcom/viber/voip/widget/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/PttLayout;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/PttLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/viber/voip/widget/w;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 114
    iget-object v0, p0, Lcom/viber/voip/widget/w;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/w;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->H()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const-string/jumbo v0, "Can\'t play ptt message. Ptt id is empty!"

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/widget/w;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v1}, Lcom/viber/voip/widget/PttLayout;->b(Lcom/viber/voip/widget/PttLayout;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    iget-object v0, p0, Lcom/viber/voip/widget/w;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->c(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/h/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/w;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v1}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/viber/voip/h/a;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/widget/w;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v1}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/viber/voip/widget/w;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v1}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->R()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 125
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getPttController()Lcom/viber/jni/ptt/PttController;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/w;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v1}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->I()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/jni/ptt/PttController;->handleDownloadPtt(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/widget/w;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v1}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->r:Lcom/viber/voip/a/ad;

    invoke-virtual {v2}, Lcom/viber/voip/a/ad;->g()Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 132
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "play ptt message. pttId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/widget/PttLayout;->a(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/viber/voip/widget/w;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v1}, Lcom/viber/voip/widget/PttLayout;->c(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/h/a;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/viber/voip/h/a;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 130
    :cond_4
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->r:Lcom/viber/voip/a/ad;

    invoke-virtual {v2}, Lcom/viber/voip/a/ad;->h()Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_1
.end method
