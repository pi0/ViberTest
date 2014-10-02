.class Lcom/viber/voip/messages/ui/chathead/a/n;
.super Lcom/viber/voip/messages/ui/chathead/a/i;
.source "SourceFile"


# instance fields
.field final synthetic f:Lcom/viber/voip/messages/ui/chathead/a/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a/n;->f:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 3
    .parameter

    .prologue
    .line 154
    packed-switch p1, :pswitch_data_0

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/n;->f:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->c()V

    .line 167
    return-void

    .line 157
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/n;->f:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->g(Lcom/viber/voip/messages/ui/chathead/a/l;)Lcom/viber/voip/messages/ui/chathead/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/n;->f:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->f(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/ui/chathead/a/i;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/n;->f:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->g(Lcom/viber/voip/messages/ui/chathead/a/l;)Lcom/viber/voip/messages/ui/chathead/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/n;->f:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->f(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/ui/chathead/a/i;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/n;->f:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->h(Lcom/viber/voip/messages/ui/chathead/a/l;)V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
