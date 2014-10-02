.class public Lcom/viber/voip/messages/conversation/as;
.super Lcom/viber/voip/messages/conversation/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/conversation/ai",
        "<",
        "Lcom/viber/voip/messages/conversation/an;",
        ">;"
    }
.end annotation


# instance fields
.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/viber/voip/messages/conversation/av;

.field private l:Lcom/viber/voip/messages/controller/db;

.field private m:Lcom/viber/voip/messages/controller/df;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/voip/messages/conversation/av;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    const/4 v2, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/ai;-><init>(Landroid/content/Context;ILandroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/as;->h:Ljava/util/Set;

    .line 34
    new-instance v0, Lcom/viber/voip/messages/conversation/at;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/at;-><init>(Lcom/viber/voip/messages/conversation/as;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/as;->l:Lcom/viber/voip/messages/controller/db;

    .line 63
    new-instance v0, Lcom/viber/voip/messages/conversation/au;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/au;-><init>(Lcom/viber/voip/messages/conversation/as;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/as;->m:Lcom/viber/voip/messages/controller/df;

    .line 99
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/as;->k:Lcom/viber/voip/messages/conversation/av;

    .line 101
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/as;->m()V

    .line 102
    const-string/jumbo v0, "date ASC, token ASC"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/as;->b(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/as;)Lcom/viber/voip/messages/conversation/av;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/as;->k:Lcom/viber/voip/messages/conversation/av;

    return-object v0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 112
    const-string/jumbo v0, "messages.conversation_id=? AND deleted=0 AND messages.extra_mime <>? AND messages.extra_mime <>? AND (messages.read >0 OR messages._id IN (%s))"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/as;->h:Ljava/util/Set;

    invoke-static {v3}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/as;->a(Ljava/lang/String;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/conversation/an;
    .locals 1
    .parameter

    .prologue
    .line 152
    new-instance v0, Lcom/viber/voip/messages/conversation/an;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/conversation/an;-><init>(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    return-object v0
.end method

.method public a(J)V
    .locals 4
    .parameter

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/viber/voip/messages/conversation/as;->i:J

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/viber/voip/messages/conversation/as;->i:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "notif"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "call"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/as;->b([Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method protected b(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/an;
    .locals 1
    .parameter

    .prologue
    .line 147
    new-instance v0, Lcom/viber/voip/messages/conversation/an;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/conversation/an;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected k()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->k()V

    move v1, v0

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/as;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/as;->h:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/as;->a_(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const/4 v1, 0x1

    .line 134
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    if-eqz v1, :cond_2

    .line 141
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/as;->m()V

    .line 143
    :cond_2
    return-void
.end method

.method public u()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->u()V

    .line 125
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/as;->j:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/as;->l:Lcom/viber/voip/messages/controller/db;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->b(Lcom/viber/voip/messages/controller/da;)V

    .line 126
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/as;->j:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/as;->m:Lcom/viber/voip/messages/controller/df;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->b(Lcom/viber/voip/messages/controller/de;)V

    .line 127
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ai;->v()V

    .line 118
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/as;->j:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/as;->l:Lcom/viber/voip/messages/controller/db;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->a(Lcom/viber/voip/messages/controller/da;)V

    .line 119
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/as;->j:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/as;->m:Lcom/viber/voip/messages/controller/df;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->a(Lcom/viber/voip/messages/controller/de;)V

    .line 120
    return-void
.end method
