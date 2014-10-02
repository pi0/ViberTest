.class public Lcom/viber/voip/settings/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences;
.implements Landroid/content/SharedPreferences$Editor;


# instance fields
.field a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/viber/voip/settings/l;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Lcom/viber/voip/settings/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/viber/voip/settings/l;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/settings/l;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/settings/n;->b:Ljava/util/Set;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/settings/n;->c:Ljava/util/Map;

    .line 24
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/viber/voip/settings/n;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 26
    return-void
.end method

.method public static declared-synchronized a(Landroid/preference/PreferenceActivity;Lcom/viber/voip/settings/l;Ljava/util/Set;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceActivity;",
            "Lcom/viber/voip/settings/l;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    const-class v3, Lcom/viber/voip/settings/n;

    monitor-enter v3

    :try_start_0
    const-class v0, Landroid/preference/PreferenceActivity;

    const-string/jumbo v4, "mPreferenceManager"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 32
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceManager;

    .line 34
    const-class v4, Landroid/preference/PreferenceManager;

    const-string/jumbo v5, "mSharedPreferences"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 35
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 36
    new-instance v5, Lcom/viber/voip/settings/n;

    invoke-direct {v5, p1, p2}, Lcom/viber/voip/settings/n;-><init>(Lcom/viber/voip/settings/l;Ljava/util/Set;)V

    .line 37
    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move v0, v1

    .line 48
    :goto_0
    monitor-exit v3

    return v0

    .line 40
    :catch_0
    move-exception v0

    move v0, v2

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception v0

    move v0, v2

    .line 43
    goto :goto_0

    .line 44
    :catch_2
    move-exception v0

    move v0, v2

    .line 45
    goto :goto_0

    .line 46
    :catch_3
    move-exception v0

    move v0, v2

    .line 48
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static declared-synchronized a(Lcom/viber/voip/settings/ui/bg;Lcom/viber/voip/settings/l;Ljava/util/Set;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/settings/ui/bg;",
            "Lcom/viber/voip/settings/l;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    const-class v2, Lcom/viber/voip/settings/n;

    monitor-enter v2

    :try_start_0
    const-class v3, Landroid/preference/PreferenceActivity;

    const-string/jumbo v4, "mPreferenceManager"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 56
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bg;->c()Landroid/preference/PreferenceManager;

    move-result-object v3

    .line 58
    const-class v4, Landroid/preference/PreferenceManager;

    const-string/jumbo v5, "mSharedPreferences"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 59
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    new-instance v5, Lcom/viber/voip/settings/n;

    invoke-direct {v5, p1, p2}, Lcom/viber/voip/settings/n;-><init>(Lcom/viber/voip/settings/l;Ljava/util/Set;)V

    .line 61
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v3}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 72
    :goto_0
    monitor-exit v2

    return v0

    .line 64
    :catch_0
    move-exception v0

    move v0, v1

    .line 65
    goto :goto_0

    .line 66
    :catch_1
    move-exception v0

    move v0, v1

    .line 67
    goto :goto_0

    .line 68
    :catch_2
    move-exception v0

    move v0, v1

    .line 69
    goto :goto_0

    .line 70
    :catch_3
    move-exception v0

    move v0, v1

    .line 72
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public apply()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    iget-object v1, p0, Lcom/viber/voip/settings/n;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/util/Set;)Lcom/viber/voip/settings/l;

    .line 84
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    invoke-interface {v0, p1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 0

    .prologue
    .line 135
    return-object p0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    invoke-interface {v0}, Lcom/viber/voip/settings/l;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 95
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;F)Lcom/viber/voip/settings/l;

    .line 101
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 107
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;

    .line 113
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 119
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 3
    .parameter

    .prologue
    .line 186
    iget-object v1, p0, Lcom/viber/voip/settings/n;->c:Ljava/util/Map;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/settings/n;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    new-instance v2, Lcom/viber/voip/settings/o;

    invoke-direct {v2, p0, p1}, Lcom/viber/voip/settings/o;-><init>(Lcom/viber/voip/settings/n;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 189
    iget-object v0, p0, Lcom/viber/voip/settings/n;->c:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    invoke-interface {v0, v2}, Lcom/viber/voip/settings/l;->a(Lcom/viber/voip/settings/m;)V

    .line 192
    :cond_0
    monitor-exit v1

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    invoke-interface {v0, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 125
    return-object p0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 3
    .parameter

    .prologue
    .line 197
    iget-object v2, p0, Lcom/viber/voip/settings/n;->c:Ljava/util/Map;

    monitor-enter v2

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/settings/n;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/viber/voip/settings/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/l;

    iget-object v1, p0, Lcom/viber/voip/settings/n;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/settings/m;

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->b(Lcom/viber/voip/settings/m;)V

    .line 200
    iget-object v0, p0, Lcom/viber/voip/settings/n;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    monitor-exit v2

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
