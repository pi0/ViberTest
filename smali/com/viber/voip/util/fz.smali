.class public Lcom/viber/voip/util/fz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lcom/viber/voip/util/fz;


# instance fields
.field private b:Lcom/viber/voip/settings/l;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/util/gf;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/viber/voip/settings/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/viber/voip/util/fz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/fz;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/fz;->d:Ljava/util/Set;

    .line 40
    new-instance v0, Lcom/viber/voip/util/ga;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/ga;-><init>(Lcom/viber/voip/util/fz;)V

    iput-object v0, p0, Lcom/viber/voip/util/fz;->e:Lcom/viber/voip/settings/m;

    .line 61
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    .line 62
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    iget-object v1, p0, Lcom/viber/voip/util/fz;->e:Lcom/viber/voip/settings/m;

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Lcom/viber/voip/settings/m;)V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/fz;)Lcom/viber/voip/settings/l;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    return-object v0
.end method

.method public static a()Lcom/viber/voip/util/fz;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/viber/voip/util/fz;->c:Lcom/viber/voip/util/fz;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/viber/voip/util/fz;

    invoke-direct {v0}, Lcom/viber/voip/util/fz;-><init>()V

    sput-object v0, Lcom/viber/voip/util/fz;->c:Lcom/viber/voip/util/fz;

    .line 69
    :cond_0
    sget-object v0, Lcom/viber/voip/util/fz;->c:Lcom/viber/voip/util/fz;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/util/fz;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/viber/voip/util/fz;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-static {p0}, Lcom/viber/voip/util/fz;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 49
    iget-object v0, p0, Lcom/viber/voip/util/fz;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/gf;

    .line 50
    const-string/jumbo v1, "badges_count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/viber/voip/util/fz;->g()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/viber/voip/util/gf;->a(II)V

    goto :goto_0

    .line 52
    :cond_1
    const-string/jumbo v1, "recents_count"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/viber/voip/util/fz;->d()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/viber/voip/util/gf;->a(II)V

    goto :goto_0

    .line 54
    :cond_2
    const-string/jumbo v1, "show_public_groups_badge"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/viber/voip/util/fz;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-interface {v0, v5, v1}, Lcom/viber/voip/util/gf;->a(II)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    .line 58
    :cond_4
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "last_tab"

    invoke-interface {v0, v1, p3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    .line 82
    if-eq v0, p1, :cond_0

    if-lt v0, p2, :cond_1

    :cond_0
    :goto_0
    return p3

    :cond_1
    move p3, v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "last_tab"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 74
    return-void
.end method

.method public a(ILjava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p1, p2}, Lcom/viber/voip/util/gg;->a(ILjava/util/Set;)V

    .line 96
    return-void
.end method

.method public a(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 189
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/util/gd;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/viber/voip/util/gd;-><init>(Lcom/viber/voip/util/fz;ZJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method

.method public a(Lcom/viber/voip/util/gf;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/viber/voip/util/fz;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "show_public_groups_badge"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 126
    return-void
.end method

.method public a([J)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x3

    .line 111
    iget-object v2, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v3, "badges_count"

    aget-wide v4, p1, v1

    aget-wide v6, p1, v0

    add-long/2addr v4, v6

    long-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 112
    aget-wide v2, p1, v8

    invoke-virtual {p0}, Lcom/viber/voip/util/fz;->h()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    aget-wide v2, p1, v8

    invoke-virtual {p0}, Lcom/viber/voip/util/fz;->h()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    aget-wide v2, p1, v9

    long-to-int v2, v2

    invoke-virtual {p0}, Lcom/viber/voip/util/fz;->f()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 114
    :cond_0
    aget-wide v2, p1, v8

    invoke-virtual {p0}, Lcom/viber/voip/util/fz;->h()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/util/fz;->a(Z)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "public_groups_badges_count"

    aget-wide v2, p1, v9

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 117
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "public_groups_last_unread_message_time"

    aget-wide v2, p1, v8

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;

    .line 118
    return-void

    :cond_2
    move v0, v1

    .line 114
    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "last_tab"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 78
    return-void
.end method

.method public b(Lcom/viber/voip/util/gf;)V
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/viber/voip/util/fz;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public c()I
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "call_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "recents_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "show_public_groups_badge"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "public_groups_badges_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 4

    .prologue
    const/16 v0, 0x64

    .line 133
    iget-object v1, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "badges_count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v1

    .line 134
    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public h()J
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "public_groups_last_unread_message_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public i()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "badges_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 147
    return-void
.end method

.method public j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "badges_count"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 151
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "recents_count"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 152
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "public_groups_last_unread_message_time"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 153
    iget-object v0, p0, Lcom/viber/voip/util/fz;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "show_public_groups_badge"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 154
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/util/gb;

    invoke-direct {v1, p0}, Lcom/viber/voip/util/gb;-><init>(Lcom/viber/voip/util/fz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method
