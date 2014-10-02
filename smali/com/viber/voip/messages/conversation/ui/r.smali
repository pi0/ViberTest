.class Lcom/viber/voip/messages/conversation/ui/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/az;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Lcom/viber/voip/messages/conversation/ui/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/String;Landroid/content/Context;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/r;->e:Lcom/viber/voip/messages/conversation/ui/m;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/messages/conversation/ui/r;->b:Landroid/content/Context;

    iput-wide p4, p0, Lcom/viber/voip/messages/conversation/ui/r;->c:J

    iput-wide p6, p0, Lcom/viber/voip/messages/conversation/ui/r;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 7
    .parameter

    .prologue
    .line 736
    const-string/jumbo v0, "image"

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video"

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "animated_message"

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/r;->b:Landroid/content/Context;

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/ui/r;->c:J

    iget-wide v3, p0, Lcom/viber/voip/messages/conversation/ui/r;->d:J

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/ui/r;->e:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v5}, Lcom/viber/voip/messages/conversation/ui/m;->m(Lcom/viber/voip/messages/conversation/ui/m;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/viber/voip/messages/conversation/ui/r;->e:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v6}, Lcom/viber/voip/messages/conversation/ui/m;->f()Lcom/viber/voip/a/m;

    move-result-object v6

    invoke-virtual {v6}, Lcom/viber/voip/a/m;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_1
    return-void
.end method
