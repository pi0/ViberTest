.class public Lcom/viber/voip/messages/controller/dk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/viber/voip/messages/controller/dm;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/viber/voip/sound/ISoundService;

.field private e:Landroid/net/Uri;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/viber/voip/messages/controller/dk;->a:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x15t 0x0t 0x6t 0x7ft
        0x11t 0x0t 0x6t 0x7ft
        0x12t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/dk;->c:Landroid/util/SparseArray;

    .line 34
    iput-object p1, p0, Lcom/viber/voip/messages/controller/dk;->b:Landroid/os/Handler;

    .line 36
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dk;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/viber/voip/messages/controller/dm;

    invoke-direct {v1, p0, v5, v4}, Lcom/viber/voip/messages/controller/dm;-><init>(Lcom/viber/voip/messages/controller/dk;ILcom/viber/voip/messages/controller/dl;)V

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dk;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/viber/voip/messages/controller/dm;

    invoke-direct {v1, p0, v2, v4}, Lcom/viber/voip/messages/controller/dm;-><init>(Lcom/viber/voip/messages/controller/dk;ILcom/viber/voip/messages/controller/dl;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dk;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/viber/voip/messages/controller/dm;

    invoke-direct {v1, p0, v3, v4}, Lcom/viber/voip/messages/controller/dm;-><init>(Lcom/viber/voip/messages/controller/dk;ILcom/viber/voip/messages/controller/dl;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dk;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/viber/voip/messages/controller/dm;

    invoke-direct {v1, p0, v6, v4}, Lcom/viber/voip/messages/controller/dm;-><init>(Lcom/viber/voip/messages/controller/dk;ILcom/viber/voip/messages/controller/dl;)V

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dk;->c:Landroid/util/SparseArray;

    const/4 v1, 0x4

    new-instance v2, Lcom/viber/voip/messages/controller/dm;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3, v4}, Lcom/viber/voip/messages/controller/dm;-><init>(Lcom/viber/voip/messages/controller/dk;ILcom/viber/voip/messages/controller/dl;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 42
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/controller/dl;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/controller/dl;-><init>(Lcom/viber/voip/messages/controller/dk;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addReadyListener(Lcom/viber/jni/PhoneControllerReadyListener;)V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/dk;)Lcom/viber/voip/sound/ISoundService;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dk;->d:Lcom/viber/voip/sound/ISoundService;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/dk;Lcom/viber/voip/sound/ISoundService;)Lcom/viber/voip/sound/ISoundService;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/viber/voip/messages/controller/dk;->d:Lcom/viber/voip/sound/ISoundService;

    return-object p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/controller/dk;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dk;->e:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic b()[I
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/viber/voip/messages/controller/dk;->a:[I

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/controller/dk;)Z
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/viber/voip/messages/controller/dk;->f:Z

    return v0
.end method


# virtual methods
.method public a(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dk;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/controller/dm;

    .line 67
    if-eqz v0, :cond_0

    .line 68
    if-eqz p2, :cond_1

    .line 69
    invoke-static {v0}, Lcom/viber/voip/messages/controller/dm;->a(Lcom/viber/voip/messages/controller/dm;)V

    .line 70
    iget-object v1, p0, Lcom/viber/voip/messages/controller/dk;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71
    iget-object v1, p0, Lcom/viber/voip/messages/controller/dk;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/dm;->run()V

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/viber/voip/messages/controller/dk;->e:Landroid/net/Uri;

    .line 54
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/viber/voip/messages/controller/dk;->f:Z

    .line 58
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lcom/viber/voip/messages/controller/dk;->d:Lcom/viber/voip/sound/ISoundService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/dk;->d:Lcom/viber/voip/sound/ISoundService;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/dk;->d:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v2}, Lcom/viber/voip/sound/ISoundService;->stream_Notification()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/viber/voip/sound/ISoundService;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
