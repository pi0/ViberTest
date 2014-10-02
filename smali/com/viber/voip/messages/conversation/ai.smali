.class public abstract Lcom/viber/voip/messages/conversation/ai;
.super Lcom/viber/provider/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/viber/voip/messages/conversation/an;",
        ">",
        "Lcom/viber/provider/b;"
    }
.end annotation


# instance fields
.field private h:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field protected i:J

.field protected j:Lcom/viber/voip/messages/i;

.field private k:Lcom/viber/voip/messages/controller/df;

.field private l:Lcom/viber/voip/messages/controller/dh;

.field private m:Lcom/viber/voip/messages/controller/db;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    sget-object v2, Lcom/viber/provider/messages/b/d;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/provider/b;-><init>(ILandroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;I)V

    .line 29
    new-instance v0, Lcom/viber/voip/messages/conversation/aj;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/conversation/aj;-><init>(Lcom/viber/voip/messages/conversation/ai;I)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->h:Landroid/support/v4/util/LruCache;

    .line 36
    new-instance v0, Lcom/viber/voip/messages/conversation/ak;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/ak;-><init>(Lcom/viber/voip/messages/conversation/ai;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->k:Lcom/viber/voip/messages/controller/df;

    .line 69
    new-instance v0, Lcom/viber/voip/messages/conversation/al;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/al;-><init>(Lcom/viber/voip/messages/conversation/ai;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->l:Lcom/viber/voip/messages/controller/dh;

    .line 94
    new-instance v0, Lcom/viber/voip/messages/conversation/am;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/am;-><init>(Lcom/viber/voip/messages/conversation/ai;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->m:Lcom/viber/voip/messages/controller/db;

    .line 129
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/ai;->j:Lcom/viber/voip/messages/i;

    .line 131
    sget-object v0, Lcom/viber/voip/messages/conversation/an;->e:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ai;->a([Ljava/lang/String;)V

    .line 132
    const-string/jumbo v0, "messages.conversation_id=? AND deleted=0"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ai;->a(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    const/4 v1, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/viber/provider/b;-><init>(ILandroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;I)V

    .line 29
    new-instance v0, Lcom/viber/voip/messages/conversation/aj;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/conversation/aj;-><init>(Lcom/viber/voip/messages/conversation/ai;I)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->h:Landroid/support/v4/util/LruCache;

    .line 36
    new-instance v0, Lcom/viber/voip/messages/conversation/ak;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/ak;-><init>(Lcom/viber/voip/messages/conversation/ai;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->k:Lcom/viber/voip/messages/controller/df;

    .line 69
    new-instance v0, Lcom/viber/voip/messages/conversation/al;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/al;-><init>(Lcom/viber/voip/messages/conversation/ai;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->l:Lcom/viber/voip/messages/controller/dh;

    .line 94
    new-instance v0, Lcom/viber/voip/messages/conversation/am;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/am;-><init>(Lcom/viber/voip/messages/conversation/ai;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->m:Lcom/viber/voip/messages/controller/db;

    .line 137
    iput-object p5, p0, Lcom/viber/voip/messages/conversation/ai;->j:Lcom/viber/voip/messages/i;

    .line 139
    invoke-virtual {p0, p3}, Lcom/viber/voip/messages/conversation/ai;->a([Ljava/lang/String;)V

    .line 140
    const-string/jumbo v0, "messages.conversation_id=? AND deleted=0"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ai;->a(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    const/16 v1, 0xa

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/provider/b;-><init>(ILandroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;I)V

    .line 29
    new-instance v0, Lcom/viber/voip/messages/conversation/aj;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/conversation/aj;-><init>(Lcom/viber/voip/messages/conversation/ai;I)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->h:Landroid/support/v4/util/LruCache;

    .line 36
    new-instance v0, Lcom/viber/voip/messages/conversation/ak;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/ak;-><init>(Lcom/viber/voip/messages/conversation/ai;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->k:Lcom/viber/voip/messages/controller/df;

    .line 69
    new-instance v0, Lcom/viber/voip/messages/conversation/al;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/al;-><init>(Lcom/viber/voip/messages/conversation/ai;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->l:Lcom/viber/voip/messages/controller/dh;

    .line 94
    new-instance v0, Lcom/viber/voip/messages/conversation/am;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/am;-><init>(Lcom/viber/voip/messages/conversation/ai;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->m:Lcom/viber/voip/messages/controller/db;

    .line 146
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/ai;->j:Lcom/viber/voip/messages/i;

    .line 148
    invoke-virtual {p0, p3}, Lcom/viber/voip/messages/conversation/ai;->a([Ljava/lang/String;)V

    .line 149
    const-string/jumbo v0, "messages.conversation_id=? AND deleted=0"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ai;->a(Ljava/lang/String;)V

    .line 150
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/conversation/an;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ")TT;"
        }
    .end annotation
.end method

.method public synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/ai;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 4
    .parameter

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/viber/voip/messages/conversation/ai;->i:J

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/viber/voip/messages/conversation/ai;->i:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ai;->b([Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method protected a(JJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    return-void
.end method

.method protected abstract b(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/an;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public e(I)Lcom/viber/voip/messages/conversation/an;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->h:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/an;

    .line 188
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/ai;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->e:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ai;->b(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ai;->h:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    return-object v0
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/viber/provider/b;->k()V

    .line 179
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->h:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 180
    return-void
.end method

.method public u()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->j:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ai;->k:Lcom/viber/voip/messages/controller/df;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->b(Lcom/viber/voip/messages/controller/de;)V

    .line 157
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->j:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ai;->l:Lcom/viber/voip/messages/controller/dh;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->b(Lcom/viber/voip/messages/controller/dg;)V

    .line 158
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->j:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ai;->m:Lcom/viber/voip/messages/controller/db;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->b(Lcom/viber/voip/messages/controller/da;)V

    .line 159
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->j:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ai;->k:Lcom/viber/voip/messages/controller/df;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->a(Lcom/viber/voip/messages/controller/de;)V

    .line 163
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->j:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ai;->l:Lcom/viber/voip/messages/controller/dh;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->a(Lcom/viber/voip/messages/controller/dg;)V

    .line 164
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ai;->j:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ai;->m:Lcom/viber/voip/messages/controller/db;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->a(Lcom/viber/voip/messages/controller/da;)V

    .line 165
    return-void
.end method

.method public w()J
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ai;->i:J

    return-wide v0
.end method
