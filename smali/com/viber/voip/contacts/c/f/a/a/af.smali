.class public Lcom/viber/voip/contacts/c/f/a/a/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:J

.field final synthetic d:Lcom/viber/voip/contacts/c/f/a/a/ab;


# direct methods
.method public constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/ab;Lcom/viber/voip/messages/orm/manager/EntityManager;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/af;->d:Lcom/viber/voip/contacts/c/f/a/a/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getCount()I

    move-result v0

    const/16 v3, 0x320

    if-ge v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/af;->a:Z

    .line 179
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/af;->b:Ljava/util/Set;

    .line 182
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move v3, v2

    move-wide v4, v6

    .line 183
    :goto_1
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 184
    invoke-virtual {p2, v3}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/e;

    .line 186
    if-eqz v0, :cond_1

    .line 187
    cmp-long v9, v4, v6

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->e()J

    move-result-wide v9

    cmp-long v4, v4, v9

    if-eqz v4, :cond_0

    .line 188
    iget-object v4, p0, Lcom/viber/voip/contacts/c/f/a/a/af;->b:Ljava/util/Set;

    new-instance v5, Lcom/viber/voip/contacts/b/b/d;

    invoke-direct {v5, v8}, Lcom/viber/voip/contacts/b/b/d;-><init>(Ljava/util/Set;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 192
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->e()J

    move-result-wide v4

    .line 193
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_1

    .line 196
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/af;->a:Z

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/af;->b:Ljava/util/Set;

    new-instance v9, Lcom/viber/voip/contacts/b/b/d;

    invoke-direct {v9, v8}, Lcom/viber/voip/contacts/b/b/d;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 183
    :cond_1
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 178
    goto :goto_0

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/af;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/af;->b:Ljava/util/Set;

    new-instance v9, Lcom/viber/voip/contacts/b/b/d;

    invoke-direct {v9}, Lcom/viber/voip/contacts/b/b/d;-><init>()V

    invoke-virtual {v9, v8}, Lcom/viber/voip/contacts/b/b/d;->a(Ljava/util/Set;)Lcom/viber/voip/contacts/b/b/d;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    const-wide/16 v9, 0x1

    add-long/2addr v4, v9

    .line 208
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v9, "preff_analytics_rows_more_500_shown"

    invoke-interface {v0, v9, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v9, "preff_analytics_rows_more_500_shown"

    invoke-interface {v0, v9, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    goto :goto_2

    .line 223
    :cond_4
    iput-wide v4, p0, Lcom/viber/voip/contacts/c/f/a/a/af;->c:J

    .line 229
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/manager/EntityManager;->closeCursor()Z

    .line 230
    return-void
.end method
