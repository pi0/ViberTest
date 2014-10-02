.class public Lcom/viber/voip/util/ft;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z

.field private static volatile g:Lcom/viber/voip/util/ft;


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private final e:Landroid/net/ConnectivityManager;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/util/fu;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/content/Context;

.field private i:Lcom/viber/voip/util/fv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/viber/voip/util/ft;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/util/ft;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/viber/voip/util/ft;->b:I

    .line 31
    iput v0, p0, Lcom/viber/voip/util/ft;->c:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/ft;->f:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lcom/viber/voip/util/ft;->h:Landroid/content/Context;

    .line 61
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/viber/voip/util/ft;->e:Landroid/net/ConnectivityManager;

    .line 62
    iget-object v0, p0, Lcom/viber/voip/util/ft;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/util/ft;->d:Z

    .line 63
    invoke-direct {p0}, Lcom/viber/voip/util/ft;->c()V

    .line 65
    new-instance v0, Lcom/viber/voip/util/Reachability$1;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/Reachability$1;-><init>(Lcom/viber/voip/util/ft;)V

    .line 70
    new-instance v1, Lcom/viber/voip/util/fv;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/viber/voip/util/fv;-><init>(Lcom/viber/voip/util/ft;Lcom/viber/voip/util/Reachability$1;)V

    iput-object v1, p0, Lcom/viber/voip/util/ft;->i:Lcom/viber/voip/util/fv;

    .line 71
    iget-object v1, p0, Lcom/viber/voip/util/ft;->i:Lcom/viber/voip/util/fv;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/ft;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/util/ft;->e:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/viber/voip/util/ft;
    .locals 2
    .parameter

    .prologue
    .line 53
    const-class v1, Lcom/viber/voip/util/ft;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/viber/voip/util/ft;->g:Lcom/viber/voip/util/ft;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/viber/voip/util/ft;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/ft;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/viber/voip/util/ft;->g:Lcom/viber/voip/util/ft;

    .line 56
    :cond_0
    sget-object v0, Lcom/viber/voip/util/ft;->g:Lcom/viber/voip/util/ft;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyConnectivityChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastNetworkType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/util/ft;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/ft;->a(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/viber/voip/util/ft;->b:I

    if-eq p1, v0, :cond_0

    .line 109
    iput p1, p0, Lcom/viber/voip/util/ft;->b:I

    .line 110
    iput p2, p0, Lcom/viber/voip/util/ft;->c:I

    .line 112
    iget-object v1, p0, Lcom/viber/voip/util/ft;->f:Ljava/util/List;

    monitor-enter v1

    .line 113
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/viber/voip/util/ft;->f:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/fu;

    .line 116
    invoke-interface {v0, p1, p2}, Lcom/viber/voip/util/fu;->connectivityChanged(II)V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 119
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 142
    const-string/jumbo v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0, v2, v2}, Lcom/viber/voip/util/ft;->a(II)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/util/ft;->c()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/util/ft;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/util/ft;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/ft;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/viber/voip/util/ft;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/ft;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/viber/voip/util/ft;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyBackgroundDataChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/ft;->a(Ljava/lang/String;)V

    .line 134
    iget-boolean v0, p0, Lcom/viber/voip/util/ft;->d:Z

    if-eq p1, v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/viber/voip/util/ft;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/fu;

    .line 136
    invoke-interface {v0, p1}, Lcom/viber/voip/util/fu;->backgroundDataChanged(Z)V

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 122
    const-string/jumbo v0, "notifyWifiConnectivityChanged"

    invoke-direct {p0, v0}, Lcom/viber/voip/util/ft;->a(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/viber/voip/util/ft;->f:Ljava/util/List;

    monitor-enter v1

    .line 125
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/viber/voip/util/ft;->f:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 126
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/fu;

    .line 128
    invoke-interface {v0}, Lcom/viber/voip/util/fu;->wifiConnectivityChanged()V

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 130
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 224
    if-nez p0, :cond_0

    move v0, v1

    .line 232
    :goto_0
    return v0

    .line 227
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 228
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 229
    if-nez v0, :cond_1

    move v0, v1

    .line 230
    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 151
    iget-object v0, p0, Lcom/viber/voip/util/ft;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 154
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkActiveNetworkChange networkType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",lastNetworkType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/viber/voip/util/ft;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/viber/voip/util/ft;->a(Ljava/lang/String;)V

    .line 156
    iget v3, p0, Lcom/viber/voip/util/ft;->b:I

    if-eq v3, v1, :cond_1

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Reachability.activeNetworkInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/viber/voip/util/ft;->a(Ljava/lang/String;)V

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Reachability TypeName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", subtype:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/ft;->a(Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, v1, v2}, Lcom/viber/voip/util/ft;->a(II)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/viber/voip/util/ft;->b()V

    goto :goto_0

    .line 166
    :cond_2
    invoke-direct {p0, v1, v1}, Lcom/viber/voip/util/ft;->a(II)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 236
    if-nez p0, :cond_0

    .line 256
    :goto_0
    return v0

    .line 238
    :cond_0
    invoke-static {p0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v1

    .line 239
    if-nez v1, :cond_1

    .line 240
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode"

    invoke-interface {v2, v3, v0}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 241
    if-eqz v0, :cond_2

    .line 242
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "202"

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 243
    const v0, 0x7f0c039f

    const v2, 0x7f0c03a0

    invoke-static {p0, v0, v2, v4}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    :cond_1
    :goto_1
    move v0, v1

    .line 256
    goto :goto_0

    .line 245
    :cond_2
    invoke-static {p0}, Lcom/viber/voip/util/ft;->d(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    const v0, 0x7f0c03a2

    const v2, 0x7f0c038e

    invoke-static {p0, v0, v2, v4}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    .line 247
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "201"

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_1

    .line 249
    :cond_3
    const v0, 0x7f0c03a1

    const v2, 0x7f0c03a3

    invoke-static {p0, v0, v2, v4}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    .line 250
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "203"

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 263
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 264
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 267
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 268
    const-string/jumbo v2, "getMobileDataEnabled"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 269
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 270
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-object v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/viber/voip/util/ft;->b:I

    return v0
.end method

.method public a(Lcom/viber/voip/util/fu;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    sget-boolean v0, Lcom/viber/voip/util/ft;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/util/ft;->f:Ljava/util/List;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/ft;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget v0, p0, Lcom/viber/voip/util/ft;->b:I

    iget v1, p0, Lcom/viber/voip/util/ft;->c:I

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/util/fu;->connectivityChanged(II)V

    .line 96
    return-void

    .line 94
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lcom/viber/voip/util/fu;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    iget-object v1, p0, Lcom/viber/voip/util/ft;->f:Ljava/util/List;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/ft;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 101
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/viber/voip/util/ft;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    .line 103
    invoke-interface {p1, v0}, Lcom/viber/voip/util/fu;->backgroundDataChanged(Z)V

    .line 104
    return-void

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/viber/voip/util/ft;->h:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/viber/voip/util/ft;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/util/ft;->i:Lcom/viber/voip/util/fv;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 189
    return-void
.end method
