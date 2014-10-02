.class public Lcom/viber/voip/contacts/b/b/d;
.super Lcom/viber/voip/contacts/b/b/a/a;
.source "SourceFile"


# static fields
.field public static final a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;


# instance fields
.field protected b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/viber/voip/contacts/b/a/e;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/a/e;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/b/b/d;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/viber/voip/contacts/b/b/a/a;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/c/f/b/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/contacts/b/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/viber/voip/contacts/b/b/a/i;

    invoke-direct {v1}, Lcom/viber/voip/contacts/b/b/a/i;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v0}, Lcom/viber/voip/contacts/b/b/a/i;->a(Ljava/util/Set;)V

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/d;->b:Ljava/util/Set;

    .line 78
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/d;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/f/b/c;

    .line 81
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/viber/voip/contacts/b/b/d;->u:Z

    .line 82
    invoke-virtual {v1}, Lcom/viber/voip/contacts/b/b/a/i;->b()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/viber/voip/contacts/b/b/k;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/c;->b()Lcom/viber/voip/contacts/c/f/b/d;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/viber/voip/contacts/b/b/k;-><init>(Lcom/viber/voip/contacts/c/f/b/d;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b/a/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/e;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/b/b/a/a;-><init>(Lcom/viber/voip/contacts/b/b/a/e;)V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/d;->b:Ljava/util/Set;

    .line 35
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/e;

    .line 36
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->i()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/viber/voip/contacts/b/b/d;->a(J)Lcom/viber/voip/contacts/b/b/a/i;

    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    new-instance v1, Lcom/viber/voip/contacts/b/b/a/i;

    invoke-direct {v1, v0}, Lcom/viber/voip/contacts/b/b/a/i;-><init>(Lcom/viber/voip/contacts/b/b/a/e;)V

    .line 39
    invoke-virtual {v1, p0}, Lcom/viber/voip/contacts/b/b/a/i;->a(Lcom/viber/voip/contacts/b/b/a/a;)V

    .line 40
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v3}, Lcom/viber/voip/contacts/b/b/a/i;->a(Ljava/util/Set;)V

    .line 41
    iget-object v3, p0, Lcom/viber/voip/contacts/b/b/d;->b:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_1
    const/4 v3, 0x0

    .line 47
    const-string/jumbo v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 48
    new-instance v3, Lcom/viber/voip/contacts/b/b/k;

    invoke-direct {v3, v0}, Lcom/viber/voip/contacts/b/b/k;-><init>(Lcom/viber/voip/contacts/b/b/a/e;)V

    .line 49
    invoke-virtual {v3}, Lcom/viber/voip/contacts/b/b/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iput-boolean v2, p0, Lcom/viber/voip/contacts/b/b/d;->r:Z

    :cond_2
    move-object v0, v3

    .line 59
    :goto_1
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/b/b/a/l;->a(Lcom/viber/voip/contacts/b/b/a/i;)V

    .line 61
    invoke-virtual {v0, p0}, Lcom/viber/voip/contacts/b/b/a/l;->a(Lcom/viber/voip/contacts/b/b/a/a;)V

    .line 62
    invoke-virtual {v1}, Lcom/viber/voip/contacts/b/b/a/i;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_3
    const-string/jumbo v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 54
    new-instance v3, Lcom/viber/voip/contacts/b/b/j;

    invoke-direct {v3, v0}, Lcom/viber/voip/contacts/b/b/j;-><init>(Lcom/viber/voip/contacts/b/b/a/e;)V

    move-object v0, v3

    goto :goto_1

    .line 55
    :cond_4
    const-string/jumbo v5, "vnd.android.cursor.item/name"

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 56
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/viber/voip/contacts/b/b/d;->v:Z

    :cond_5
    move-object v0, v3

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 65
    :cond_7
    return-void
.end method


# virtual methods
.method public a(J)Lcom/viber/voip/contacts/b/b/a/i;
    .locals 4
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/d;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/i;

    .line 116
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/i;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 120
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/Set;)Lcom/viber/voip/contacts/b/b/d;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b/a/e;",
            ">;)",
            "Lcom/viber/voip/contacts/b/b/d;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/e;

    .line 89
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/viber/voip/contacts/b/b/d;->id:J

    .line 90
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/viber/voip/contacts/b/b/d;->l:J

    .line 91
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/b/b/d;->h(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/b/b/d;->m(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->j()Z

    move-result v1

    iput-boolean v1, p0, Lcom/viber/voip/contacts/b/b/d;->p:Z

    .line 94
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/contacts/b/b/d;->s:Ljava/lang/String;

    .line 95
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/contacts/b/b/d;->B:Ljava/lang/String;

    .line 96
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/d;->C:Ljava/lang/String;

    .line 97
    iput-boolean v3, p0, Lcom/viber/voip/contacts/b/b/d;->v:Z

    .line 98
    iput-boolean v3, p0, Lcom/viber/voip/contacts/b/b/d;->u:Z

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/d;->b:Ljava/util/Set;

    .line 102
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/e;

    .line 103
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->i()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/viber/voip/contacts/b/b/d;->a(J)Lcom/viber/voip/contacts/b/b/a/i;

    move-result-object v2

    .line 104
    if-nez v2, :cond_0

    .line 105
    new-instance v2, Lcom/viber/voip/contacts/b/b/a/i;

    invoke-direct {v2, v0}, Lcom/viber/voip/contacts/b/b/a/i;-><init>(Lcom/viber/voip/contacts/b/b/a/e;)V

    .line 106
    invoke-virtual {v2, p0}, Lcom/viber/voip/contacts/b/b/a/i;->a(Lcom/viber/voip/contacts/b/b/a/a;)V

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v0}, Lcom/viber/voip/contacts/b/b/a/i;->a(Ljava/util/Set;)V

    .line 108
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/d;->b:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_1
    return-object p0
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/viber/voip/contacts/b/b/a/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/d;->b:Ljava/util/Set;

    .line 125
    return-void
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b/a/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/d;->b:Ljava/util/Set;

    return-object v0
.end method

.method public h()Lcom/viber/voip/contacts/b/b/a/i;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/d;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/d;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/d;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/i;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()I
    .locals 5

    .prologue
    .line 136
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/d;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can\'t calculate hash cause accounts not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/d;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/i;

    .line 142
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/i;->b()Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_2

    .line 143
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can\'t calculate hash cause contacts data not initialized at accounts"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_2
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/i;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    .line 146
    instance-of v4, v0, Lcom/viber/voip/contacts/b/b/k;

    if-eqz v4, :cond_3

    .line 147
    check-cast v0, Lcom/viber/voip/contacts/b/b/k;

    .line 148
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/d;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 153
    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 156
    :cond_5
    return v1
.end method

.method public j()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/d;->b:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 161
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 162
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/d;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/i;

    .line 163
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/i;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    .line 164
    instance-of v4, v0, Lcom/viber/voip/contacts/b/b/k;

    if-eqz v4, :cond_1

    .line 165
    check-cast v0, Lcom/viber/voip/contacts/b/b/k;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t get all numbers while accounts not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_3
    return-object v1
.end method

.method public k()Lcom/viber/voip/messages/orm/entity/EntityUpdater;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/viber/voip/messages/orm/entity/EntityUpdater",
            "<+",
            "Lcom/viber/voip/messages/orm/entity/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Lcom/viber/voip/contacts/b/b/a/b;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "display_name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "contact_lookup_key"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "starred"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "has_name"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "phone_label"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "native_photo_id"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "viber_out"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/contacts/b/b/a/b;-><init>(Lcom/viber/voip/contacts/b/b/a/a;[Ljava/lang/String;)V

    return-object v0
.end method
