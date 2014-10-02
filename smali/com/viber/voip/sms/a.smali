.class public Lcom/viber/voip/sms/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Landroid/net/Uri;

.field private static final g:[Ljava/lang/String;

.field private static final m:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Landroid/util/SparseBooleanArray;

.field private e:Landroid/database/ContentObserver;

.field private h:I

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/sms/i;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/viber/voip/sms/j;

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-string/jumbo v0, "content://mms-sms/threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sms/a;->f:Landroid/net/Uri;

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/sms/a;->g:[Ljava/lang/String;

    .line 295
    const-class v0, Lcom/viber/voip/sms/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sms/a;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/sms/a;->d:Landroid/util/SparseBooleanArray;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/sms/a;->h:I

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sms/a;->i:Ljava/util/Set;

    .line 53
    new-instance v0, Lcom/viber/voip/sms/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/sms/b;-><init>(Lcom/viber/voip/sms/a;)V

    iput-object v0, p0, Lcom/viber/voip/sms/a;->k:Ljava/util/HashMap;

    .line 288
    new-instance v0, Lcom/viber/voip/sms/h;

    invoke-direct {v0, p0}, Lcom/viber/voip/sms/h;-><init>(Lcom/viber/voip/sms/a;)V

    iput-object v0, p0, Lcom/viber/voip/sms/a;->l:Ljava/lang/Runnable;

    .line 61
    iput-object p1, p0, Lcom/viber/voip/sms/a;->b:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/viber/voip/sms/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sms/a;->a:Landroid/content/ContentResolver;

    .line 63
    iput-object p2, p0, Lcom/viber/voip/sms/a;->c:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/viber/voip/sms/j;

    invoke-direct {v0}, Lcom/viber/voip/sms/j;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/sms/a;->j:Lcom/viber/voip/sms/j;

    .line 65
    invoke-direct {p0}, Lcom/viber/voip/sms/a;->d()V

    .line 66
    new-instance v0, Lcom/viber/voip/sms/c;

    iget-object v1, p0, Lcom/viber/voip/sms/a;->c:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/sms/c;-><init>(Lcom/viber/voip/sms/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/viber/voip/sms/a;->e:Landroid/database/ContentObserver;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/sms/a;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/sms/a;->a:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/sms/a;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sms/i;

    .line 102
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/sms/i;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/sms/a;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/sms/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/sms/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/viber/voip/sms/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/sms/a;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/sms/a;->d:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/sms/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/sms/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/sms/a;)Lcom/viber/voip/sms/j;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/sms/a;->j:Lcom/viber/voip/sms/j;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 167
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 168
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 169
    iget-object v2, p0, Lcom/viber/voip/sms/a;->k:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "nexus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    const v0, 0x7f0203ee

    iput v0, p0, Lcom/viber/voip/sms/a;->h:I

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/sms/a;->k:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/sms/a;->h:I

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/viber/voip/sms/a;->j:Lcom/viber/voip/sms/j;

    invoke-virtual {v0}, Lcom/viber/voip/sms/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Lcom/viber/voip/sms/s;->f()V

    .line 284
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/sms/s;->a(Z)V

    .line 286
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/sms/a;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/viber/voip/sms/a;->e()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 136
    sget-object v0, Lcom/viber/voip/sms/a;->f:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 137
    const-string/jumbo v1, "recipient"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 139
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 141
    iget-object v0, p0, Lcom/viber/voip/sms/a;->a:Landroid/content/ContentResolver;

    sget-object v2, Lcom/viber/voip/sms/a;->g:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_1

    .line 145
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 151
    invoke-static {v2}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 156
    :goto_0
    return v0

    .line 148
    :cond_0
    :try_start_1
    const-string/jumbo v0, "getOrCreateThreadId returned no rows!"

    invoke-direct {p0, v0}, Lcom/viber/voip/sms/a;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    invoke-static {v2}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getOrCreateThreadId failed with uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sms/a;->c(Ljava/lang/String;)V

    .line 156
    const/4 v0, -0x1

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/viber/voip/sms/a;->a:Landroid/content/ContentResolver;

    const-string/jumbo v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/viber/voip/sms/a;->e:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 114
    return-void
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 121
    new-instance v0, Lcom/viber/voip/sms/d;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/sms/d;-><init>(Lcom/viber/voip/sms/a;I)V

    .line 132
    iget-object v1, p0, Lcom/viber/voip/sms/a;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    return-void
.end method

.method public a(Lcom/viber/voip/sms/i;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/viber/voip/sms/a;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 221
    const-string/jumbo v0, "insertSilentSms"

    invoke-direct {p0, v0}, Lcom/viber/voip/sms/a;->c(Ljava/lang/String;)V

    .line 222
    new-instance v0, Lcom/viber/voip/sms/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/sms/e;-><init>(Lcom/viber/voip/sms/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/viber/voip/sms/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/viber/voip/sms/a;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/viber/voip/sms/a;->e:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 118
    return-void
.end method

.method public b(Lcom/viber/voip/sms/i;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/viber/voip/sms/a;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sms/a;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 247
    invoke-static {}, Lcom/viber/voip/sms/s;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sms/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/sms/a;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    new-instance v0, Lcom/viber/voip/sms/f;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/sms/f;-><init>(Lcom/viber/voip/sms/a;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/viber/voip/sms/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    iget-object v0, p0, Lcom/viber/voip/sms/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/sms/a;->l:Ljava/lang/Runnable;

    const-wide/32 v2, 0x2932e00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Lcom/viber/voip/sms/g;

    invoke-direct {v0, p0}, Lcom/viber/voip/sms/g;-><init>(Lcom/viber/voip/sms/a;)V

    .line 278
    iget-object v1, p0, Lcom/viber/voip/sms/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method
