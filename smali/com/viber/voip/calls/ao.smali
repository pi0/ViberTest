.class public Lcom/viber/voip/calls/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/viber/voip/util/fe;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/calls/ao;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/calls/ao;->c:Ljava/util/Map;

    .line 35
    iput-object p1, p0, Lcom/viber/voip/calls/ao;->b:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Lcom/viber/voip/contacts/c/e/b;->a(Landroid/content/Context;)Lcom/viber/voip/contacts/c/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ao;->d:Lcom/viber/voip/util/fe;

    .line 37
    invoke-direct {p0}, Lcom/viber/voip/calls/ao;->b()V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/calls/ao;)Lcom/viber/voip/util/fe;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/voip/calls/ao;->d:Lcom/viber/voip/util/fe;

    return-object v0
.end method

.method private a(CI)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 58
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ao;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 61
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-char v3, v1, v0

    .line 62
    iget-object v4, p0, Lcom/viber/voip/calls/ao;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/calls/ao;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method private declared-synchronized b()V
    .locals 3

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/calls/ao;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 43
    const/16 v0, 0x30

    const v1, 0x7f0c0795

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/calls/ao;->a(CI)V

    .line 44
    const/16 v0, 0x31

    const v1, 0x7f0c0796

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/calls/ao;->a(CI)V

    .line 45
    const/16 v0, 0x32

    const v1, 0x7f0c0797

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/calls/ao;->a(CI)V

    .line 46
    const/16 v0, 0x33

    const v1, 0x7f0c0798

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/calls/ao;->a(CI)V

    .line 47
    const/16 v0, 0x34

    const v1, 0x7f0c0799

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/calls/ao;->a(CI)V

    .line 48
    const/16 v0, 0x35

    const v1, 0x7f0c079a

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/calls/ao;->a(CI)V

    .line 49
    const/16 v0, 0x36

    const v1, 0x7f0c079b

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/calls/ao;->a(CI)V

    .line 50
    const/16 v0, 0x37

    const v1, 0x7f0c079c

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/calls/ao;->a(CI)V

    .line 51
    const/16 v0, 0x38

    const v1, 0x7f0c079d

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/calls/ao;->a(CI)V

    .line 52
    const/16 v0, 0x39

    const v1, 0x7f0c079e

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/calls/ao;->a(CI)V

    .line 54
    iget-object v0, p0, Lcom/viber/voip/calls/ao;->c:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/viber/voip/calls/ao;->d:Lcom/viber/voip/util/fe;

    const/16 v1, 0x630

    sget-object v3, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    sget-object v4, Lcom/viber/voip/calls/ao;->a:[Ljava/lang/String;

    new-instance v8, Lcom/viber/voip/calls/ap;

    invoke-direct {v8, p0}, Lcom/viber/voip/calls/ap;-><init>(Lcom/viber/voip/calls/ao;)V

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 119
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 69
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 70
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-char v0, v2, v1

    .line 73
    iget-object v5, p0, Lcom/viber/voip/calls/ao;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 77
    :cond_0
    const/16 v0, 0x31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 80
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 82
    :goto_2
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "?"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public a()V
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "recent_calls_current_language"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "recent_calls_current_language"

    invoke-interface {v0, v2, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 90
    invoke-direct {p0}, Lcom/viber/voip/calls/ao;->b()V

    .line 91
    invoke-direct {p0}, Lcom/viber/voip/calls/ao;->c()V

    .line 93
    :cond_0
    return-void
.end method
