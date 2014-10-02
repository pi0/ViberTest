.class public Lcom/viber/voip/util/hk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/viber/voip/util/hk;

.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/util/hl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/viber/voip/util/hk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/hk;->a:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/viber/voip/util/hk;->c:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/viber/voip/util/hk;

    invoke-direct {v0}, Lcom/viber/voip/util/hk;-><init>()V

    sput-object v0, Lcom/viber/voip/util/hk;->b:Lcom/viber/voip/util/hk;

    .line 37
    invoke-static {}, Lcom/viber/voip/util/hk;->b()V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static declared-synchronized a()Lcom/viber/voip/util/hk;
    .locals 2

    .prologue
    .line 56
    const-class v0, Lcom/viber/voip/util/hk;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/viber/voip/util/hk;->b:Lcom/viber/voip/util/hk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Ljava/lang/String;)Lcom/viber/voip/util/hl;
    .locals 2
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/viber/voip/util/hl;

    const/16 v1, 0xfa

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/util/hl;-><init>(Ljava/lang/String;I)V

    .line 42
    sget-object v1, Lcom/viber/voip/util/hk;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    return-object v0
.end method

.method private static b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "user_dictionary_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViberDictionaryController savedVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 49
    if-ge v0, v3, :cond_0

    .line 50
    const-string/jumbo v0, "Viber"

    invoke-static {v0}, Lcom/viber/voip/util/hk;->a(Ljava/lang/String;)Lcom/viber/voip/util/hl;

    .line 51
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "user_dictionary_version"

    invoke-interface {v0, v1, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    return-void
.end method
