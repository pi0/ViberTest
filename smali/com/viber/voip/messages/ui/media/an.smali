.class Lcom/viber/voip/messages/ui/media/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/ai;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/media/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/media/ai;Lcom/viber/voip/messages/ui/media/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/an;-><init>(Lcom/viber/voip/messages/ui/media/ai;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 199
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/media/ai;->a(Lcom/viber/voip/messages/ui/media/ai;Z)V

    .line 201
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ai;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ai;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->c(Lcom/viber/voip/messages/ui/media/ai;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->d(Lcom/viber/voip/messages/ui/media/ai;)Lcom/viber/voip/messages/ui/media/ap;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/ui/media/ap;->f:Lcom/viber/voip/messages/ui/media/ap;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ai;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const-string/jumbo v0, "setMediaUri SAME URI RETURN!"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->d(Lcom/viber/voip/messages/ui/media/ai;)Lcom/viber/voip/messages/ui/media/ap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ai;->a(Lcom/viber/voip/messages/ui/media/ai;Lcom/viber/voip/messages/ui/media/ap;)V

    .line 204
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->f(Lcom/viber/voip/messages/ui/media/ai;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->e(Lcom/viber/voip/messages/ui/media/ai;)Lcom/viber/voip/messages/ui/media/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    .line 230
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ai;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ai;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->c(Lcom/viber/voip/messages/ui/media/ai;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/media/ai;->a(Lcom/viber/voip/messages/ui/media/ai;I)I

    .line 213
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->c(Lcom/viber/voip/messages/ui/media/ai;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ai;->a(Lcom/viber/voip/messages/ui/media/ai;Landroid/net/Uri;)Landroid/net/Uri;

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ai;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->f(Lcom/viber/voip/messages/ui/media/ai;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->e(Lcom/viber/voip/messages/ui/media/ai;)Lcom/viber/voip/messages/ui/media/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    .line 219
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    sget-object v1, Lcom/viber/voip/messages/ui/media/ap;->a:Lcom/viber/voip/messages/ui/media/ap;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ai;->a(Lcom/viber/voip/messages/ui/media/ai;Lcom/viber/voip/messages/ui/media/ap;)V

    .line 223
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ai;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ai;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMediaUri error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    sget-object v1, Lcom/viber/voip/messages/ui/media/ap;->f:Lcom/viber/voip/messages/ui/media/ap;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ai;Lcom/viber/voip/messages/ui/media/ap;)V

    .line 227
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->h(Lcom/viber/voip/messages/ui/media/ai;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/media/ai;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->g(Lcom/viber/voip/messages/ui/media/ai;)I

    goto :goto_1

    .line 221
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/an;->a:Lcom/viber/voip/messages/ui/media/ai;

    sget-object v1, Lcom/viber/voip/messages/ui/media/ap;->f:Lcom/viber/voip/messages/ui/media/ap;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ai;->a(Lcom/viber/voip/messages/ui/media/ai;Lcom/viber/voip/messages/ui/media/ap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
