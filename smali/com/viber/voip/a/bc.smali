.class public Lcom/viber/voip/a/bc;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/ITracker;
.implements Lcom/viber/voip/c/f;
.implements Lcom/viber/voip/contacts/c/d/au;
.implements Lcom/viber/voip/settings/m;


# static fields
.field private static b:Lcom/viber/voip/a/bc;


# instance fields
.field private a:I

.field private c:Z

.field private d:Z

.field private e:Lcom/viber/voip/ViberApplication;

.field private f:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private g:Lcom/viber/dexshared/GoogleAnalyticsHelper;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/a/x;",
            ">;"
        }
    .end annotation
.end field

.field private j:J

.field private k:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/a/bc;->a:I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/a/bc;->c:Z

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/a/bc;->j:J

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/a/bc;->h:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/a/bc;->i:Ljava/util/List;

    .line 73
    invoke-static {}, Lcom/viber/voip/c/g;->a()Lcom/viber/voip/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/c/b;->a(Lcom/viber/voip/c/f;)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/a/bc;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/viber/voip/a/bc;->j:J

    return-wide p1
.end method

.method static synthetic a(Lcom/viber/voip/a/bc;)Lcom/viber/dexshared/GoogleAnalyticsHelper;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/a/bc;->g:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    return-object v0
.end method

.method public static a()Lcom/viber/voip/a/bc;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/viber/voip/a/bc;->b:Lcom/viber/voip/a/bc;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/viber/voip/a/bc;

    invoke-direct {v0}, Lcom/viber/voip/a/bc;-><init>()V

    sput-object v0, Lcom/viber/voip/a/bc;->b:Lcom/viber/voip/a/bc;

    .line 67
    :cond_0
    sget-object v0, Lcom/viber/voip/a/bc;->b:Lcom/viber/voip/a/bc;

    return-object v0
.end method

.method private a(Lcom/viber/dexshared/GoogleAnalyticsHelper;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->d:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-interface {p1, p2, p3, p4}, Lcom/viber/dexshared/GoogleAnalyticsHelper;->setCustomMetric(IJ)V

    .line 315
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/a/bc;Lcom/viber/dexshared/GoogleAnalyticsHelper;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;IJ)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/a/bc;)J
    .locals 2
    .parameter

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/viber/voip/a/bc;->j:J

    return-wide v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/viber/voip/a/bc;->g:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->d:Z

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/a/bc;->a(ILjava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/a/bc;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/viber/voip/a/bc;->g()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 492
    const/4 v0, 0x3

    const-string/jumbo v1, "AnalyticsTracker"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->c:Z

    if-nez v0, :cond_2

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->c:Z

    if-nez v0, :cond_1

    .line 90
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/a/bc;->e:Lcom/viber/voip/ViberApplication;

    .line 91
    iget-object v0, p0, Lcom/viber/voip/a/bc;->e:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/a/bc;->f:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 92
    iget-object v0, p0, Lcom/viber/voip/a/bc;->f:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setTrackerDelegate(Lcom/google/analytics/tracking/android/ITracker;)V

    .line 93
    invoke-direct {p0}, Lcom/viber/voip/a/bc;->f()V

    .line 95
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->K()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/a/bc;->d:Z

    .line 98
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/viber/voip/a/bc;->e:Lcom/viber/voip/ViberApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 100
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->d()Lcom/viber/voip/contacts/c/d/at;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/d/at;->a(Lcom/viber/voip/contacts/c/d/au;)V

    .line 101
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/settings/l;->a(Lcom/viber/voip/settings/m;)V

    .line 103
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/a/bc;->c:Z

    .line 105
    invoke-direct {p0}, Lcom/viber/voip/a/bc;->e()V

    .line 107
    :cond_1
    monitor-exit p0

    .line 109
    :cond_2
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendUnhandledReports unhandledPageViews.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/a/bc;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " unhandledEvents.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/a/bc;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/a/bc;->c(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/viber/voip/a/bc;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-virtual {p0, v0}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/a/bc;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    iget-object v0, p0, Lcom/viber/voip/a/bc;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/a/x;

    .line 118
    invoke-virtual {p0, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_1

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/a/bc;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    .line 124
    iget-object v0, p0, Lcom/viber/voip/a/bc;->e:Lcom/viber/voip/ViberApplication;

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->L()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->M()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 128
    const-string/jumbo v0, "UA-18303830-25"

    iput-object v0, p0, Lcom/viber/voip/a/bc;->k:Ljava/lang/String;

    .line 137
    if-eqz v1, :cond_1

    const-string/jumbo v0, "UA-18303830-13"

    :goto_0
    iput-object v0, p0, Lcom/viber/voip/a/bc;->k:Ljava/lang/String;

    .line 139
    if-eqz v1, :cond_2

    sget-wide v3, Lcom/viber/voip/a/bb;->c:D

    .line 143
    :goto_1
    invoke-static {}, Lcom/viber/voip/ViberEnv;->newGoogleAnalyticsHelper()Lcom/viber/dexshared/GoogleAnalyticsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/a/bc;->g:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    .line 144
    iget-object v0, p0, Lcom/viber/voip/a/bc;->g:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    iget-object v1, p0, Lcom/viber/voip/a/bc;->e:Lcom/viber/voip/ViberApplication;

    iget-object v2, p0, Lcom/viber/voip/a/bc;->k:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-interface/range {v0 .. v6}, Lcom/viber/dexshared/GoogleAnalyticsHelper;->initViberTracker(Landroid/content/Context;Ljava/lang/String;DZI)V

    .line 146
    :cond_0
    return-void

    .line 137
    :cond_1
    const-string/jumbo v0, "UA-18303830-25"

    goto :goto_0

    .line 139
    :cond_2
    sget-wide v3, Lcom/viber/voip/a/bb;->a:D

    goto :goto_1
.end method

.method private g()V
    .locals 1

    .prologue
    .line 362
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->d()Lcom/viber/voip/contacts/c/d/at;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/d/at;->b(Lcom/viber/voip/contacts/c/d/au;)V

    .line 363
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/viber/voip/a/bc;->g:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->d:Z

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/a/bc;->a(ILjava/lang/String;)V

    .line 279
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/viber/voip/a/bc;->g:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    invoke-virtual {p0, v0, p1, p2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;ILjava/lang/String;)V

    .line 283
    return-void
.end method

.method public a(IZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSyncStateChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " register:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/viber/voip/a/bc;->j:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/a/bc;->c(Ljava/lang/String;)V

    .line 394
    packed-switch p1, :pswitch_data_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 398
    :pswitch_0
    iget-wide v0, p0, Lcom/viber/voip/a/bc;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 399
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/a/bc;->j:J

    goto :goto_0

    .line 403
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/viber/voip/a/bc;->b(I)V

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/viber/voip/a/bc;->g:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Landroid/app/Activity;)V

    .line 154
    return-void
.end method

.method public a(Lcom/google/analytics/tracking/android/Transaction;)V
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/viber/voip/a/bc;->g:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Lcom/google/analytics/tracking/android/Transaction;)V

    .line 238
    return-void
.end method

.method public a(Lcom/viber/dexshared/GoogleAnalyticsHelper;)V
    .locals 1
    .parameter

    .prologue
    .line 230
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->d:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {p1}, Lcom/viber/dexshared/GoogleAnalyticsHelper;->sendViewWithoutParams()V

    .line 234
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/dexshared/GoogleAnalyticsHelper;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->d:Z

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x2

    invoke-interface {p1, v0, p3}, Lcom/viber/dexshared/GoogleAnalyticsHelper;->setCustomDimension(ILjava/lang/String;)V

    .line 289
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    return-void
.end method

.method public a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Lcom/google/analytics/tracking/android/Transaction;)V
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 241
    invoke-virtual/range {p2 .. p2}, Lcom/google/analytics/tracking/android/Transaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/google/analytics/tracking/android/Transaction;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/Transaction$Item;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Transaction$Item;->getPriceInMicros()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/analytics/tracking/android/Transaction;->getAffiliation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/analytics/tracking/android/Transaction;->getTotalTaxInMicros()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/google/analytics/tracking/android/Transaction;->getShippingCostInMicros()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/google/analytics/tracking/android/Transaction;->getCurrencyCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/google/analytics/tracking/android/Transaction;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/Transaction$Item;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Transaction$Item;->getSKU()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/google/analytics/tracking/android/Transaction;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/Transaction$Item;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Transaction$Item;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/google/analytics/tracking/android/Transaction;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v12, 0x0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/Transaction$Item;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Transaction$Item;->getQuantity()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Lcom/google/analytics/tracking/android/Transaction;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v14, 0x0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/Transaction$Item;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Transaction$Item;->getCategory()Ljava/lang/String;

    move-result-object v14

    move-object v0, p0

    invoke-virtual/range {v0 .. v14}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 244
    return-void
.end method

.method public a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->c:Z

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/viber/voip/a/bc;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->d:Z

    if-eqz v0, :cond_1

    .line 193
    invoke-interface {p1, p2}, Lcom/viber/dexshared/GoogleAnalyticsHelper;->trackView(Ljava/lang/String;)V

    .line 195
    :cond_1
    return-void
.end method

.method public a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/viber/voip/a/bc;->d:Z

    if-eqz v2, :cond_0

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Analytics Transaction:  transactionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " priceMicros="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " affiliation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " totalTaxInMicros="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " shippingCostInMicros="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8, p9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " currencyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " productSKU="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " productName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " productQuantity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p13

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " productCategory="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p15

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/viber/voip/a/bc;->c(Ljava/lang/String;)V

    .line 262
    invoke-interface/range {p1 .. p15}, Lcom/viber/dexshared/GoogleAnalyticsHelper;->sendTransaction(Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 265
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->d:Z

    if-eqz v0, :cond_0

    .line 346
    invoke-interface/range {p1 .. p6}, Lcom/viber/dexshared/GoogleAnalyticsHelper;->trackTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->d:Z

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {p1, p2, p3, p4}, Lcom/viber/dexshared/GoogleAnalyticsHelper;->sendSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->d:Z

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/viber/dexshared/GoogleAnalyticsHelper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 215
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 355
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->d:Z

    if-eqz v0, :cond_0

    .line 357
    invoke-interface {p1, p2}, Lcom/viber/dexshared/GoogleAnalyticsHelper;->setStarSession(Z)V

    .line 359
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/a/c;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/viber/voip/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/a/x;)V
    .locals 4
    .parameter

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->c:Z

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/viber/voip/a/bc;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/a/x;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/a/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/a/x;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/viber/voip/a/x;->d()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/viber/voip/a/bc;->g:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/a/bc;->g:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-wide/from16 v14, p12

    move-object/from16 v16, p14

    invoke-virtual/range {v1 .. v16}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 252
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    iget-object v1, p0, Lcom/viber/voip/a/bc;->g:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    return-void
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/viber/voip/a/bc;->g:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->d:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/u;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/b/u;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/a/bd;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/a/bd;-><init>(Lcom/viber/voip/a/bc;I)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/b/u;->b(Lcom/viber/voip/contacts/c/f/b/ab;)V

    .line 309
    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/viber/voip/a/bc;->g:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/a/bc;->b(Lcom/viber/dexshared/GoogleAnalyticsHelper;Landroid/app/Activity;)V

    .line 166
    return-void
.end method

.method public b(Lcom/viber/dexshared/GoogleAnalyticsHelper;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 174
    :cond_0
    return-void
.end method

.method public b(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 333
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->d:Z

    if-eqz v0, :cond_0

    .line 335
    invoke-interface {p1, p2}, Lcom/viber/dexshared/GoogleAnalyticsHelper;->sendView(Ljava/lang/String;)V

    .line 337
    :cond_0
    return-void
.end method

.method public b(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->d:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/viber/dexshared/GoogleAnalyticsHelper;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/viber/voip/a/bc;->d:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/viber/voip/a/bc;->k:Ljava/lang/String;

    return-object v0
.end method

.method public handleGetTrackingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/viber/voip/a/bc;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleSendEvent(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 482
    invoke-virtual/range {p0 .. p5}, Lcom/viber/voip/a/bc;->b(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 483
    return-void
.end method

.method public handleSendView(Lcom/viber/dexshared/GoogleAnalyticsHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;)V

    .line 489
    return-void
.end method

.method public handleSetCustomMetric(Lcom/viber/dexshared/GoogleAnalyticsHelper;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;IJ)V

    .line 448
    return-void
.end method

.method public handleStarSession(Lcom/viber/dexshared/GoogleAnalyticsHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 476
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Z)V

    .line 477
    return-void
.end method

.method public handleTrackActivityStart(Lcom/viber/dexshared/GoogleAnalyticsHelper;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 411
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Landroid/app/Activity;)V

    .line 412
    return-void
.end method

.method public handleTrackActivityStop(Lcom/viber/dexshared/GoogleAnalyticsHelper;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 417
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/a/bc;->b(Lcom/viber/dexshared/GoogleAnalyticsHelper;Landroid/app/Activity;)V

    .line 418
    return-void
.end method

.method public handleTrackCustomDimension(Lcom/viber/dexshared/GoogleAnalyticsHelper;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 441
    invoke-virtual {p0, p1, p2, p3}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;ILjava/lang/String;)V

    .line 442
    return-void
.end method

.method public handleTrackEvent(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    invoke-virtual/range {p0 .. p5}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 430
    return-void
.end method

.method public handleTrackPageView(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public handleTrackSendView(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 464
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/a/bc;->b(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public handleTrackSocial(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 458
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public handleTrackTiming(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    invoke-virtual/range {p0 .. p6}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public handleTrackTransaction(Lcom/viber/dexshared/GoogleAnalyticsHelper;Lcom/google/analytics/tracking/android/Transaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 435
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/dexshared/GoogleAnalyticsHelper;Lcom/google/analytics/tracking/android/Transaction;)V

    .line 436
    return-void
.end method

.method public onDexLoaded()V
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "onDexLoaded"

    invoke-direct {p0, v0}, Lcom/viber/voip/a/bc;->c(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/viber/voip/a/bc;->d()V

    .line 80
    return-void
.end method

.method public onServiceStateChanged(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 380
    iget-object v0, p0, Lcom/viber/voip/a/bc;->e:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Lcom/viber/voip/util/ft;->a(Landroid/content/Context;)Lcom/viber/voip/util/ft;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Lcom/viber/voip/util/ft;->a()I

    move-result v0

    .line 382
    iget v1, p0, Lcom/viber/voip/a/bc;->a:I

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_1

    .line 383
    const-string/jumbo v0, "3G"

    invoke-direct {p0, v0}, Lcom/viber/voip/a/bc;->b(Ljava/lang/String;)V

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/a/bc;->a:I

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget v1, p0, Lcom/viber/voip/a/bc;->a:I

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_0

    .line 386
    const-string/jumbo v0, "Wireless"

    invoke-direct {p0, v0}, Lcom/viber/voip/a/bc;->b(Ljava/lang/String;)V

    .line 387
    iput v2, p0, Lcom/viber/voip/a/bc;->a:I

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-static {}, Lcom/viber/voip/settings/j;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->K()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/a/bc;->d:Z

    .line 372
    :cond_0
    invoke-static {}, Lcom/viber/voip/settings/j;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/viber/voip/settings/j;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/a/bc;->f()V

    .line 376
    :cond_2
    return-void
.end method
