.class Lcom/viber/voip/messages/extras/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "initGPSandWPSLocationCaches"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/a/e;->c()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    const-string/jumbo v0, "caches are empty. init needed."

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    new-instance v1, Lcom/viber/voip/messages/extras/a/j;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/extras/a/j;-><init>(Lcom/viber/voip/messages/extras/a/i;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)Z

    .line 185
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    new-instance v1, Lcom/viber/voip/messages/extras/a/k;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/extras/a/k;-><init>(Lcom/viber/voip/messages/extras/a/i;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/a/e;->b(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)Z

    .line 261
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/a/e;->c()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    const-string/jumbo v0, "caches are init. check location."

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    new-instance v1, Lcom/viber/voip/messages/extras/a/l;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/extras/a/l;-><init>(Lcom/viber/voip/messages/extras/a/i;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/a/e;->b(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)Z

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/a/e;->c()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 216
    const-string/jumbo v0, "cachedWPSLocation == null && cachedGPSLocation != null"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    new-instance v1, Lcom/viber/voip/messages/extras/a/n;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/extras/a/n;-><init>(Lcom/viber/voip/messages/extras/a/i;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/a/e;->b(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)Z

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/a/e;->c()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_3

    .line 245
    const-string/jumbo v0, "cachedWPSLocation != null && cachedGPSLocation == null. need init both."

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    new-instance v1, Lcom/viber/voip/messages/extras/a/q;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/extras/a/q;-><init>(Lcom/viber/voip/messages/extras/a/i;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/a/e;->b(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)Z

    .line 252
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/i;->a:Lcom/viber/voip/messages/extras/a/e;

    new-instance v1, Lcom/viber/voip/messages/extras/a/r;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/extras/a/r;-><init>(Lcom/viber/voip/messages/extras/a/i;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;)Z

    goto :goto_0

    .line 259
    :cond_3
    const-string/jumbo v0, "cache has been initialized."

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
