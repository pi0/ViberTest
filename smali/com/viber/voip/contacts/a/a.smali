.class public Lcom/viber/voip/contacts/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Character;

.field public static final b:Ljava/lang/Character;

.field public static final c:Ljava/lang/Character;

.field public static final d:Ljava/lang/Character;

.field public static final e:[Ljava/lang/Character;


# instance fields
.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/CharSequence;

.field private h:[Ljava/lang/Character;

.field private i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/16 v0, 0x4ed6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/a/a;->a:Ljava/lang/Character;

    .line 16
    const/16 v0, 0x4e00

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/a/a;->b:Ljava/lang/Character;

    .line 17
    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/a/a;->c:Ljava/lang/Character;

    .line 18
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/a/a;->d:Ljava/lang/Character;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Character;

    const/4 v1, 0x0

    sget-object v2, Lcom/viber/voip/contacts/a/a;->d:Ljava/lang/Character;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/viber/voip/contacts/a/a;->c:Ljava/lang/Character;

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/contacts/a/a;->e:[Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/a/a;->f:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/a/a;->g:Ljava/lang/CharSequence;

    .line 94
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 85
    if-nez p0, :cond_1

    .line 86
    const-string/jumbo p0, ""

    .line 90
    :cond_0
    :goto_0
    return-object p0

    .line 87
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/viber/voip/contacts/a/a;->c:Ljava/lang/Character;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private declared-synchronized d()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 55
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/viber/voip/contacts/a/a;->f:Ljava/util/Set;

    sget-object v2, Lcom/viber/voip/contacts/a/a;->d:Ljava/lang/Character;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 57
    iget-object v1, p0, Lcom/viber/voip/contacts/a/a;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sget-object v2, Lcom/viber/voip/contacts/a/a;->e:[Ljava/lang/Character;

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v4, v1, [Ljava/lang/Character;

    .line 58
    iget-object v1, p0, Lcom/viber/voip/contacts/a/a;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sget-object v2, Lcom/viber/voip/contacts/a/a;->e:[Ljava/lang/Character;

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v5, v1, [Ljava/lang/String;

    .line 60
    sget-object v6, Lcom/viber/voip/contacts/a/a;->e:[Ljava/lang/Character;

    array-length v7, v6

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_0

    aget-object v2, v6, v1

    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    aput-object v2, v4, v0

    .line 63
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 64
    add-int/lit8 v2, v0, 0x1

    .line 60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/contacts/a/a;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    sget-object v6, Lcom/viber/voip/contacts/a/a;->b:Ljava/lang/Character;

    invoke-virtual {v0, v6}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 70
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 73
    :cond_1
    aput-object v0, v4, v1

    .line 74
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 75
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 76
    if-eq v6, v0, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v5, v1

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 78
    goto :goto_1

    .line 76
    :cond_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 79
    :cond_3
    iput-object v4, p0, Lcom/viber/voip/contacts/a/a;->h:[Ljava/lang/Character;

    .line 80
    iput-object v5, p0, Lcom/viber/voip/contacts/a/a;->i:[Ljava/lang/String;

    .line 81
    iput-object v3, p0, Lcom/viber/voip/contacts/a/a;->g:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/viber/voip/contacts/a/a;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public declared-synchronized a(Ljava/util/Collection;Ljava/util/Locale;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/viber/voip/contacts/a/b;

    invoke-direct {v1, p2}, Lcom/viber/voip/contacts/a/b;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/a/a;->f:Ljava/util/Set;

    .line 28
    iget-object v0, p0, Lcom/viber/voip/contacts/a/a;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 29
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Character;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/a/a;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 38
    :goto_0
    monitor-exit p0

    return v0

    .line 36
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/contacts/a/a;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/a;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    const/4 v0, 0x1

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()[Ljava/lang/Character;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/viber/voip/contacts/a/a;->h:[Ljava/lang/Character;

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/contacts/a/a;->i:[Ljava/lang/String;

    return-object v0
.end method
