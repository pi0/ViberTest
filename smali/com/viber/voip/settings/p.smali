.class public Lcom/viber/voip/settings/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/viber/voip/settings/p;->a:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/viber/voip/settings/l;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    const-string/jumbo v0, "preferences_migration_performed"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {p0, p1}, Lcom/viber/voip/settings/p;->b(Landroid/content/Context;Lcom/viber/voip/settings/l;)V

    .line 39
    const-string/jumbo v0, "preferences_migration_performed"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 41
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/viber/voip/settings/l;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/viber/voip/settings/l;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    move-object v0, p1

    .line 104
    check-cast v0, Lcom/viber/voip/settings/a;

    .line 105
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/settings/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/viber/voip/settings/l;

    goto :goto_0

    .line 108
    :cond_0
    const-string/jumbo v0, "info.dat"

    invoke-static {p0, v0, p1, p2}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 109
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/viber/voip/settings/l;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p0, p1}, Lcom/viber/voip/util/bj;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/settings/p;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v0, p3, v1}, Lcom/viber/voip/util/bj;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 121
    invoke-static {p2, p3, v0}, Lcom/viber/voip/settings/p;->a(Lcom/viber/voip/settings/l;Ljava/util/Map;Ljava/util/Map;)V

    .line 122
    return-void
.end method

.method private static a(Lcom/viber/voip/settings/l;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/settings/l;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 130
    check-cast p0, Lcom/viber/voip/settings/a;

    .line 131
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/settings/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/viber/voip/settings/l;

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/settings/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/viber/voip/settings/l;

    goto :goto_1

    .line 137
    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/viber/voip/settings/l;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 50
    invoke-static {p0, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 53
    const-string/jumbo v1, "device.dat"

    invoke-static {p0, v1, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 56
    const-string/jumbo v1, "com.viber.voip.registration.ActivationController"

    invoke-static {p0, v1, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 59
    const-string/jumbo v1, "viber_SoundService"

    invoke-static {p0, v1, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 62
    const-string/jumbo v1, "com.viber.voip.ViberApplication"

    invoke-static {p0, v1, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 65
    const-string/jumbo v1, "Notifier"

    invoke-static {p0, v1, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 68
    const-string/jumbo v1, "MessagesCount"

    invoke-static {p0, v1, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 71
    const-string/jumbo v1, "BadgesCount"

    invoke-static {p0, v1, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 74
    const-string/jumbo v1, "com.viber.service.VoipConnectorService"

    invoke-static {p0, v1, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 77
    const-string/jumbo v1, "com.viber.voip.contacts.ui.ContactDetailsActivity"

    invoke-static {p0, v1, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 80
    const-string/jumbo v1, "com.viber.voip.IdleActivity"

    invoke-static {p0, v1, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 83
    const-string/jumbo v1, "viber_uploader"

    invoke-static {p0, v1, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 86
    const-string/jumbo v1, "statistics"

    invoke-static {p0, v1, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 89
    const-string/jumbo v1, "dbg_conn_test"

    invoke-static {p0, v1, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 92
    const-string/jumbo v1, "android.preference.PreferenceScreen"

    invoke-static {p0, v1, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 95
    const-string/jumbo v1, "com.viber.voip.registration.ActivationFragment"

    invoke-static {p0, v1, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 98
    const-string/jumbo v1, "messages"

    invoke-static {p0, v1, p1, v0}, Lcom/viber/voip/settings/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/settings/l;Ljava/util/Map;)V

    .line 99
    return-void
.end method
