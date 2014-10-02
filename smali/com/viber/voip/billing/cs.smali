.class public Lcom/viber/voip/billing/cs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field a:Lcom/viber/voip/billing/cw;

.field private b:Lcom/viber/voip/billing/bv;

.field private c:Landroid/os/Handler;

.field private d:J

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/billing/bu;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Runnable;

.field private g:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

.field private h:J

.field private i:Lcom/viber/jni/PhoneControllerDelegateAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    const-class v0, Lcom/viber/voip/billing/cs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/billing/cs;->j:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/viber/voip/billing/bv;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/billing/cs;->c:Landroid/os/Handler;

    .line 140
    new-instance v1, Lcom/viber/voip/billing/ct;

    invoke-direct {v1, p0}, Lcom/viber/voip/billing/ct;-><init>(Lcom/viber/voip/billing/cs;)V

    iput-object v1, p0, Lcom/viber/voip/billing/cs;->i:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    .line 39
    const-string/jumbo v1, "ctor"

    invoke-static {v1}, Lcom/viber/voip/billing/cs;->b(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/viber/voip/billing/cs;->d:J

    .line 41
    iput-object p1, p0, Lcom/viber/voip/billing/cs;->b:Lcom/viber/voip/billing/bv;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/viber/voip/billing/cs;->e:Ljava/util/ArrayList;

    .line 44
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/billing/cs;->i:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    invoke-virtual {v1, v2}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 45
    iget-object v1, p0, Lcom/viber/voip/billing/cs;->b:Lcom/viber/voip/billing/bv;

    invoke-virtual {v1}, Lcom/viber/voip/billing/bv;->g()[Lcom/viber/voip/billing/bu;

    move-result-object v1

    .line 46
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 47
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/viber/voip/billing/bu;->e(Z)V

    .line 48
    iget-object v4, p0, Lcom/viber/voip/billing/cs;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PENDING PURCHASE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/billing/cs;->b(Ljava/lang/String;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/billing/cs;->e()V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/cs;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/viber/voip/billing/cs;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/viber/voip/billing/cs;)Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/viber/voip/billing/cs;->g:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/billing/cs;Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;)Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/viber/voip/billing/cs;->g:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-static {p0}, Lcom/viber/voip/billing/cs;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b()J
    .locals 13

    .prologue
    const-wide/16 v5, 0x0

    .line 87
    const-wide v0, 0x7fffffffffffffffL

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 89
    new-instance v9, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/viber/voip/billing/cs;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    iget-object v2, p0, Lcom/viber/voip/billing/cs;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v1, v0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/bu;

    .line 91
    invoke-virtual {v0}, Lcom/viber/voip/billing/bu;->m()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-wide v3, v0, Lcom/viber/voip/billing/bu;->o:J

    iget-wide v11, v0, Lcom/viber/voip/billing/bu;->n:J

    add-long/2addr v3, v11

    .line 94
    sub-long/2addr v3, v7

    .line 95
    cmp-long v0, v3, v1

    if-gez v0, :cond_3

    move-wide v0, v3

    :goto_1
    move-wide v1, v0

    .line 98
    goto :goto_0

    .line 100
    :cond_0
    iput-object v9, p0, Lcom/viber/voip/billing/cs;->e:Ljava/util/ArrayList;

    .line 101
    cmp-long v0, v1, v5

    if-gez v0, :cond_1

    move-wide v1, v5

    .line 105
    :cond_1
    const-wide/16 v3, 0x4e20

    iget-wide v5, p0, Lcom/viber/voip/billing/cs;->d:J

    sub-long v5, v7, v5

    sub-long/2addr v3, v5

    .line 106
    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    move-wide v1, v3

    .line 110
    :cond_2
    return-wide v1

    :cond_3
    move-wide v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/viber/voip/billing/cs;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/viber/voip/billing/cs;->e()V

    return-void
.end method

.method private static final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    .line 115
    const-string/jumbo v0, "action()"

    invoke-static {v0}, Lcom/viber/voip/billing/cs;->b(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/viber/voip/billing/cs;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/bu;

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 118
    iget-wide v4, v0, Lcom/viber/voip/billing/bu;->o:J

    iget-wide v6, v0, Lcom/viber/voip/billing/bu;->n:J

    add-long/2addr v4, v6

    .line 119
    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retrying purchase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/billing/cs;->b(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/viber/voip/billing/cs;->b:Lcom/viber/voip/billing/bv;

    invoke-virtual {v1, v0}, Lcom/viber/voip/billing/bv;->a(Lcom/viber/voip/billing/bu;)V

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/billing/cs;->e()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/billing/cs;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/viber/voip/billing/cs;->f()V

    return-void
.end method

.method static synthetic d(Lcom/viber/voip/billing/cs;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/viber/voip/billing/cs;->c()V

    return-void
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lcom/viber/voip/billing/cs;->g:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    sget-object v2, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    if-ne v1, v2, :cond_0

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/viber/voip/billing/cs;->h:J

    sub-long/2addr v1, v3

    .line 132
    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 134
    :cond_0
    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/viber/voip/billing/cs;->f()V

    .line 161
    invoke-direct {p0}, Lcom/viber/voip/billing/cs;->b()J

    move-result-wide v0

    .line 162
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 163
    new-instance v2, Lcom/viber/voip/billing/cu;

    invoke-direct {v2, p0}, Lcom/viber/voip/billing/cu;-><init>(Lcom/viber/voip/billing/cs;)V

    iput-object v2, p0, Lcom/viber/voip/billing/cs;->f:Ljava/lang/Runnable;

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Scheduling next action in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/billing/cs;->b(Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/viber/voip/billing/cs;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcom/viber/voip/billing/cs;->f:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const-string/jumbo v0, "schedule(): nothing to do"

    invoke-static {v0}, Lcom/viber/voip/billing/cs;->b(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/viber/voip/billing/cs;->a:Lcom/viber/voip/billing/cw;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/viber/voip/billing/cs;->a:Lcom/viber/voip/billing/cw;

    invoke-interface {v0}, Lcom/viber/voip/billing/cw;->a()V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/viber/voip/billing/cs;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 181
    const-string/jumbo v0, "unscheduling action"

    invoke-static {v0}, Lcom/viber/voip/billing/cs;->b(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/viber/voip/billing/cs;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/billing/cs;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/billing/cs;->f:Ljava/lang/Runnable;

    .line 185
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bu;)V
    .locals 6
    .parameter

    .prologue
    const-wide/32 v4, 0x36ee80

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "schedulePurchaseRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/cs;->b(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/viber/voip/billing/cs;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/viber/voip/billing/cs;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/viber/voip/billing/bu;->o:J

    .line 68
    iget-wide v0, p1, Lcom/viber/voip/billing/bu;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 69
    const-wide/16 v0, 0x4e20

    iput-wide v0, p1, Lcom/viber/voip/billing/bu;->n:J

    .line 80
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/viber/voip/billing/cs;->e()V

    .line 81
    return-void

    .line 71
    :cond_2
    invoke-direct {p0}, Lcom/viber/voip/billing/cs;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-wide v0, p1, Lcom/viber/voip/billing/bu;->n:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 73
    iget-wide v0, p1, Lcom/viber/voip/billing/bu;->n:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/viber/voip/billing/bu;->n:J

    .line 74
    iget-wide v0, p1, Lcom/viber/voip/billing/bu;->n:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 75
    iput-wide v4, p1, Lcom/viber/voip/billing/bu;->n:J

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/billing/cw;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/viber/voip/billing/cs;->a:Lcom/viber/voip/billing/cw;

    .line 56
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/viber/voip/billing/cs;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/viber/voip/billing/bu;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/viber/voip/billing/cs;->e()V

    .line 84
    return-void
.end method
