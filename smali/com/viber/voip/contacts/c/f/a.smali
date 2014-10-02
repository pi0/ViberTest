.class public Lcom/viber/voip/contacts/c/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/at;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/viber/voip/contacts/c/f/a;


# instance fields
.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/c/d/au;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/viber/voip/settings/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/viber/voip/contacts/c/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/f/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a;->c:Ljava/util/Set;

    .line 46
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a;->d:Lcom/viber/voip/settings/l;

    .line 47
    const-string/jumbo v0, "com.voip.viber.contacts.vibersync"

    invoke-virtual {p1, v0, v6}, Lcom/viber/voip/ViberApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "seq"

    invoke-interface {v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "seq"

    const-string/jumbo v3, "seq"

    const/16 v4, 0x64

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 51
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sync_las_seq"

    const-string/jumbo v3, "sync_las_seq"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 52
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sync_success_seq"

    const-string/jumbo v3, "sync_success_seq"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 53
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sync_state"

    const-string/jumbo v3, "sync_state"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 55
    :cond_0
    return-void
.end method

.method public static a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/a;
    .locals 1
    .parameter

    .prologue
    .line 37
    sget-object v0, Lcom/viber/voip/contacts/c/f/a;->b:Lcom/viber/voip/contacts/c/f/a;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/viber/voip/contacts/c/f/a;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/c/f/a;-><init>(Lcom/viber/voip/ViberApplication;)V

    sput-object v0, Lcom/viber/voip/contacts/c/f/a;->b:Lcom/viber/voip/contacts/c/f/a;

    .line 40
    :cond_0
    sget-object v0, Lcom/viber/voip/contacts/c/f/a;->b:Lcom/viber/voip/contacts/c/f/a;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 84
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/f/a;->d()I

    move-result v0

    .line 87
    if-nez v0, :cond_0

    if-eq p1, v1, :cond_5

    :cond_0
    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_2

    :cond_1
    if-eq p1, v2, :cond_5

    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    if-eq p1, v3, :cond_5

    :cond_4
    if-eq v0, v4, :cond_6

    if-ne p1, v4, :cond_6

    .line 94
    :cond_5
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/c/f/a;->e(I)V

    .line 95
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "sync_state"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_6
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(IZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/c/d/au;)V
    .locals 2
    .parameter

    .prologue
    .line 128
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a;->c:Ljava/util/Set;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/f/a;->d()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/contacts/c/d/au;->a(IZ)V

    .line 132
    return-void

    .line 130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 58
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "sync_las_seq"

    invoke-interface {v0, v1, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sync_success_seq"

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v1

    .line 61
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "seq"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "sync_success_seq"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 101
    return-void
.end method

.method public b(Lcom/viber/voip/contacts/c/d/au;)V
    .locals 2
    .parameter

    .prologue
    .line 136
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a;->c:Ljava/util/Set;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "sync_las_seq"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 105
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/f/a;->d()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized d()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sync_state"

    invoke-interface {v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "sync_state"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 79
    :cond_0
    monitor-exit p0

    return v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(I)V
    .locals 2
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "seq"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 109
    return-void
.end method

.method public e(I)V
    .locals 3
    .parameter

    .prologue
    .line 143
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a;->c:Ljava/util/Set;

    monitor-enter v1

    .line 144
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/a;->c:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/d/au;

    .line 149
    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Lcom/viber/voip/contacts/c/d/au;->a(IZ)V

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 151
    :cond_0
    return-void
.end method
