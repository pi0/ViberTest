.class public Lcom/viber/voip/j/a;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/viber/voip/j/a;


# instance fields
.field private c:I

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/j/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/viber/voip/j/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/j/a;->a:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/viber/voip/j/a;

    invoke-direct {v0}, Lcom/viber/voip/j/a;-><init>()V

    sput-object v0, Lcom/viber/voip/j/a;->b:Lcom/viber/voip/j/a;

    .line 33
    new-instance v0, Lcom/viber/voip/j/b;

    invoke-direct {v0}, Lcom/viber/voip/j/b;-><init>()V

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->getViberApp(Lcom/viber/voip/dw;)V

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/j/a;->c:I

    .line 27
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/j/a;->d:Ljava/util/Set;

    .line 46
    return-void
.end method

.method public static declared-synchronized a()Lcom/viber/voip/j/a;
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/viber/voip/j/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/viber/voip/j/a;->b:Lcom/viber/voip/j/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/viber/voip/j/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/j/a;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g()Lcom/viber/voip/j/a;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/viber/voip/j/a;->b:Lcom/viber/voip/j/a;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "enable vibes state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/j/a;->a(IZ)V

    .line 97
    return-void
.end method

.method public declared-synchronized a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "enable vibes state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/viber/voip/j/a;->c:I

    if-eq v0, p1, :cond_0

    .line 107
    if-nez p2, :cond_1

    .line 108
    iget v0, p0, Lcom/viber/voip/j/a;->c:I

    if-ge p1, v0, :cond_1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "new state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is lower than current : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/j/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ignoring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/j/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    monitor-exit p0

    return-void

    .line 113
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/viber/voip/j/a;->c:I

    .line 114
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "pref_vibes_enabled_2"

    iget v2, p0, Lcom/viber/voip/j/a;->c:I

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 116
    iget-object v0, p0, Lcom/viber/voip/j/a;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/j/c;

    .line 117
    invoke-interface {v0, p1}, Lcom/viber/voip/j/c;->d(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/viber/voip/j/c;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/voip/j/a;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "onVibesInviteReceived"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/viber/voip/j/a;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/j/a;->a(I)V

    .line 74
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "enable vibes state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/j/a;->a(IZ)V

    .line 102
    return-void
.end method

.method public b(Lcom/viber/voip/j/c;)V
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/viber/voip/j/a;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/viber/voip/j/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/viber/voip/j/a;->c:I

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/viber/voip/j/a;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/viber/voip/j/a;->c()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPublicChatSupported(I)V
    .locals 1
    .parameter

    .prologue
    .line 65
    const-string/jumbo v0, "onPublicChatSupported"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/viber/voip/j/a;->a(I)V

    .line 67
    return-void
.end method
