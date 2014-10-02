.class public Lcom/viber/voip/f/j;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/f/i;
.implements Lcom/viber/voip/settings/m;
.implements Lcom/viber/voip/util/fu;


# instance fields
.field private a:Lcom/viber/voip/f/a;

.field private b:Lcom/viber/voip/f/f;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Lcom/viber/voip/a/t;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/f/j;->h:Z

    .line 45
    new-instance v0, Lcom/viber/voip/a/t;

    invoke-direct {v0}, Lcom/viber/voip/a/t;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/f/j;->i:Lcom/viber/voip/a/t;

    .line 48
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Lcom/viber/voip/f/j;->a(Lcom/viber/voip/settings/l;)V

    .line 50
    invoke-direct {p0, v0}, Lcom/viber/voip/f/j;->b(Lcom/viber/voip/settings/l;)V

    .line 51
    invoke-direct {p0, v0}, Lcom/viber/voip/f/j;->c(Lcom/viber/voip/settings/l;)V

    .line 52
    invoke-direct {p0, v0}, Lcom/viber/voip/f/j;->d(Lcom/viber/voip/settings/l;)V

    .line 53
    invoke-interface {v0, p0}, Lcom/viber/voip/settings/l;->a(Lcom/viber/voip/settings/m;)V

    .line 55
    iget v0, p0, Lcom/viber/voip/f/j;->e:I

    if-lez v0, :cond_0

    .line 56
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/viber/voip/util/ft;->a(Landroid/content/Context;)Lcom/viber/voip/util/ft;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/viber/voip/util/ft;->a(Lcom/viber/voip/util/fu;)V

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;Landroid/os/Handler;)V

    .line 60
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)J
    .locals 2
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    return-wide v0
.end method

.method private a(Lcom/viber/voip/settings/l;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    const-string/jumbo v0, "PREF_IS_VIBER_UPGRADED"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/f/j;->c:Z

    .line 66
    return-void
.end method

.method private b(Lcom/viber/voip/settings/l;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    const-string/jumbo v0, "PREF_SHOW_COMPOSE_GROUP_PROMO"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/f/j;->d:Z

    .line 72
    return-void
.end method

.method private c(Lcom/viber/voip/settings/l;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    const-string/jumbo v0, "PREF_SHOW_DESKTOP_PROMO_COUNT"

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/f/j;->e:I

    .line 78
    return-void
.end method

.method private d(Lcom/viber/voip/settings/l;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    const-string/jumbo v0, "PREF_SHOW_DESKTOP_PROMO_LAST_DISMISS"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/f/j;->f:J

    .line 84
    return-void
.end method

.method private f()Z
    .locals 4

    .prologue
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/viber/voip/f/j;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    .line 188
    const-wide/16 v0, 0x0

    .line 190
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-le v4, v5, :cond_0

    .line 191
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/viber/voip/f/j;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 198
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    const-wide/32 v3, 0x240c8400

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 193
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 194
    new-instance v4, Ljava/io/File;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 198
    goto :goto_1

    .line 196
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 159
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/f/j;->i:Lcom/viber/voip/a/t;

    invoke-virtual {v1}, Lcom/viber/voip/a/t;->d()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 160
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_SHOW_DESKTOP_PROMO_COUNT"

    const/4 v2, 0x0

    iput v2, p0, Lcom/viber/voip/f/j;->e:I

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 161
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/viber/voip/f/h;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    new-instance v0, Lcom/viber/voip/f/f;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/viber/voip/f/f;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/viber/voip/f/h;Lcom/viber/voip/f/i;)V

    iput-object v0, p0, Lcom/viber/voip/f/j;->b:Lcom/viber/voip/f/f;

    .line 88
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/viber/voip/f/j;->h:Z

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/f/j;->d()Z

    move-result v0

    .line 128
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/viber/voip/f/j;->b:Lcom/viber/voip/f/f;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/viber/voip/f/j;->b:Lcom/viber/voip/f/f;

    invoke-virtual {v1}, Lcom/viber/voip/f/f;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 131
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/f/j;->i:Lcom/viber/voip/a/t;

    invoke-virtual {v1}, Lcom/viber/voip/a/t;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 132
    iget-object v0, p0, Lcom/viber/voip/f/j;->b:Lcom/viber/voip/f/f;

    invoke-virtual {v0}, Lcom/viber/voip/f/f;->a()V

    goto :goto_0

    .line 133
    :cond_2
    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/viber/voip/f/j;->b:Lcom/viber/voip/f/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/f/j;->b:Lcom/viber/voip/f/f;

    invoke-virtual {v0}, Lcom/viber/voip/f/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/viber/voip/f/j;->b:Lcom/viber/voip/f/f;

    invoke-virtual {v0}, Lcom/viber/voip/f/f;->b()V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/viber/voip/f/e;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/viber/voip/f/j;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "PREF_SHOW_COMPOSE_GROUP_PROMO"

    iput-boolean v0, p0, Lcom/viber/voip/f/j;->d:Z

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 109
    new-instance v0, Lcom/viber/voip/f/a;

    invoke-direct {v0, p1, p2}, Lcom/viber/voip/f/a;-><init>(Landroid/app/Activity;Lcom/viber/voip/f/e;)V

    iput-object v0, p0, Lcom/viber/voip/f/j;->a:Lcom/viber/voip/f/a;

    .line 110
    iget-object v0, p0, Lcom/viber/voip/f/j;->a:Lcom/viber/voip/f/a;

    invoke-virtual {v0}, Lcom/viber/voip/f/a;->a()V

    .line 111
    const/4 v0, 0x1

    .line 113
    :cond_0
    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 165
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/f/j;->i:Lcom/viber/voip/a/t;

    invoke-virtual {v1}, Lcom/viber/voip/a/t;->e()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 166
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_SHOW_DESKTOP_PROMO_COUNT"

    iget v2, p0, Lcom/viber/voip/f/j;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/viber/voip/f/j;->e:I

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 167
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_SHOW_DESKTOP_PROMO_LAST_DISMISS"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/viber/voip/f/j;->f:J

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;

    .line 168
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 141
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/viber/voip/f/j;->b:Lcom/viber/voip/f/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/f/j;->b:Lcom/viber/voip/f/f;

    invoke-virtual {v0}, Lcom/viber/voip/f/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/viber/voip/f/j;->b:Lcom/viber/voip/f/f;

    invoke-virtual {v0}, Lcom/viber/voip/f/f;->a()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/f/j;->b:Lcom/viber/voip/f/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/f/j;->b:Lcom/viber/voip/f/f;

    invoke-virtual {v0}, Lcom/viber/voip/f/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/viber/voip/f/j;->b:Lcom/viber/voip/f/f;

    invoke-virtual {v0}, Lcom/viber/voip/f/f;->b()V

    goto :goto_0
.end method

.method public backgroundDataChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 223
    return-void
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/viber/voip/f/j;->h:Z

    .line 246
    iget-boolean v0, p0, Lcom/viber/voip/f/j;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/f/j;->b:Lcom/viber/voip/f/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/f/j;->b:Lcom/viber/voip/f/f;

    invoke-virtual {v0}, Lcom/viber/voip/f/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/viber/voip/f/j;->b:Lcom/viber/voip/f/f;

    invoke-virtual {v0}, Lcom/viber/voip/f/f;->b()V

    .line 249
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/viber/voip/f/j;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/f/j;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connectivityChanged(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 209
    if-ne v0, p1, :cond_0

    .line 210
    iput-boolean v0, p0, Lcom/viber/voip/f/j;->g:Z

    .line 211
    invoke-virtual {p0, v0}, Lcom/viber/voip/f/j;->a(Z)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/f/j;->g:Z

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/viber/voip/f/j;->e:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/viber/voip/f/j;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/viber/voip/f/j;->g:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/viber/voip/f/j;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/f/j;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/f/j;->c:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/viber/voip/f/j;->a:Lcom/viber/voip/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/f/j;->a:Lcom/viber/voip/f/a;

    invoke-virtual {v0}, Lcom/viber/voip/f/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/viber/voip/f/j;->a:Lcom/viber/voip/f/a;

    invoke-virtual {v0}, Lcom/viber/voip/f/a;->b()V

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSecondaryRegistered(JIII)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_SHOW_DESKTOP_PROMO_COUNT"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 228
    invoke-virtual {p0, v2}, Lcom/viber/voip/f/j;->a(Z)V

    .line 229
    return v2
.end method

.method public onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 172
    const-string/jumbo v0, "PREF_IS_VIBER_UPGRADED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-direct {p0, p1}, Lcom/viber/voip/f/j;->a(Lcom/viber/voip/settings/l;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const-string/jumbo v0, "PREF_SHOW_COMPOSE_GROUP_PROMO"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    invoke-direct {p0, p1}, Lcom/viber/voip/f/j;->b(Lcom/viber/voip/settings/l;)V

    goto :goto_0

    .line 176
    :cond_2
    const-string/jumbo v0, "PREF_SHOW_DESKTOP_PROMO_COUNT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    invoke-direct {p0, p1}, Lcom/viber/voip/f/j;->c(Lcom/viber/voip/settings/l;)V

    .line 178
    iget v0, p0, Lcom/viber/voip/f/j;->e:I

    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ft;->a(Landroid/content/Context;)Lcom/viber/voip/util/ft;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/util/ft;->b(Lcom/viber/voip/util/fu;)V

    goto :goto_0

    .line 181
    :cond_3
    const-string/jumbo v0, "PREF_SHOW_DESKTOP_PROMO_LAST_DISMISS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0, p1}, Lcom/viber/voip/f/j;->d(Lcom/viber/voip/settings/l;)V

    goto :goto_0
.end method

.method public onTextReceived(JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 235
    const-string/jumbo v0, "viber"

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/viber/voip/util/fq;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_SHOW_DESKTOP_PROMO_COUNT"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 238
    invoke-virtual {p0, v2}, Lcom/viber/voip/f/j;->a(Z)V

    .line 240
    :cond_0
    return v2
.end method

.method public wifiConnectivityChanged()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method
