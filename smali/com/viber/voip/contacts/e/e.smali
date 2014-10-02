.class Lcom/viber/voip/contacts/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/e/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/e/a;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 132
    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->c(Lcom/viber/voip/contacts/e/a;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->c(Lcom/viber/voip/contacts/e/a;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->c(Lcom/viber/voip/contacts/e/a;)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    .line 135
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v2}, Lcom/viber/voip/contacts/e/a;->d(Lcom/viber/voip/contacts/e/a;)Lcom/viber/voip/contacts/e/h;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/viber/voip/contacts/e/h;->a(Lcom/viber/voip/contacts/e/h;Z)V

    .line 136
    iget-object v2, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v2}, Lcom/viber/voip/contacts/e/a;->e(Lcom/viber/voip/contacts/e/a;)Lcom/viber/voip/contacts/e/h;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/viber/voip/contacts/e/h;->a(Lcom/viber/voip/contacts/e/h;Z)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->c(Lcom/viber/voip/contacts/e/a;)I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->c(Lcom/viber/voip/contacts/e/a;)I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->f(Lcom/viber/voip/contacts/e/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->h(Lcom/viber/voip/contacts/e/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/e/f;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/e/f;-><init>(Lcom/viber/voip/contacts/e/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    :cond_3
    :goto_1
    return-void

    .line 133
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->c(Lcom/viber/voip/contacts/e/a;)I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 151
    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->g(Lcom/viber/voip/contacts/e/a;)Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/e/a;->f(Lcom/viber/voip/contacts/e/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v2}, Lcom/viber/voip/contacts/e/a;->f(Lcom/viber/voip/contacts/e/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/contacts/e/j;->d(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->c(Lcom/viber/voip/contacts/e/a;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 153
    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->g(Lcom/viber/voip/contacts/e/a;)Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/e/a;->f(Lcom/viber/voip/contacts/e/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v2}, Lcom/viber/voip/contacts/e/a;->f(Lcom/viber/voip/contacts/e/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/contacts/e/j;->e(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 155
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->c(Lcom/viber/voip/contacts/e/a;)I

    move-result v0

    if-nez v0, :cond_8

    .line 156
    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->g(Lcom/viber/voip/contacts/e/a;)Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/e/a;->a(Lcom/viber/voip/contacts/e/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v2}, Lcom/viber/voip/contacts/e/a;->b(Lcom/viber/voip/contacts/e/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/contacts/e/j;->c(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->c(Lcom/viber/voip/contacts/e/a;)I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 158
    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->g(Lcom/viber/voip/contacts/e/a;)Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/e/a;->a(Lcom/viber/voip/contacts/e/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v2}, Lcom/viber/voip/contacts/e/a;->b(Lcom/viber/voip/contacts/e/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/contacts/e/j;->a(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_9
    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->c(Lcom/viber/voip/contacts/e/a;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 160
    iget-object v0, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/e/a;->g(Lcom/viber/voip/contacts/e/a;)Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/e/a;->a(Lcom/viber/voip/contacts/e/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/e/e;->a:Lcom/viber/voip/contacts/e/a;

    invoke-static {v2}, Lcom/viber/voip/contacts/e/a;->b(Lcom/viber/voip/contacts/e/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/contacts/e/j;->b(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
