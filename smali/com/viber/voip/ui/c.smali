.class Lcom/viber/voip/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/ui/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/ui/a;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 93
    iget-object v0, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v0}, Lcom/viber/voip/ui/a;->a(Lcom/viber/voip/ui/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 94
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v2}, Lcom/viber/voip/ui/a;->b(Lcom/viber/voip/ui/a;)I

    move-result v2

    if-ne v0, v2, :cond_5

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v2}, Lcom/viber/voip/ui/a;->c(Lcom/viber/voip/ui/a;)I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 95
    invoke-static {}, Lcom/viber/voip/ui/a;->c()J

    move-result-wide v2

    iget-object v0, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v0}, Lcom/viber/voip/ui/a;->d(Lcom/viber/voip/ui/a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 96
    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    .line 97
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    .line 98
    :goto_0
    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v0}, Lcom/viber/voip/ui/a;->e(Lcom/viber/voip/ui/a;)I

    move-result v0

    iget-object v2, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v2}, Lcom/viber/voip/ui/a;->f(Lcom/viber/voip/ui/a;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 100
    iget-object v0, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    iget-object v2, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v2}, Lcom/viber/voip/ui/a;->f(Lcom/viber/voip/ui/a;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/viber/voip/ui/a;->b(Lcom/viber/voip/ui/a;I)I

    .line 101
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "PORT_AVAILABLE_SCREEN_WIDTH"

    iget-object v3, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v3}, Lcom/viber/voip/ui/a;->e(Lcom/viber/voip/ui/a;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Available width in portrait: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v3}, Lcom/viber/voip/ui/a;->e(Lcom/viber/voip/ui/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", screen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/ui/a;->a(Lcom/viber/voip/ui/a;Ljava/lang/String;)V

    .line 111
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v0}, Lcom/viber/voip/ui/a;->h(Lcom/viber/voip/ui/a;)V

    .line 118
    :goto_2
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v0}, Lcom/viber/voip/ui/a;->g(Lcom/viber/voip/ui/a;)I

    move-result v0

    iget-object v2, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v2}, Lcom/viber/voip/ui/a;->f(Lcom/viber/voip/ui/a;)I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 106
    iget-object v0, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    iget-object v2, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v2}, Lcom/viber/voip/ui/a;->f(Lcom/viber/voip/ui/a;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/viber/voip/ui/a;->c(Lcom/viber/voip/ui/a;I)I

    .line 107
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "LAND_AVAILABLE_SCREEN_WIDTH"

    iget-object v3, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v3}, Lcom/viber/voip/ui/a;->g(Lcom/viber/voip/ui/a;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Available width in landscape: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v3}, Lcom/viber/voip/ui/a;->g(Lcom/viber/voip/ui/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", screen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/ui/a;->a(Lcom/viber/voip/ui/a;Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v0}, Lcom/viber/voip/ui/a;->j(Lcom/viber/voip/ui/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v1}, Lcom/viber/voip/ui/a;->i(Lcom/viber/voip/ui/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/ui/c;->a:Lcom/viber/voip/ui/a;

    invoke-static {v0}, Lcom/viber/voip/ui/a;->k(Lcom/viber/voip/ui/a;)V

    goto :goto_2
.end method
