.class public Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;
.super Lcom/viber/voip/sound/AbstractSoundService;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerEndScreen;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerHoldState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerMuteState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerOutgoingScreen;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerRemoteCallState;


# static fields
.field private static final DELEGATE_HANDLER_NAME:Ljava/lang/String; = "SoundService handler thread"

.field public static final TAG:Ljava/lang/String;

.field private static final USE_OWN_HANDLER_THREAD:Z

.field private static final delegateHandlerThread:Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$DelegateHandlerThread;

.field private static final mainHandler:Landroid/os/Handler;


# instance fields
.field private final methodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor",
            "<",
            "Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final parentSoundService:Lcom/viber/voip/sound/ISoundService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-class v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->TAG:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    check-cast v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$DelegateHandlerThread;

    sput-object v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->delegateHandlerThread:Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$DelegateHandlerThread;

    .line 90
    new-instance v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$DelegateHandler;

    sget-object v1, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->delegateHandlerThread:Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$DelegateHandlerThread;

    invoke-virtual {v1}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$DelegateHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$DelegateHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->mainHandler:Landroid/os/Handler;

    .line 91
    return-void
.end method

.method protected constructor <init>(Lcom/viber/voip/sound/ISoundService;)V
    .locals 7
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/viber/voip/sound/AbstractSoundService;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    const-class v1, Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->methodMap:Ljava/util/HashMap;

    .line 157
    iput-object p1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 162
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->methodMap:Ljava/util/HashMap;

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;-><init>(Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->methodMap:Ljava/util/HashMap;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_0
    new-instance v3, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v1

    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;-><init>(Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;->override(Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;)V

    .line 162
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 175
    :cond_1
    return-void
.end method

.method private _boolean(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 207
    if-nez p1, :cond_0

    .line 209
    :goto_0
    return v0

    .line 207
    :cond_0
    :try_start_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private _int(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 215
    if-nez p1, :cond_0

    .line 217
    :goto_0
    return v0

    .line 215
    :cond_0
    :try_start_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private _string(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 223
    :try_start_0
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-object p1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private varargs findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->findMethodDecl(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;

    move-result-object v0

    .line 284
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->method:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method private varargs findMethodDecl(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 235
    invoke-direct {p0, p3}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->objectToClassMap([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v3

    .line 236
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->methodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;

    .line 237
    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-object v2

    .line 238
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;->getCallables()Ljava/util/Collection;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_7

    .line 241
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v2

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;

    .line 243
    array-length v1, v3

    iget-object v5, v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->parmDecl:[Ljava/lang/Class;

    array-length v5, v5

    if-eq v1, v5, :cond_2

    move-object v0, v2

    goto :goto_1

    .line 245
    :cond_2
    const/4 v1, 0x0

    :goto_2
    array-length v5, v3

    if-ge v1, v5, :cond_4

    .line 247
    :try_start_0
    aget-object v5, v3, v1

    iget-object v6, v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->parmDecl:[Ljava/lang/Class;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 248
    :catch_0
    move-exception v5

    .line 249
    iget-object v5, v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->parmDecl:[Ljava/lang/Class;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_6

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_6

    .line 250
    const-class v5, Ljava/lang/Integer;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v6, v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->parmDecl:[Ljava/lang/Class;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->parmDecl:[Ljava/lang/Class;

    aget-object v1, v6, v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 267
    :cond_4
    :goto_3
    if-eqz v0, :cond_1

    :cond_5
    :goto_4
    move-object v2, v0

    .line 269
    goto :goto_0

    :cond_6
    move-object v0, v2

    .line 264
    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_4
.end method

.method public static declared-synchronized getSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 184
    const-class v1, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 185
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_7

    .line 186
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    const-string/jumbo v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    const-string/jumbo v3, "J"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 190
    :cond_1
    :try_start_1
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    const-string/jumbo v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 192
    :cond_2
    const-class v3, Ljava/lang/Void;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    const-string/jumbo v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 194
    :cond_3
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 195
    const-string/jumbo v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 196
    :cond_4
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 197
    const-string/jumbo v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 198
    :cond_5
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "L["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 200
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 202
    :cond_7
    const-string/jumbo v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static varargs getSignature(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 178
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/Class;

    .line 179
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {p0, v1}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->getSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs objectToClassMap([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 273
    if-nez p1, :cond_0

    new-array v0, v1, [Ljava/lang/Class;

    .line 277
    :goto_0
    return-object v0

    .line 274
    :cond_0
    monitor-enter p0

    .line 275
    :try_start_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Class;

    move v2, v1

    .line 276
    :goto_1
    array-length v1, p1

    if-ge v2, v1, :cond_2

    aget-object v1, p1, v2

    if-eqz v1, :cond_1

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_2
    aput-object v1, v0, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    const-class v1, Ljava/lang/Object;

    goto :goto_2

    .line 277
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public IsGSMCallActive()Z
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "IsGSMCallActive"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getApplicationContext()Lcom/viber/voip/ViberApplication;
    .locals 3

    .prologue
    .line 766
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getApplicationContext"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    check-cast v0, Lcom/viber/voip/ViberApplication;

    return-object v0
.end method

.method public getAudioCtl(III)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getAudioCtl"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getAudioSettings(Lcom/viber/voip/sound/ISoundService$AudioModeCtl;)Lcom/viber/voip/sound/ISoundService$IAudioSettings;
    .locals 4
    .parameter

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getAudioSettings"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    check-cast v0, Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    return-object v0
.end method

.method public getBluetoothCtl()Lcom/viber/voip/sound/bluetooth/BTControl;
    .locals 3

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getBluetoothCtl"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/bluetooth/BTControl;

    check-cast v0, Lcom/viber/voip/sound/bluetooth/BTControl;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 756
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getContext"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 771
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getMediaPlayer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    check-cast v0, Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getMode()I
    .locals 3

    .prologue
    .line 586
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getMode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPlatformAudioManager()Landroid/media/AudioManager;
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getPlatformAudioManager"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method public getRingerMode()I
    .locals 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getRingerMode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getRingtone(IZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 923
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getRingtone"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    check-cast v0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    return-object v0
.end method

.method public getRingtone(Landroid/net/Uri;)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 4
    .parameter

    .prologue
    .line 661
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getRingtone"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    check-cast v0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    return-object v0
.end method

.method public getRingtone(Landroid/net/Uri;ZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 917
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getRingtone"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    check-cast v0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    return-object v0
.end method

.method public getRingtoneService()Lcom/viber/voip/sound/IRingtoneService;
    .locals 3

    .prologue
    .line 906
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getRingtoneService"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/IRingtoneService;

    check-cast v0, Lcom/viber/voip/sound/IRingtoneService;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 5
    .parameter

    .prologue
    .line 646
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getStreamMaxVolume"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 5
    .parameter

    .prologue
    .line 641
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getStreamVolume"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getThreadPriority()I
    .locals 3

    .prologue
    .line 901
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getThreadPriority"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getVibratorService()Lcom/viber/voip/sound/IVibratorService;
    .locals 3

    .prologue
    .line 969
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getVibratorService"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/IVibratorService;

    check-cast v0, Lcom/viber/voip/sound/IVibratorService;

    return-object v0
.end method

.method public getVocoderCtl(Lcom/viber/voip/sound/ISoundService$VocoderCtl;II)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getVocoderCtl"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getVocoderSettings()Lcom/viber/voip/sound/ISoundService$IVocoderSettings;
    .locals 3

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getVocoderSettings"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$IVocoderSettings;

    check-cast v0, Lcom/viber/voip/sound/ISoundService$IVocoderSettings;

    return-object v0
.end method

.method public getVoiceStatsString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 576
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "getVoiceStatsString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideCall(Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "hideCall"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    return-void
.end method

.method public hideCallBack()V
    .locals 3

    .prologue
    .line 430
    iget-object v1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v2, "hideCallBack"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    return-void
.end method

.method public hideEndCall()V
    .locals 3

    .prologue
    .line 440
    iget-object v1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v2, "hideEndCall"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    return-void
.end method

.method public hideReception()V
    .locals 3

    .prologue
    .line 410
    iget-object v1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v2, "hideReception"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    return-void
.end method

.method public varargs invoke(Lcom/viber/voip/sound/ISoundService;Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-object v0, p2, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->parmDecl:[Ljava/lang/Class;

    .line 346
    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Class;

    .line 347
    :cond_0
    iget-object v0, p2, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->methodName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 349
    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 351
    :catch_0
    move-exception v0

    .line 352
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 362
    :goto_0
    return-void

    .line 350
    :cond_1
    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 353
    :catch_1
    move-exception v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 355
    :catch_2
    move-exception v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 357
    :catch_3
    move-exception v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 359
    :catch_4
    move-exception v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method public varargs invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-virtual {p0, p1, p2, p3}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public varargs invokeForResult(Lcom/viber/voip/sound/ISoundService;Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 365
    iget-object v0, p2, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->parmDecl:[Ljava/lang/Class;

    .line 366
    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    .line 368
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p2, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 369
    invoke-virtual {p0, p1, v0, p3}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 375
    :goto_0
    return-object v0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 375
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 372
    :catch_1
    move-exception v0

    .line 373
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1
.end method

.method public varargs invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 289
    new-array v4, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v4, v7

    .line 295
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 298
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 299
    new-instance v6, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 300
    new-instance v0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$1;-><init>(Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;Ljava/lang/reflect/Method;Lcom/viber/voip/sound/ISoundService;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/concurrent/Semaphore;)V

    .line 321
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 322
    :try_start_1
    sget-object v1, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    :try_start_2
    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 341
    :goto_1
    aget-object v0, v4, v7

    return-object v0

    :cond_1
    move v0, v7

    .line 295
    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 338
    :catchall_1
    move-exception v0

    throw v0

    .line 328
    :cond_2
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 331
    :catch_1
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 333
    :catch_2
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method

.method public isBluetoothScoOn()Z
    .locals 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "isBluetoothScoOn"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHeadsetPluggedIn()Z
    .locals 3

    .prologue
    .line 821
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "isHeadsetPluggedIn"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMediaPlayerPlaying()Z
    .locals 3

    .prologue
    .line 686
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "isMediaPlayerPlaying"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMicrophoneMute()Z
    .locals 3

    .prologue
    .line 616
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "isMicrophoneMute"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOnHold()Z
    .locals 3

    .prologue
    .line 796
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "isOnHold"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPeerOnHold()Z
    .locals 3

    .prologue
    .line 801
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "isPeerOnHold"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRingtonePlaying()Z
    .locals 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "isRingtonePlaying"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRouteActive(I)Z
    .locals 5
    .parameter

    .prologue
    .line 954
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "isRouteActive"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneAllowed()Z
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "isSpeakerphoneAllowed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 3

    .prologue
    .line 601
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "isSpeakerphoneOn"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadAudioResource(I)V
    .locals 5
    .parameter

    .prologue
    .line 746
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "loadAudioResource"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    return-void
.end method

.method public loadSample(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 974
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "loadSample"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 975
    return-void
.end method

.method public loadSamples([I)V
    .locals 4
    .parameter

    .prologue
    .line 979
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "loadSamples"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 980
    return-void
.end method

.method public localHold()V
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "localHold"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    return-void
.end method

.method public localUnhold()V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "localUnhold"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    return-void
.end method

.method public mode_Dtmf()I
    .locals 3

    .prologue
    .line 841
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "mode_Dtmf"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public mode_InCall()I
    .locals 3

    .prologue
    .line 826
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "mode_InCall"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public mode_Mic_InCall()I
    .locals 3

    .prologue
    .line 886
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "mode_Mic_InCall"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public mode_Normal()I
    .locals 3

    .prologue
    .line 846
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "mode_Normal"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public mode_Ringtone()I
    .locals 3

    .prologue
    .line 831
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "mode_Ringtone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public mode_Tone()I
    .locals 3

    .prologue
    .line 836
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "mode_Tone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public mute()V
    .locals 3

    .prologue
    .line 541
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "mute"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    return-void
.end method

.method public onAnswerButtonClick()V
    .locals 3

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onAnswerButtonClick"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1041
    return-void
.end method

.method public onCallEnded(JZLjava/lang/String;II)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 461
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onCallEnded"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    return-void
.end method

.method public onCallMissed(JLjava/lang/String;IILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 456
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onCallMissed"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    return-void
.end method

.method public onCallStarted(Z)V
    .locals 5
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onCallStarted"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    return-void
.end method

.method public onDebugInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 496
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onDebugInfo"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    return-void
.end method

.method public onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onDeviceConnected"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1006
    return-void
.end method

.method public onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onDeviceDisconnected"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    return-void
.end method

.method public onError(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onError"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1016
    return-void
.end method

.method public onGSMStateChange(ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 581
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onGSMStateChange"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    return-void
.end method

.method public onGetMissedCalls([Lcom/viber/jni/CMissedCall;)Z
    .locals 4
    .parameter

    .prologue
    .line 466
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onGetMissedCalls"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onHandsetOffCallDisabled()Z
    .locals 3

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onHandsetOffCallDisabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onHandsetOffCallEnabled()Z
    .locals 3

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onHandsetOffCallEnabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onHangup()V
    .locals 3

    .prologue
    .line 399
    iget-object v1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v2, "onHangup"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    return-void
.end method

.method public onIsRegistered(I)V
    .locals 5
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onIsRegistered"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    return-void
.end method

.method public onIsRegisteredNumber(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 536
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onIsRegisteredNumber"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    return-void
.end method

.method public onLBServerTime(J)V
    .locals 5
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onLBServerTime"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    return-void
.end method

.method public onPeerBusy()V
    .locals 3

    .prologue
    .line 394
    iget-object v1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v2, "onPeerBusy"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    return-void
.end method

.method public onPeerCapabilities(I)V
    .locals 0
    .parameter

    .prologue
    .line 1088
    return-void
.end method

.method public onPeerRinging()V
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onPeerRinging"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 5
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onPhoneStateChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    return-void
.end method

.method public onSendTextReply(IJI)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 476
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onSendTextReply"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    return-void
.end method

.method public onShareAddressBook()V
    .locals 3

    .prologue
    .line 389
    iget-object v1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v2, "onShareAddressBook"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    return-void
.end method

.method public onShareAddressBookDone(Z)V
    .locals 5
    .parameter

    .prologue
    .line 471
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onShareAddressBookDone"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    return-void
.end method

.method public onShouldRegister()V
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onShouldRegister"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    return-void
.end method

.method public onSignal(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 516
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onSignal"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    return-void
.end method

.method public onStartRingback(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 521
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onStartRingback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    return-void
.end method

.method public onTextDelivered(JJ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 481
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onTextDelivered"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    return-void
.end method

.method public onVoiceChannelStateChange(Z)V
    .locals 5
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "onVoiceChannelStateChange"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    return-void
.end method

.method public peerHold()V
    .locals 3

    .prologue
    .line 561
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "peerHold"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    return-void
.end method

.method public peerUnhold()V
    .locals 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "peerUnhold"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    return-void
.end method

.method public playDTMFTone(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 726
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "playDTMFTone"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 727
    return-void
.end method

.method public playMessageNotification(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V
    .locals 3
    .parameter

    .prologue
    .line 671
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "playMessageNotification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    return-void
.end method

.method public playRingtone(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 911
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "playRingtone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 912
    return-void
.end method

.method public playRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V
    .locals 3
    .parameter

    .prologue
    .line 666
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "playRingtone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    return-void
.end method

.method public playSample(IFFIIF)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 985
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "playSample"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 986
    return-void
.end method

.method public playTone(I)V
    .locals 5
    .parameter

    .prologue
    .line 721
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "playTone"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    return-void
.end method

.method public playTone(Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;)V
    .locals 4
    .parameter

    .prologue
    .line 716
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "playTone"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 717
    return-void
.end method

.method public registerSpeakerStateListener(Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;)V
    .locals 4
    .parameter

    .prologue
    .line 811
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "registerSpeakerStateListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 812
    return-void
.end method

.method public registerVoiceStateListener(Lcom/viber/voip/sound/VoiceStateListener;)V
    .locals 4
    .parameter

    .prologue
    .line 990
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "registerVoiceStateListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 991
    return-void
.end method

.method public registerVolumeChangeListener(Lcom/viber/voip/sound/ISoundService$VolumeChangeListenerIntf;)V
    .locals 4
    .parameter

    .prologue
    .line 944
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "registerVolumeChangeListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 945
    return-void
.end method

.method public final rejectSpeakerActiveState()Z
    .locals 3

    .prologue
    .line 881
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "rejectSpeakerActiveState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public rejectSpeakerStateChangeWithHeadset()Z
    .locals 3

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "rejectSpeakerStateChangeWithHeadset"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public releaseMediaPlayer()V
    .locals 3

    .prologue
    .line 741
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "releaseMediaPlayer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 742
    return-void
.end method

.method public setAudioCtl(III)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "setAudioCtl"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 5
    .parameter

    .prologue
    .line 626
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "setBluetoothScoOn"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    return-void
.end method

.method public setMicrophoneMute(Z)V
    .locals 5
    .parameter

    .prologue
    .line 621
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "setMicrophoneMute"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    return-void
.end method

.method public setMode(I)V
    .locals 5
    .parameter

    .prologue
    .line 636
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "setMode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    return-void
.end method

.method public setMode(ILcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 631
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "setMode"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 5
    .parameter

    .prologue
    .line 591
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "setSpeakerphoneOn"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    return-void
.end method

.method public setVocoderCtl(Lcom/viber/voip/sound/ISoundService$VocoderCtl;II)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "setVocoderCtl"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public shouldAutoAnswer()Z
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "shouldAutoAnswer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shouldKillMediaManagerOnSuspend()Z
    .locals 3

    .prologue
    .line 791
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "shouldKillMediaManagerOnSuspend"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shouldVibrate(I)Z
    .locals 5
    .parameter

    .prologue
    .line 651
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "shouldVibrate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public showCall(Ljava/lang/String;ZZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "showCall"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    return-void
.end method

.method public showCallBack(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "showCallBack"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    return-void
.end method

.method public showDialog(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1082
    return-void
.end method

.method public showEndCall()V
    .locals 3

    .prologue
    .line 435
    iget-object v1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v2, "showEndCall"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    return-void
.end method

.method public showReception(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "showReception"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    return-void
.end method

.method public startMediaPlayer()V
    .locals 3

    .prologue
    .line 731
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "startMediaPlayer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    return-void
.end method

.method public stopAllTones()V
    .locals 3

    .prologue
    .line 711
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "stopAllTones"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    return-void
.end method

.method public stopDTMFTone()V
    .locals 3

    .prologue
    .line 706
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "stopDTMFTone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    return-void
.end method

.method public stopMediaPlayer()V
    .locals 3

    .prologue
    .line 736
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "stopMediaPlayer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    return-void
.end method

.method public stopRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V
    .locals 4
    .parameter

    .prologue
    .line 681
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "stopRingtone"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    return-void
.end method

.method public stopRingtone()Z
    .locals 3

    .prologue
    .line 676
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "stopRingtone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public stopTone()V
    .locals 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "stopTone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    return-void
.end method

.method public stream_Dtmf()I
    .locals 3

    .prologue
    .line 866
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "stream_Dtmf"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public stream_Notification()I
    .locals 3

    .prologue
    .line 871
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "stream_Notification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public stream_Ring()I
    .locals 3

    .prologue
    .line 856
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "stream_Ring"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public stream_Tone()I
    .locals 3

    .prologue
    .line 861
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "stream_Tone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public stream_Voice()I
    .locals 3

    .prologue
    .line 851
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "stream_Voice"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_int(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public suspendNativeOnLocalHold()Z
    .locals 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "suspendNativeOnLocalHold"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public suspendNativeOnParallelGSM()Z
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "suspendNativeOnParallelGSM"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public suspendNativeOnPeerHold()Z
    .locals 3

    .prologue
    .line 781
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "suspendNativeOnPeerHold"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public switchToGSM(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 531
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "switchToGSM"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    return-void
.end method

.method public syncSpeakerState()V
    .locals 3

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "syncSpeakerState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1076
    return-void
.end method

.method public trackActivity(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 696
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "trackActivity"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    return-void
.end method

.method public unmute()V
    .locals 3

    .prologue
    .line 546
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "unmute"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    return-void
.end method

.method public unregisterSpeakerStateListener(Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;)V
    .locals 4
    .parameter

    .prologue
    .line 816
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "unregisterSpeakerStateListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 817
    return-void
.end method

.method public unregisterVoiceStateListener(Lcom/viber/voip/sound/VoiceStateListener;)V
    .locals 4
    .parameter

    .prologue
    .line 995
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "unregisterVoiceStateListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 996
    return-void
.end method

.method public unregisterVolumeChangeListener(Lcom/viber/voip/sound/ISoundService$VolumeChangeListenerIntf;)V
    .locals 4
    .parameter

    .prologue
    .line 949
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "unregisterVolumeChangeListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invoke(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    return-void
.end method

.method public useExtraBtChecksForModeChangeWorkaround()Z
    .locals 3

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "useExtraBtChecksForModeChangeWorkaround"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public useModeLocking()Z
    .locals 3

    .prologue
    .line 751
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "useModeLocking"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public useModeSwitchForSpeakerToggleWorkaround()Z
    .locals 3

    .prologue
    .line 806
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "useModeSwitchForSpeakerToggleWorkaround"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public useNativeMuteControl()Z
    .locals 3

    .prologue
    .line 964
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "useNativeMuteControl"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public useNativeResetOnSpeakerToggle()Z
    .locals 3

    .prologue
    .line 959
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "useNativeResetOnSpeakerToggle"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public useNativeSoundLibSpeakerControl()Z
    .locals 3

    .prologue
    .line 939
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "useNativeSoundLibSpeakerControl"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public useSpeakerResetForModeChangeWorkaround()Z
    .locals 3

    .prologue
    .line 891
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "useSpeakerResetForModeChangeWorkaround"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public useThreadPriority()Z
    .locals 3

    .prologue
    .line 896
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "useThreadPriority"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public useVoiceChannelListeners()Z
    .locals 3

    .prologue
    .line 933
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "useVoiceChannelListeners"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public useVolumeBoostForTonesInSpeakerMode()Z
    .locals 3

    .prologue
    .line 928
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "useVolumeBoostForTonesInSpeakerMode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public useVolumeQuirks()Z
    .locals 3

    .prologue
    .line 656
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    const-string/jumbo v1, "useVolumeQuirks"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->invokeForResult(Lcom/viber/voip/sound/ISoundService;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->_boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
