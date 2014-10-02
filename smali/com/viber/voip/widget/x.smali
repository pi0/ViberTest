.class Lcom/viber/voip/widget/x;
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
    .line 184
    iput-object p1, p0, Lcom/viber/voip/widget/x;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/viber/voip/widget/x;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->J()Z

    move-result v2

    .line 188
    iget-object v0, p0, Lcom/viber/voip/widget/x;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->d(Lcom/viber/voip/widget/PttLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/viber/voip/widget/x;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->b(Lcom/viber/voip/widget/PttLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    :cond_0
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/x;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v1}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->ae()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/h/b;->a(I)J

    move-result-wide v0

    .line 190
    :goto_0
    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/viber/voip/widget/x;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v2}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/messages/conversation/a/a/a;->Z()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/widget/x;->a:Lcom/viber/voip/widget/PttLayout;

    iget-object v3, p0, Lcom/viber/voip/widget/x;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v3}, Lcom/viber/voip/widget/PttLayout;->c(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/h/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/h/a;->c()Z

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcom/viber/voip/widget/PttLayout;->a(Lcom/viber/voip/widget/PttLayout;JZ)V

    .line 196
    iget-object v0, p0, Lcom/viber/voip/widget/x;->a:Lcom/viber/voip/widget/PttLayout;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Lcom/viber/voip/widget/PttLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    :cond_2
    return-void

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/widget/x;->a:Lcom/viber/voip/widget/PttLayout;

    invoke-static {v0}, Lcom/viber/voip/widget/PttLayout;->c(Lcom/viber/voip/widget/PttLayout;)Lcom/viber/voip/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/h/a;->b()J

    move-result-wide v0

    goto :goto_0
.end method
