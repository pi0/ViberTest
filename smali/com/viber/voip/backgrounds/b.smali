.class Lcom/viber/voip/backgrounds/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/backgrounds/m;


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/a;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/viber/voip/backgrounds/b;->a:Lcom/viber/voip/backgrounds/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/backgrounds/o;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBackgroundPackageDeployed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/viber/voip/backgrounds/o;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", background count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/backgrounds/o;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->c(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b;->a:Lcom/viber/voip/backgrounds/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/backgrounds/a;->b(Lcom/viber/voip/backgrounds/o;)V

    .line 103
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b;->a:Lcom/viber/voip/backgrounds/a;

    invoke-static {v1}, Lcom/viber/voip/backgrounds/a;->a(Lcom/viber/voip/backgrounds/a;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 104
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/backgrounds/m;

    .line 105
    invoke-interface {v0, p1}, Lcom/viber/voip/backgrounds/m;->a(Lcom/viber/voip/backgrounds/o;)V

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/backgrounds/o;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 136
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b;->a:Lcom/viber/voip/backgrounds/a;

    invoke-static {v1}, Lcom/viber/voip/backgrounds/a;->a(Lcom/viber/voip/backgrounds/a;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 137
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/backgrounds/m;

    .line 138
    invoke-interface {v0, p1, p2}, Lcom/viber/voip/backgrounds/m;->a(Lcom/viber/voip/backgrounds/o;I)V

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/backgrounds/o;Lcom/viber/voip/backgrounds/q;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBackgroundPackageDeployed background: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/viber/voip/backgrounds/q;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->c(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    .line 125
    iget-object v1, p2, Lcom/viber/voip/backgrounds/q;->h:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->b(Landroid/net/Uri;)V

    .line 127
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b;->a:Lcom/viber/voip/backgrounds/a;

    invoke-static {v1}, Lcom/viber/voip/backgrounds/a;->a(Lcom/viber/voip/backgrounds/a;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 128
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/backgrounds/m;

    .line 129
    invoke-interface {v0, p1, p2}, Lcom/viber/voip/backgrounds/m;->a(Lcom/viber/voip/backgrounds/o;Lcom/viber/voip/backgrounds/q;)V

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/backgrounds/q;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBackgroundDeployed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/viber/voip/backgrounds/q;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->c(Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b;->a:Lcom/viber/voip/backgrounds/a;

    invoke-static {v1}, Lcom/viber/voip/backgrounds/a;->a(Lcom/viber/voip/backgrounds/a;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 116
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/backgrounds/m;

    .line 117
    invoke-interface {v0, p1}, Lcom/viber/voip/backgrounds/m;->a(Lcom/viber/voip/backgrounds/q;)V

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public b(Lcom/viber/voip/backgrounds/o;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDownloadError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/viber/voip/backgrounds/o;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->c(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b;->a:Lcom/viber/voip/backgrounds/a;

    invoke-static {v1}, Lcom/viber/voip/backgrounds/a;->a(Lcom/viber/voip/backgrounds/a;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 146
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/backgrounds/m;

    .line 147
    invoke-interface {v0, p1}, Lcom/viber/voip/backgrounds/m;->b(Lcom/viber/voip/backgrounds/o;)V

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method
