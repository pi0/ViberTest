.class Lcom/viber/voip/messages/ui/media/au;
.super Lcom/viber/voip/messages/extras/twitter/t;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/twitter/l;

.field final synthetic b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;Lcom/viber/voip/messages/extras/twitter/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/au;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/media/au;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/twitter/t;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthComplete()V
    .locals 8

    .prologue
    .line 576
    new-instance v7, Lcom/viber/voip/messages/ui/media/av;

    invoke-direct {v7, p0}, Lcom/viber/voip/messages/ui/media/av;-><init>(Lcom/viber/voip/messages/ui/media/au;)V

    .line 596
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/au;->a:Lcom/viber/voip/messages/extras/twitter/l;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/au;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/au;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->f(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/conversation/an;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/au;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v4}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->f(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/conversation/an;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/viber/voip/messages/ui/media/au;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v5}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->f(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/conversation/an;

    move-result-object v5

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/an;->v()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/viber/voip/messages/ui/media/au;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v6}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->f(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/conversation/an;

    move-result-object v6

    invoke-virtual {v6}, Lcom/viber/voip/messages/conversation/an;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/messages/extras/twitter/l;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/extras/twitter/z;)V

    .line 599
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/au;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->f(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/au;->b:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->g(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/a/ax;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/a/ax;->a:Lcom/viber/voip/a/ao;

    sget-object v2, Lcom/viber/voip/a/aq;->b:Lcom/viber/voip/a/aq;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/ao;->a(Lcom/viber/voip/a/aq;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 602
    :cond_0
    return-void
.end method
