.class Lcom/viber/voip/messages/ui/media/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/q;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/q;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v1

    monitor-enter v1

    .line 248
    :try_start_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/q;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->h(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/a/m;->e()Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 250
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/q;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/q;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/extras/map/k;->b()Lcom/viber/voip/messages/extras/map/b;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 252
    const-string/jumbo v2, "extra_location_lat"

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/q;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/map/k;->b()Lcom/viber/voip/messages/extras/map/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/map/b;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const-string/jumbo v2, "extra_location_lon"

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/q;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/map/k;->b()Lcom/viber/voip/messages/extras/map/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/map/b;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const-string/jumbo v2, "extra_location_text"

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/q;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/map/k;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/q;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->setResult(ILandroid/content/Intent;)V

    .line 256
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/q;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->finish()V

    .line 258
    :cond_0
    monitor-exit v1

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
