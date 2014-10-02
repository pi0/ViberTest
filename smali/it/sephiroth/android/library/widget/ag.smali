.class Lit/sephiroth/android/library/widget/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/ag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lit/sephiroth/android/library/widget/ag;->e:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method static a(I)Lit/sephiroth/android/library/widget/ag;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 84
    const/4 v0, 0x2

    invoke-static {v0, p0, v1, v1}, Lit/sephiroth/android/library/widget/ag;->a(IIII)Lit/sephiroth/android/library/widget/ag;

    move-result-object v0

    return-object v0
.end method

.method static a(IIII)Lit/sephiroth/android/library/widget/ag;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-static {}, Lit/sephiroth/android/library/widget/ag;->d()Lit/sephiroth/android/library/widget/ag;

    move-result-object v0

    .line 110
    iput p0, v0, Lit/sephiroth/android/library/widget/ag;->d:I

    .line 111
    iput p1, v0, Lit/sephiroth/android/library/widget/ag;->a:I

    .line 112
    iput p2, v0, Lit/sephiroth/android/library/widget/ag;->b:I

    .line 113
    iput p3, v0, Lit/sephiroth/android/library/widget/ag;->c:I

    .line 114
    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lit/sephiroth/android/library/widget/ag;->a:I

    .line 70
    iput v0, p0, Lit/sephiroth/android/library/widget/ag;->b:I

    .line 71
    iput v0, p0, Lit/sephiroth/android/library/widget/ag;->c:I

    .line 72
    iput v0, p0, Lit/sephiroth/android/library/widget/ag;->d:I

    .line 73
    return-void
.end method

.method private static d()Lit/sephiroth/android/library/widget/ag;
    .locals 3

    .prologue
    .line 119
    sget-object v1, Lit/sephiroth/android/library/widget/ag;->e:Ljava/util/ArrayList;

    monitor-enter v1

    .line 120
    :try_start_0
    sget-object v0, Lit/sephiroth/android/library/widget/ag;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    sget-object v0, Lit/sephiroth/android/library/widget/ag;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/ag;

    .line 125
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-direct {v0}, Lit/sephiroth/android/library/widget/ag;->c()V

    .line 127
    :goto_0
    return-object v0

    .line 123
    :cond_0
    :try_start_1
    new-instance v0, Lit/sephiroth/android/library/widget/ag;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/ag;-><init>()V

    monitor-exit v1

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method a()J
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lit/sephiroth/android/library/widget/ag;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lit/sephiroth/android/library/widget/ag;->a:I

    iget v1, p0, Lit/sephiroth/android/library/widget/ag;->b:I

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    .line 80
    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/ag;->a:I

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 135
    sget-object v1, Lit/sephiroth/android/library/widget/ag;->e:Ljava/util/ArrayList;

    monitor-enter v1

    .line 136
    :try_start_0
    sget-object v0, Lit/sephiroth/android/library/widget/ag;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 137
    sget-object v0, Lit/sephiroth/android/library/widget/ag;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
