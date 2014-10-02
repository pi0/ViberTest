.class public Lcom/viber/voip/messages/ui/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/viber/voip/messages/ui/bd;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/lang/String;

.field private static final g:[Lcom/viber/voip/messages/ui/bf;

.field private static final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/viber/voip/messages/ui/bf;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/messages/ui/bf;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/messages/ui/bf;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/messages/ui/bf;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:I

.field private static m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/messages/ui/bf;",
            ">;"
        }
    .end annotation
.end field

.field private static n:I


# instance fields
.field private o:Lcom/viber/voip/util/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/voip/util/o",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    const-class v0, Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/bd;->f:Ljava/lang/String;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/ui/bd;->h:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/ui/bd;->i:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/ui/bd;->j:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/ui/bd;->k:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/ui/bd;->m:Ljava/util/ArrayList;

    .line 104
    invoke-static {}, Lcom/viber/voip/messages/ui/bd;->l()V

    .line 105
    sget-object v0, Lcom/viber/voip/messages/ui/bd;->m:Ljava/util/ArrayList;

    sget-object v1, Lcom/viber/voip/messages/ui/bd;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/viber/voip/messages/ui/bf;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/ui/bf;

    sput-object v0, Lcom/viber/voip/messages/ui/bd;->g:[Lcom/viber/voip/messages/ui/bf;

    .line 106
    sput-object v2, Lcom/viber/voip/messages/ui/bd;->m:Ljava/util/ArrayList;

    .line 108
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    const v1, 0x7f0a00c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/viber/voip/messages/ui/bd;->a:I

    .line 110
    const v1, 0x7f0a00cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/viber/voip/messages/ui/bd;->b:I

    .line 111
    const v1, 0x7f0a00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/viber/voip/messages/ui/bd;->c:I

    .line 112
    const v1, 0x7f0a00ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/viber/voip/messages/ui/bd;->d:I

    .line 114
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/viber/voip/w;->x:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 115
    sget-object v0, Lcom/viber/voip/w;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/bj;->f(Ljava/lang/String;)Z

    .line 116
    sget v0, Lcom/viber/voip/messages/ui/bd;->n:I

    sput v0, Lcom/viber/voip/messages/ui/bd;->l:I

    .line 250
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/viber/voip/messages/ui/bd;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Lcom/viber/voip/util/o;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "EmoticonStore"

    const/high16 v3, 0x3d00

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/util/o;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/bd;->o:Lcom/viber/voip/util/o;

    .line 267
    return-void
.end method

.method public static a()Lcom/viber/voip/messages/ui/bd;
    .locals 3

    .prologue
    .line 252
    const-class v1, Lcom/viber/voip/messages/ui/bd;

    monitor-enter v1

    .line 253
    :try_start_0
    sget-object v0, Lcom/viber/voip/messages/ui/bd;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/bd;

    .line 254
    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/viber/voip/messages/ui/bd;

    invoke-direct {v0}, Lcom/viber/voip/messages/ui/bd;-><init>()V

    .line 256
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/viber/voip/messages/ui/bd;->e:Ljava/lang/ref/WeakReference;

    .line 258
    :cond_0
    monitor-exit v1

    return-object v0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v0, Lcom/viber/voip/messages/ui/bf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/viber/voip/messages/ui/bf;-><init>(Ljava/lang/String;Ljava/lang/Character;Lcom/viber/voip/messages/ui/be;)V

    .line 50
    sget-object v1, Lcom/viber/voip/messages/ui/bd;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget v1, Lcom/viber/voip/messages/ui/bd;->n:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sput v1, Lcom/viber/voip/messages/ui/bd;->n:I

    .line 54
    :cond_0
    return-object v0
.end method

.method static synthetic h()Ljava/util/Map;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/viber/voip/messages/ui/bd;->j:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic i()Ljava/util/Map;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/viber/voip/messages/ui/bd;->k:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic j()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/viber/voip/messages/ui/bd;->h:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic k()Ljava/util/Map;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/viber/voip/messages/ui/bd;->i:Ljava/util/Map;

    return-object v0
.end method

.method private static l()V
    .locals 2

    .prologue
    .line 128
    const-string/jumbo v0, "(smiley)"

    const/16 v1, 0x7b2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f60a

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f604

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f603

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f600

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe056

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe415

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe414

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, "(:"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ":)"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ":-)"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, "(-:"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    .line 129
    const-string/jumbo v0, "(sad)"

    const/16 v1, 0x7b3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f622

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe413

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ":("

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, "):"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ":-("

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ")-:"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ">:["

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    .line 130
    const-string/jumbo v0, "(wink)"

    const/16 v1, 0x7b4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f609

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe405

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ";)"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, "(;"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ";-)"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, "(-;"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    .line 131
    const-string/jumbo v0, "(angry)"

    const/16 v1, 0x7b5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f621

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe416

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ":-||"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ":@"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    .line 132
    const-string/jumbo v0, "(inlove)"

    const/16 v1, 0x7b6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f60d

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe106

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 134
    const-string/jumbo v0, "(yummi)"

    const/16 v1, 0x7b7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f61c

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f61d

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f61b

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f60b

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe409

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ":P"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ":-P"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    .line 135
    const-string/jumbo v0, "(laugh)"

    const/16 v1, 0x7b8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 136
    const-string/jumbo v0, "(surprised)"

    const/16 v1, 0x7b9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f627

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe40d

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ":-O"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, "O-:"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    .line 137
    const-string/jumbo v0, "(moa)"

    const/16 v1, 0x7ba

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f618

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f61a

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f617

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f619

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe418

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ":*"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ":-*"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, "*-:"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, "*:"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    .line 138
    const-string/jumbo v0, "(happy)"

    const/16 v1, 0x7bb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f606

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const/16 v1, 0x263a

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe057

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 140
    const-string/jumbo v0, "(cry)"

    const/16 v1, 0x7bc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f62d

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe411

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ":\'("

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ":\'-("

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ")-\':"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ")\':"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    .line 141
    const-string/jumbo v0, "(sick)"

    const/16 v1, 0x7bd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f637

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe40c

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 142
    const-string/jumbo v0, "(shy)"

    const/16 v1, 0x7be

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 143
    const-string/jumbo v0, "(teeth)"

    const/16 v1, 0x7bf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f601

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe404

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ":D"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, ":-D"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    .line 144
    const-string/jumbo v0, "(tongue)"

    const/16 v1, 0x7c0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 146
    const-string/jumbo v0, "(money)"

    const/16 v1, 0x7c1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 147
    const-string/jumbo v0, "(mad)"

    const/16 v1, 0x7c2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f620

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe059

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 148
    const-string/jumbo v0, "(flirt)"

    const/16 v1, 0x7c3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 149
    const-string/jumbo v0, "(crazy)"

    const/16 v1, 0x7c4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 150
    const-string/jumbo v0, "(confused)"

    const/16 v1, 0x7c5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 152
    const-string/jumbo v0, "(depressed)"

    const/16 v1, 0x7f9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f614

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f623

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f61e

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe403

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe406

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe058

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 153
    const-string/jumbo v0, "(scream)"

    const/16 v1, 0x7fc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 154
    const-string/jumbo v0, "(nerd)"

    const/16 v1, 0x7fa

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 155
    const-string/jumbo v0, "(not_sure)"

    const/16 v1, 0x7fb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f615

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 156
    const-string/jumbo v0, "(cool)"

    const/16 v1, 0x7f8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f60e

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 158
    const-string/jumbo v0, "(devil)"

    const/16 v1, 0x7c6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, "3:-)"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, "3:)"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    .line 159
    const-string/jumbo v0, "(angel)"

    const/16 v1, 0x7c7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, "0:-)"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    .line 160
    const-string/jumbo v0, "(heart)"

    const/16 v1, 0x7c8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const/16 v1, 0x2764

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe022

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, "<3"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    .line 161
    const-string/jumbo v0, "(purple_heart)"

    const/16 v1, 0x7c9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f49c

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe32d

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 162
    const-string/jumbo v0, "(heart_break)"

    const/16 v1, 0x7ca

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f494

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe023

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 164
    const-string/jumbo v0, "(V)"

    const/16 v1, 0x7cb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const/16 v1, 0x270c

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe011

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 165
    const-string/jumbo v0, "(unlike)"

    const/16 v1, 0x7cc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f44e

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe421

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 166
    const-string/jumbo v0, "(like)"

    const/16 v1, 0x7cd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f44d

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe00e

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 167
    const-string/jumbo v0, "(!)"

    const/16 v1, 0x7ce

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, "exclamation"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->b(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    .line 168
    const-string/jumbo v0, "(Q)"

    const/16 v1, 0x7cf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 170
    const-string/jumbo v0, "(kiss)"

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f48b

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe003

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 171
    const-string/jumbo v0, "(ice_cream)"

    const/16 v1, 0x7d1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f366

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe33a

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 172
    const-string/jumbo v0, "(cupcake)"

    const/16 v1, 0x7d2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 173
    const-string/jumbo v0, "(burger)"

    const/16 v1, 0x7d3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f354

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe120

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 174
    const-string/jumbo v0, "(pizza)"

    const/16 v1, 0x7d4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f355

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 176
    const-string/jumbo v0, "(wine)"

    const/16 v1, 0x7d5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f377

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe044

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 177
    const-string/jumbo v0, "(beer)"

    const/16 v1, 0x7d6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f37a

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe047

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 178
    const-string/jumbo v0, "(soda)"

    const/16 v1, 0x7d7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 179
    const-string/jumbo v0, "(coffee)"

    const/16 v1, 0x7d8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe045

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const/16 v1, 0x2615

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 180
    const-string/jumbo v0, "(popcorn)"

    const/16 v1, 0x7d9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 182
    const-string/jumbo v0, "(poo)"

    const/16 v1, 0x7da

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f4a9

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe05a

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 183
    const-string/jumbo v0, "(cigarette)"

    const/16 v1, 0x7db

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 184
    const-string/jumbo v0, "($)"

    const/16 v1, 0x7dc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const-string/jumbo v1, "dollar"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->b(Lcom/viber/voip/messages/ui/bf;Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f4b2

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe12f

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 185
    const-string/jumbo v0, "(car)"

    const/16 v1, 0x7dd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f698

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 186
    const-string/jumbo v0, "(airplane)"

    const/16 v1, 0x7de

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const/16 v1, 0x2708

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 188
    const-string/jumbo v0, "(sun)"

    const/16 v1, 0x7df

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 189
    const-string/jumbo v0, "(moon)"

    const/16 v1, 0x7e0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 190
    const-string/jumbo v0, "(rain)"

    const/16 v1, 0x7e1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 191
    const-string/jumbo v0, "(cloud)"

    const/16 v1, 0x7e2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 192
    const-string/jumbo v0, "(zzz)"

    const/16 v1, 0x7e3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f4a4

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe13c

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 194
    const-string/jumbo v0, "(skull)"

    const/16 v1, 0x7e4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 195
    const-string/jumbo v0, "(fire)"

    const/16 v1, 0x7e5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f525

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe11d

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 196
    const-string/jumbo v0, "(music)"

    const/16 v1, 0x7e6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f3b5

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe03e

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 197
    const-string/jumbo v0, "(flower)"

    const/16 v1, 0x7e7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 198
    const-string/jumbo v0, "(christmas_tree)"

    const/16 v1, 0x7e8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 200
    const-string/jumbo v0, "(monkey)"

    const/16 v1, 0x7ff

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 201
    const-string/jumbo v0, "(chick)"

    const/16 v1, 0x804

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 202
    const-string/jumbo v0, "(cat)"

    const/16 v1, 0x7eb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f408

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 203
    const-string/jumbo v0, "(dog)"

    const/16 v1, 0x7ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f415

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 204
    const-string/jumbo v0, "(pig)"

    const/16 v1, 0x7ed

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f416

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f437

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 206
    const-string/jumbo v0, "(koala)"

    const/16 v1, 0x801

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 207
    const-string/jumbo v0, "(kangaroo)"

    const/16 v1, 0x802

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 208
    const-string/jumbo v0, "(ladybug)"

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 209
    const-string/jumbo v0, "(panda)"

    const/16 v1, 0x7fe

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 210
    const-string/jumbo v0, "(sheep)"

    const/16 v1, 0x7fd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 212
    const-string/jumbo v0, "(soccer)"

    const/16 v1, 0x7ee

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const/16 v1, 0x26bd

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe018

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 213
    const-string/jumbo v0, "(football)"

    const/16 v1, 0x7ef

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f3c8

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe42b

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 214
    const-string/jumbo v0, "(basketball)"

    const/16 v1, 0x7f0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f3c0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe42a

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 215
    const-string/jumbo v0, "(baseball)"

    const/16 v1, 0x7f1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const/16 v1, 0x26be

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe016

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 216
    const-string/jumbo v0, "(relax)"

    const/16 v1, 0x7f2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 218
    const-string/jumbo v0, "(tape)"

    const/16 v1, 0x7f3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f4fc

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe129

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 219
    const-string/jumbo v0, "(phone)"

    const/16 v1, 0x7f4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f4f1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe00a

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 220
    const-string/jumbo v0, "(console)"

    const/16 v1, 0x7f5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 221
    const-string/jumbo v0, "(time)"

    const/16 v1, 0x7f6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f557

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe02b

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 222
    const-string/jumbo v0, "(TV)"

    const/16 v1, 0x7f7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f4fa

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe12a

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 224
    const-string/jumbo v0, "(light_bulb)"

    const/16 v1, 0x7e9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f4a1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe10f

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 225
    const-string/jumbo v0, "(run)"

    const/16 v1, 0x7ea

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f3c3

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe115

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 226
    const-string/jumbo v0, "(clap)"

    const/16 v1, 0x803

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f44f

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0xe41f

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 227
    const-string/jumbo v0, "(bicycle)"

    const/16 v1, 0x806

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 228
    const-string/jumbo v0, "(cards)"

    const/16 v1, 0x805

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 230
    const-string/jumbo v0, "(facepalm)"

    const/16 v1, 0x807

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    .line 231
    const-string/jumbo v0, "(sleeping)"

    const/16 v1, 0x808

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;Ljava/lang/Character;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v0

    const v1, 0x1f634

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;I)Lcom/viber/voip/messages/ui/bf;

    .line 248
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/ui/bf;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bd;->o:Lcom/viber/voip/util/o;

    invoke-static {p1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 306
    if-nez v0, :cond_0

    .line 307
    invoke-static {p1}, Lcom/viber/voip/messages/ui/bf;->b(Lcom/viber/voip/messages/ui/bf;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 309
    if-nez v0, :cond_1

    .line 310
    invoke-static {p1}, Lcom/viber/voip/messages/ui/bf;->c(Lcom/viber/voip/messages/ui/bf;)Ljava/lang/String;

    move-result-object v1

    .line 312
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 313
    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 321
    :cond_0
    :goto_0
    return-object v0

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/bd;->o:Lcom/viber/voip/util/o;

    invoke-static {p1}, Lcom/viber/voip/messages/ui/bf;->a(Lcom/viber/voip/messages/ui/bf;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/util/o;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(I)Lcom/viber/voip/messages/ui/bf;
    .locals 1
    .parameter

    .prologue
    .line 278
    sget-object v0, Lcom/viber/voip/messages/ui/bd;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/bf;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;
    .locals 2
    .parameter

    .prologue
    .line 275
    sget-object v0, Lcom/viber/voip/messages/ui/bd;->j:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/bf;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;
    .locals 1
    .parameter

    .prologue
    .line 281
    sget-object v0, Lcom/viber/voip/messages/ui/bd;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/bf;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/messages/ui/bf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    sget-object v0, Lcom/viber/voip/messages/ui/bd;->i:Ljava/util/Map;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 293
    sget v0, Lcom/viber/voip/messages/ui/bd;->l:I

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;
    .locals 1
    .parameter

    .prologue
    .line 285
    sget-object v0, Lcom/viber/voip/messages/ui/bd;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/bf;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/viber/voip/messages/ui/bd;->g:[Lcom/viber/voip/messages/ui/bf;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public e()[Lcom/viber/voip/messages/ui/bf;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/viber/voip/messages/ui/bd;->g:[Lcom/viber/voip/messages/ui/bf;

    return-object v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 325
    new-instance v0, Lcom/viber/voip/messages/ui/be;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/be;-><init>(Lcom/viber/voip/messages/ui/bd;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/be;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 332
    return-void
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public g()V
    .locals 7

    .prologue
    .line 336
    sget-object v2, Lcom/viber/voip/messages/ui/bd;->g:[Lcom/viber/voip/messages/ui/bf;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 337
    invoke-static {v0}, Lcom/viber/voip/messages/ui/bf;->c(Lcom/viber/voip/messages/ui/bf;)Ljava/lang/String;

    move-result-object v4

    .line 338
    invoke-static {v0}, Lcom/viber/voip/messages/ui/bf;->b(Lcom/viber/voip/messages/ui/bf;)Ljava/lang/String;

    move-result-object v0

    .line 339
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 342
    :try_start_0
    sget v5, Lcom/viber/voip/messages/ui/bd;->a:I

    sget v6, Lcom/viber/voip/messages/ui/bd;->a:I

    invoke-static {v4, v0, v5, v6}, Lcom/viber/voip/messages/extras/image/h;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 343
    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 350
    :cond_1
    return-void
.end method
