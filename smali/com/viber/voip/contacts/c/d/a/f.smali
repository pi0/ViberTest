.class public Lcom/viber/voip/contacts/c/d/a/f;
.super Lcom/viber/voip/contacts/c/d/m;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/f/a/a/j;


# static fields
.field private static final j:Ljava/lang/String;

.field private static k:Lcom/viber/voip/contacts/c/d/a/f;


# instance fields
.field private l:Landroid/os/Handler;

.field private m:Lcom/viber/voip/contacts/c/f/a/a/a;

.field private n:Lcom/viber/voip/contacts/c/f/b/a/a;

.field private o:Lcom/viber/voip/contacts/c/d/a/a;

.field private p:Lcom/viber/voip/contacts/c/d/a/i;

.field private q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/c/d/e;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/lang/Runnable;

.field private final s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/viber/voip/contacts/c/d/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/d/a/f;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/c/d/m;-><init>(Lcom/viber/voip/ViberApplication;)V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->q:Ljava/util/Set;

    .line 176
    new-instance v0, Lcom/viber/voip/contacts/c/d/a/g;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/c/d/a/g;-><init>(Lcom/viber/voip/contacts/c/d/a/f;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->r:Ljava/lang/Runnable;

    .line 186
    new-instance v0, Lcom/viber/voip/contacts/c/d/a/h;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/c/d/a/h;-><init>(Lcom/viber/voip/contacts/c/d/a/f;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->s:Ljava/lang/Runnable;

    .line 49
    sget-object v0, Lcom/viber/voip/dk;->c:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->l:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/f;->c:Lcom/viber/voip/ViberApplication;

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/contacts/c/f/b/a/a;-><init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/contacts/c/f/b/q;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->n:Lcom/viber/voip/contacts/c/f/b/a/a;

    .line 51
    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/f;->c:Lcom/viber/voip/ViberApplication;

    invoke-direct {v0, v1, p0, p0}, Lcom/viber/voip/contacts/c/f/a/a/a;-><init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/contacts/c/f/a/a/j;Lcom/viber/voip/contacts/c/d/c;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->m:Lcom/viber/voip/contacts/c/f/a/a/a;

    .line 52
    new-instance v0, Lcom/viber/voip/contacts/c/d/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/f;->c:Lcom/viber/voip/ViberApplication;

    iget-object v2, p0, Lcom/viber/voip/contacts/c/d/a/f;->e:Lcom/viber/voip/contacts/c/d/aa;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/contacts/c/d/a/a;-><init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/contacts/c/d/aa;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->o:Lcom/viber/voip/contacts/c/d/a/a;

    .line 53
    new-instance v0, Lcom/viber/voip/contacts/c/d/a/i;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/f;->l:Landroid/os/Handler;

    iget-object v2, p0, Lcom/viber/voip/contacts/c/d/a/f;->c:Lcom/viber/voip/ViberApplication;

    invoke-direct {v0, p0, v1, v2}, Lcom/viber/voip/contacts/c/d/a/i;-><init>(Lcom/viber/voip/contacts/c/d/a/m;Landroid/os/Handler;Lcom/viber/voip/ViberApplication;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->p:Lcom/viber/voip/contacts/c/d/a/i;

    .line 55
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/d/a/f;->g()V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/d/a/f;)Lcom/viber/voip/contacts/c/d/a/i;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->p:Lcom/viber/voip/contacts/c/d/a/i;

    return-object v0
.end method

.method public static a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/d/b;
    .locals 2
    .parameter

    .prologue
    .line 59
    sget-object v0, Lcom/viber/voip/contacts/c/d/a/f;->k:Lcom/viber/voip/contacts/c/d/a/f;

    if-nez v0, :cond_1

    sget-object v0, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 60
    const-class v1, Lcom/viber/voip/contacts/c/d/a/f;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/viber/voip/contacts/c/d/a/f;->k:Lcom/viber/voip/contacts/c/d/a/f;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/viber/voip/contacts/c/d/a/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/c/d/a/f;-><init>(Lcom/viber/voip/ViberApplication;)V

    sput-object v0, Lcom/viber/voip/contacts/c/d/a/f;->k:Lcom/viber/voip/contacts/c/d/a/f;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    sget-object v0, Lcom/viber/voip/contacts/c/d/a/f;->k:Lcom/viber/voip/contacts/c/d/a/f;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/viber/voip/contacts/c/d/a/f;)Lcom/viber/voip/contacts/c/f/a/a/a;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->m:Lcom/viber/voip/contacts/c/f/a/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/contacts/c/d/a/f;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->s:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/contacts/c/d/a/f;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->l:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/viber/voip/contacts/c/d/m;->a()V

    .line 78
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->p:Lcom/viber/voip/contacts/c/d/a/i;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/d/a/i;->a()V

    .line 79
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->m:Lcom/viber/voip/contacts/c/f/a/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/a/a/a;->a()V

    .line 80
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->o:Lcom/viber/voip/contacts/c/d/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/c/d/a/a;->a(Ljava/util/Map;)V

    .line 156
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->c:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getParticipantManager()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/a/a;->a(Ljava/util/Set;)V

    .line 157
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->p:Lcom/viber/voip/contacts/c/d/a/i;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/d/a/i;->b()V

    .line 158
    return-void
.end method

.method public a(Ljava/util/Set;Ljava/util/Set;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->o:Lcom/viber/voip/contacts/c/d/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/contacts/c/d/a/a;->a(Ljava/util/Set;Ljava/util/Set;)V

    .line 145
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 146
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 147
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->c:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Ljava/util/Collection;)V

    .line 151
    return-void
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/f;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/f;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->m:Lcom/viber/voip/contacts/c/f/a/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Z)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/f;->r:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->m:Lcom/viber/voip/contacts/c/f/a/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/a;->b(Z)V

    .line 99
    return-void
.end method

.method public b(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->o:Lcom/viber/voip/contacts/c/d/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/d/a/a;->b()V

    .line 163
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->c:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getParticipantManager()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/a/a;->b(Ljava/util/Set;)V

    .line 164
    return-void
.end method

.method public c()Lcom/viber/voip/contacts/c/f/b/p;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->n:Lcom/viber/voip/contacts/c/f/b/a/a;

    return-object v0
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 135
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->n:Lcom/viber/voip/contacts/c/f/b/a/a;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->n:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->e()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->h:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/c/d/a/f;->a(Ljava/util/Set;)V

    .line 140
    return-void
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->n:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->e()V

    .line 72
    return-void
.end method

.method protected j()Lcom/viber/voip/contacts/c/d/a;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->o:Lcom/viber/voip/contacts/c/d/a/a;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->m:Lcom/viber/voip/contacts/c/f/a/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/a/a/a;->b()Z

    move-result v0

    return v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/f;->q:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/c/d/a/f;->a(Ljava/util/Set;)V

    .line 131
    return-void
.end method
