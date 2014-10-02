.class Lcom/viber/voip/messages/ui/chathead/a/m;
.super Lcom/viber/voip/messages/ui/chathead/a/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/a/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public D()Landroid/content/Context;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->d(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public E()Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->e(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->c()V

    .line 122
    return-void
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->c()V

    .line 93
    packed-switch p1, :pswitch_data_0

    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->b(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "popup_action_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->c(Lcom/viber/voip/messages/ui/chathead/a/l;)V

    .line 102
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->a(Lcom/viber/voip/messages/ui/chathead/a/l;)Lcom/viber/voip/messages/ui/chathead/a/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/b;->d(Z)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public e_(I)V
    .locals 3
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->c()V

    .line 135
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->b(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->b(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "popup_action_id"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->b(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "package_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->f(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->b(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public f_()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->c()V

    .line 127
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->b(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->b(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "popup_action_id"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->f(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->b(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public f_(I)V
    .locals 3
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->c()V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->b(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->b(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "popup_action_id"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->b(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "package_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->f(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->b(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method public h()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/m;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->d(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
