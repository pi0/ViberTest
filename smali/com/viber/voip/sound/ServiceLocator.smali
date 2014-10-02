.class abstract Lcom/viber/voip/sound/ServiceLocator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AS_INTERFACE:Ljava/lang/String; = "asInterface"

.field private static final CHECK_SERVICE_METHOD:Ljava/lang/String; = "checkService"

.field private static final GET_SERVICE_METHOD:Ljava/lang/String; = "getService"

.field private static final SERVICE_MANAGER:Ljava/lang/String; = "android.os.ServiceManager"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/viber/voip/sound/ServiceLocator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/ServiceLocator;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized checkService(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 83
    const-class v2, Lcom/viber/voip/sound/ServiceLocator;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/viber/voip/sound/ServiceLocator;->getServiceManager()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/sound/ServiceLocator;->getCheckServiceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/viber/voip/sound/ServiceLocator;->getServiceStub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 92
    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 87
    :catch_1
    move-exception v1

    .line 88
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 89
    :catch_2
    move-exception v1

    .line 90
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static final getAsInterfaceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 147
    const-string/jumbo v0, "asInterface"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/viber/voip/sound/ServiceLocator;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final getCheckServiceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 124
    const-string/jumbo v0, "checkService"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/viber/voip/sound/ServiceLocator;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 97
    const-class v0, Lcom/viber/voip/sound/ServiceLocator;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static final varargs getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 111
    :cond_0
    return-object v0
.end method

.method private static final getGetServiceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 117
    const-string/jumbo v0, "getService"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/viber/voip/sound/ServiceLocator;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static final declared-synchronized getService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    const-class v1, Lcom/viber/voip/sound/ServiceLocator;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/viber/voip/sound/ServiceLocator;->getServiceManager()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/sound/ServiceLocator;->getGetServiceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/viber/voip/sound/ServiceLocator;->getServiceStub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 78
    :goto_0
    monitor-exit v1

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 78
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 75
    :catch_2
    move-exception v0

    .line 76
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static final getServiceManager()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Lcom/viber/voip/sound/ServiceLocator;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "android.os.ServiceManager"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static final getServiceStub(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p1}, Lcom/viber/voip/sound/ServiceLocator;->getAsInterfaceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 134
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    return-object v0
.end method

.method private static final declared-synchronized getServiceStub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    const-class v1, Lcom/viber/voip/sound/ServiceLocator;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/viber/voip/sound/ServiceLocator;->getServiceStubInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    monitor-exit v1

    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    :try_start_1
    sget-object v2, Lcom/viber/voip/sound/ServiceLocator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static final getServiceStubClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lcom/viber/voip/sound/ServiceLocator;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static final getServiceStubInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 159
    .line 163
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {p2, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 167
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 173
    :cond_1
    invoke-static {p1}, Lcom/viber/voip/sound/ServiceLocator;->getServiceStubClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 174
    invoke-static {v0, v1}, Lcom/viber/voip/sound/ServiceLocator;->getServiceStub(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 169
    throw v0
.end method
