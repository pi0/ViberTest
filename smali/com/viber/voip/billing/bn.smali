.class public Lcom/viber/voip/billing/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/regex/Pattern;

.field private static d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/viber/voip/billing/bt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "viber.([a-zA-Z_]+\\.[0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/billing/bn;->a:Ljava/util/regex/Pattern;

    .line 120
    const-class v0, Lcom/viber/voip/billing/bn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/billing/bn;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/viber/voip/billing/bt;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/viber/voip/billing/bn;->c:Lcom/viber/voip/billing/bt;

    .line 24
    iput-object p2, p0, Lcom/viber/voip/billing/bn;->b:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/viber/voip/billing/bn;
    .locals 3
    .parameter

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid merchant product id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 32
    invoke-static {p0}, Lcom/viber/voip/billing/bn;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 33
    :cond_1
    invoke-static {p0}, Lcom/viber/voip/billing/bt;->b(Ljava/lang/String;)Lcom/viber/voip/billing/bt;

    move-result-object v1

    .line 34
    new-instance v0, Lcom/viber/voip/billing/bn;

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/billing/bn;-><init>(Lcom/viber/voip/billing/bt;Ljava/lang/String;)V

    .line 42
    :goto_0
    return-object v0

    .line 36
    :cond_2
    sget-object v0, Lcom/viber/voip/billing/bn;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/bt;->a(Ljava/lang/String;)Lcom/viber/voip/billing/bt;

    move-result-object v1

    .line 39
    new-instance v0, Lcom/viber/voip/billing/bn;

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/billing/bn;-><init>(Lcom/viber/voip/billing/bt;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_3
    invoke-static {p0}, Lcom/viber/voip/billing/bt;->a(Ljava/lang/String;)Lcom/viber/voip/billing/bt;

    move-result-object v1

    .line 42
    new-instance v0, Lcom/viber/voip/billing/bn;

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/billing/bn;-><init>(Lcom/viber/voip/billing/bt;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/viber/voip/billing/bn;
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-static {p0}, Lcom/viber/voip/billing/bn;->d(Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lcom/viber/voip/billing/bt;->b(Ljava/lang/String;)Lcom/viber/voip/billing/bt;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/viber/voip/billing/bn;

    invoke-direct {v1, v0, p0}, Lcom/viber/voip/billing/bn;-><init>(Lcom/viber/voip/billing/bt;Ljava/lang/String;)V

    return-object v1
.end method

.method private static c()Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lcom/viber/voip/billing/bn;->d:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/viber/voip/billing/bn;->d:Ljava/util/HashSet;

    .line 91
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_VIBER_OUT_PRODUCT_IDS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loaded VO products: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/billing/bn;->e(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 95
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VO product: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/viber/voip/billing/bn;->e(Ljava/lang/String;)V

    .line 97
    sget-object v4, Lcom/viber/voip/billing/bn;->d:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    sget-object v0, Lcom/viber/voip/billing/bn;->d:Ljava/util/HashSet;

    return-object v0
.end method

.method private static declared-synchronized c(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 79
    const-class v1, Lcom/viber/voip/billing/bn;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/viber/voip/billing/bn;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static d()V
    .locals 4

    .prologue
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-static {}, Lcom/viber/voip/billing/bn;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 107
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "PREF_VIBER_OUT_PRODUCT_IDS"

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Saved VO products: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/bn;->e(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private static declared-synchronized d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 82
    const-class v1, Lcom/viber/voip/billing/bn;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/viber/voip/billing/bn;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NEW VO product: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/bn;->e(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/viber/voip/billing/bn;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static {}, Lcom/viber/voip/billing/bn;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit v1

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    sget-object v0, Lcom/viber/voip/billing/bn;->e:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/billing/bt;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/viber/voip/billing/bn;->c:Lcom/viber/voip/billing/bt;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "inapp"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 55
    instance-of v0, p1, Lcom/viber/voip/billing/bn;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/bn;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/viber/voip/billing/bn;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/billing/bn;->b:Ljava/lang/String;

    return-object v0
.end method
