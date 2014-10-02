.class Lcom/android/a/a/d;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/Object;

.field private static final c:Landroid/os/Message;


# instance fields
.field private a:Z

.field private d:Landroid/os/Message;

.field private e:Lcom/android/a/a/h;

.field private f:Z

.field private g:[Lcom/android/a/a/g;

.field private h:I

.field private i:[Lcom/android/a/a/g;

.field private j:I

.field private k:Lcom/android/a/a/e;

.field private l:Lcom/android/a/a/f;

.field private m:Lcom/android/a/a/b;

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/a/a/a;",
            "Lcom/android/a/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/android/a/a/a;

.field private p:Lcom/android/a/a/a;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 446
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/a/a/d;->b:Ljava/lang/Object;

    .line 450
    const/4 v0, 0x0

    sput-object v0, Lcom/android/a/a/d;->c:Landroid/os/Message;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/a/a/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 905
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/a/a/d;->a:Z

    .line 456
    new-instance v0, Lcom/android/a/a/h;

    invoke-direct {v0}, Lcom/android/a/a/h;-><init>()V

    iput-object v0, p0, Lcom/android/a/a/d;->e:Lcom/android/a/a/h;

    .line 465
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/a/a/d;->h:I

    .line 474
    new-instance v0, Lcom/android/a/a/e;

    invoke-direct {v0, p0, v1}, Lcom/android/a/a/e;-><init>(Lcom/android/a/a/d;Lcom/android/a/a/c;)V

    iput-object v0, p0, Lcom/android/a/a/d;->k:Lcom/android/a/a/e;

    .line 477
    new-instance v0, Lcom/android/a/a/f;

    invoke-direct {v0, p0, v1}, Lcom/android/a/a/f;-><init>(Lcom/android/a/a/d;Lcom/android/a/a/c;)V

    iput-object v0, p0, Lcom/android/a/a/d;->l:Lcom/android/a/a/f;

    .line 508
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/a/a/d;->n:Ljava/util/HashMap;

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/a/a/d;->q:Ljava/util/ArrayList;

    .line 906
    iput-object p2, p0, Lcom/android/a/a/d;->m:Lcom/android/a/a/b;

    .line 908
    iget-object v0, p0, Lcom/android/a/a/d;->k:Lcom/android/a/a/e;

    invoke-direct {p0, v0, v1}, Lcom/android/a/a/d;->a(Lcom/android/a/a/a;Lcom/android/a/a/a;)Lcom/android/a/a/g;

    .line 909
    iget-object v0, p0, Lcom/android/a/a/d;->l:Lcom/android/a/a/f;

    invoke-direct {p0, v0, v1}, Lcom/android/a/a/d;->a(Lcom/android/a/a/a;Lcom/android/a/a/a;)Lcom/android/a/a/g;

    .line 910
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/a/a/b;Lcom/android/a/a/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 440
    invoke-direct {p0, p1, p2}, Lcom/android/a/a/d;-><init>(Landroid/os/Looper;Lcom/android/a/a/b;)V

    return-void
.end method

.method static synthetic a(Lcom/android/a/a/d;)Lcom/android/a/a/b;
    .locals 1
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/a/a/d;->m:Lcom/android/a/a/b;

    return-object v0
.end method

.method private final a(Lcom/android/a/a/a;)Lcom/android/a/a/g;
    .locals 4
    .parameter

    .prologue
    .line 809
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/a/a/d;->j:I

    .line 810
    iget-object v0, p0, Lcom/android/a/a/d;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/a/g;

    .line 812
    :cond_0
    iget-object v1, p0, Lcom/android/a/a/d;->i:[Lcom/android/a/a/g;

    iget v2, p0, Lcom/android/a/a/d;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/a/a/d;->j:I

    aput-object v0, v1, v2

    .line 813
    iget-object v0, v0, Lcom/android/a/a/g;->b:Lcom/android/a/a/g;

    .line 814
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/a/a/g;->c:Z

    if-eqz v1, :cond_0

    .line 816
    :cond_1
    iget-boolean v1, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v1, :cond_2

    .line 817
    const-string/jumbo v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/a/a/d;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",curStateInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_2
    return-object v0
.end method

.method private final a(Lcom/android/a/a/a;Lcom/android/a/a/a;)Lcom/android/a/a/g;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 868
    iget-boolean v0, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v0, :cond_0

    .line 869
    const-string/jumbo v1, "HierarchicalStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addStateInternal: E state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/a/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",parent="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_0
    if-eqz p2, :cond_6

    .line 874
    iget-object v0, p0, Lcom/android/a/a/d;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/a/g;

    .line 875
    if-nez v0, :cond_5

    .line 877
    invoke-direct {p0, p2, v2}, Lcom/android/a/a/d;->a(Lcom/android/a/a/a;Lcom/android/a/a/a;)Lcom/android/a/a/g;

    move-result-object v0

    move-object v1, v0

    .line 880
    :goto_1
    iget-object v0, p0, Lcom/android/a/a/d;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/a/g;

    .line 881
    if-nez v0, :cond_1

    .line 882
    new-instance v0, Lcom/android/a/a/g;

    invoke-direct {v0, p0, v2}, Lcom/android/a/a/g;-><init>(Lcom/android/a/a/d;Lcom/android/a/a/c;)V

    .line 883
    iget-object v2, p0, Lcom/android/a/a/d;->n:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    :cond_1
    iget-object v2, v0, Lcom/android/a/a/g;->b:Lcom/android/a/a/g;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/a/a/g;->b:Lcom/android/a/a/g;

    if-eq v2, v1, :cond_3

    .line 889
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "state already added"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :cond_2
    invoke-virtual {p2}, Lcom/android/a/a/a;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 891
    :cond_3
    iput-object p1, v0, Lcom/android/a/a/g;->a:Lcom/android/a/a/a;

    .line 892
    iput-object v1, v0, Lcom/android/a/a/g;->b:Lcom/android/a/a/g;

    .line 893
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/a/a/g;->c:Z

    .line 894
    iget-boolean v1, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addStateInternal: X stateInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_4
    return-object v0

    :cond_5
    move-object v1, v0

    goto :goto_1

    :cond_6
    move-object v1, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/a/a/d;Lcom/android/a/a/a;Lcom/android/a/a/a;)Lcom/android/a/a/g;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 440
    invoke-direct {p0, p1, p2}, Lcom/android/a/a/d;->a(Lcom/android/a/a/a;Lcom/android/a/a/a;)Lcom/android/a/a/g;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 581
    move-object v0, v1

    .line 582
    :goto_0
    iget-object v2, p0, Lcom/android/a/a/d;->p:Lcom/android/a/a/a;

    if-eqz v2, :cond_1

    .line 583
    iget-boolean v0, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HierarchicalStateMachine"

    const-string/jumbo v2, "handleMessage: new destination call exit"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/a/a/d;->p:Lcom/android/a/a/a;

    .line 590
    iput-object v1, p0, Lcom/android/a/a/d;->p:Lcom/android/a/a/a;

    .line 597
    invoke-direct {p0, v0}, Lcom/android/a/a/d;->a(Lcom/android/a/a/a;)Lcom/android/a/a/g;

    move-result-object v2

    .line 598
    invoke-direct {p0, v2}, Lcom/android/a/a/d;->a(Lcom/android/a/a/g;)V

    .line 599
    invoke-direct {p0}, Lcom/android/a/a/d;->d()I

    move-result v2

    .line 600
    invoke-direct {p0, v2}, Lcom/android/a/a/d;->a(I)V

    .line 609
    invoke-direct {p0}, Lcom/android/a/a/d;->c()V

    goto :goto_0

    .line 616
    :cond_1
    if-eqz v0, :cond_2

    .line 617
    iget-object v1, p0, Lcom/android/a/a/d;->l:Lcom/android/a/a/f;

    if-ne v0, v1, :cond_3

    .line 621
    iget-object v0, p0, Lcom/android/a/a/d;->m:Lcom/android/a/a/b;

    invoke-virtual {v0}, Lcom/android/a/a/b;->b()V

    .line 622
    iget-object v0, p0, Lcom/android/a/a/d;->m:Lcom/android/a/a/b;

    invoke-static {v0}, Lcom/android/a/a/b;->a(Lcom/android/a/a/b;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 624
    invoke-virtual {p0}, Lcom/android/a/a/d;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 635
    :cond_2
    :goto_1
    return-void

    .line 626
    :cond_3
    iget-object v1, p0, Lcom/android/a/a/d;->k:Lcom/android/a/a/e;

    if-ne v0, v1, :cond_2

    .line 632
    iget-object v0, p0, Lcom/android/a/a/d;->m:Lcom/android/a/a/b;

    invoke-virtual {v0}, Lcom/android/a/a/b;->a()V

    goto :goto_1
.end method

.method private final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 739
    :goto_0
    iget v0, p0, Lcom/android/a/a/d;->h:I

    if-gt p1, v0, :cond_1

    .line 740
    iget-boolean v0, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HierarchicalStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invokeEnterMethods: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/a/a/d;->g:[Lcom/android/a/a/g;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/a/a/g;->a:Lcom/android/a/a/a;

    invoke-virtual {v2}, Lcom/android/a/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/android/a/a/d;->g:[Lcom/android/a/a/g;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/a/a/g;->a:Lcom/android/a/a/a;

    invoke-virtual {v0}, Lcom/android/a/a/a;->a()V

    .line 742
    iget-object v0, p0, Lcom/android/a/a/d;->g:[Lcom/android/a/a/g;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/a/a/g;->c:Z

    .line 739
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 744
    :cond_1
    return-void
.end method

.method private final a(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 685
    iget-object v0, p0, Lcom/android/a/a/d;->g:[Lcom/android/a/a/g;

    iget v1, p0, Lcom/android/a/a/d;->h:I

    aget-object v0, v0, v1

    .line 686
    iget-boolean v1, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v1, :cond_0

    .line 687
    const-string/jumbo v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/a/a/g;->a:Lcom/android/a/a/a;

    invoke-virtual {v3}, Lcom/android/a/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/android/a/a/g;->a:Lcom/android/a/a/a;

    invoke-virtual {v1, p1}, Lcom/android/a/a/a;->a(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 693
    iget-object v0, v0, Lcom/android/a/a/g;->b:Lcom/android/a/a/g;

    .line 694
    if-nez v0, :cond_2

    .line 698
    iget-object v1, p0, Lcom/android/a/a/d;->m:Lcom/android/a/a/b;

    invoke-virtual {v1, p1}, Lcom/android/a/a/b;->a(Landroid/os/Message;)V

    .line 699
    invoke-direct {p0, p1}, Lcom/android/a/a/d;->b(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/android/a/a/d;->l:Lcom/android/a/a/f;

    invoke-direct {p0, v1}, Lcom/android/a/a/d;->c(Lcom/android/a/a/a;)V

    .line 712
    :cond_1
    if-eqz v0, :cond_3

    .line 713
    iget-object v1, p0, Lcom/android/a/a/d;->g:[Lcom/android/a/a/g;

    iget v2, p0, Lcom/android/a/a/d;->h:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/a/a/g;->a:Lcom/android/a/a/a;

    .line 714
    iget-object v2, p0, Lcom/android/a/a/d;->e:Lcom/android/a/a/h;

    iget-object v0, v0, Lcom/android/a/a/g;->a:Lcom/android/a/a/a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/a/a/h;->a(Landroid/os/Message;Lcom/android/a/a/a;Lcom/android/a/a/a;)V

    .line 718
    :goto_1
    return-void

    .line 704
    :cond_2
    iget-boolean v1, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v1, :cond_0

    .line 705
    const-string/jumbo v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/a/a/g;->a:Lcom/android/a/a/a;

    invoke-virtual {v3}, Lcom/android/a/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 716
    :cond_3
    iget-object v0, p0, Lcom/android/a/a/d;->e:Lcom/android/a/a/h;

    invoke-virtual {v0, p1, v4, v4}, Lcom/android/a/a/h;->a(Landroid/os/Message;Lcom/android/a/a/a;Lcom/android/a/a/a;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/a/a/d;Lcom/android/a/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/android/a/a/d;->b(Lcom/android/a/a/a;)V

    return-void
.end method

.method private final a(Lcom/android/a/a/g;)V
    .locals 4
    .parameter

    .prologue
    .line 725
    :goto_0
    iget v0, p0, Lcom/android/a/a/d;->h:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/a/a/d;->g:[Lcom/android/a/a/g;

    iget v1, p0, Lcom/android/a/a/d;->h:I

    aget-object v0, v0, v1

    if-eq v0, p1, :cond_1

    .line 727
    iget-object v0, p0, Lcom/android/a/a/d;->g:[Lcom/android/a/a/g;

    iget v1, p0, Lcom/android/a/a/d;->h:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/a/a/g;->a:Lcom/android/a/a/a;

    .line 728
    iget-boolean v1, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/a/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    invoke-virtual {v0}, Lcom/android/a/a/a;->b()V

    .line 730
    iget-object v0, p0, Lcom/android/a/a/d;->g:[Lcom/android/a/a/g;

    iget v1, p0, Lcom/android/a/a/d;->h:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/a/a/g;->c:Z

    .line 731
    iget v0, p0, Lcom/android/a/a/d;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/a/a/d;->h:I

    goto :goto_0

    .line 733
    :cond_1
    return-void
.end method

.method private final b()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 641
    iget-boolean v0, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HierarchicalStateMachine"

    const-string/jumbo v1, "completeConstruction: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/a/a/d;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/a/g;

    move-object v3, v0

    move v0, v2

    .line 650
    :goto_1
    if-eqz v3, :cond_1

    .line 651
    iget-object v3, v3, Lcom/android/a/a/g;->b:Lcom/android/a/a/g;

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 653
    :cond_1
    if-ge v1, v0, :cond_5

    :goto_2
    move v1, v0

    .line 656
    goto :goto_0

    .line 657
    :cond_2
    iget-boolean v0, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "HierarchicalStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "completeConstruction: maxDepth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_3
    new-array v0, v1, [Lcom/android/a/a/g;

    iput-object v0, p0, Lcom/android/a/a/d;->g:[Lcom/android/a/a/g;

    .line 660
    new-array v0, v1, [Lcom/android/a/a/g;

    iput-object v0, p0, Lcom/android/a/a/d;->i:[Lcom/android/a/a/g;

    .line 661
    invoke-direct {p0}, Lcom/android/a/a/d;->e()V

    .line 667
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/a/a/d;->f:Z

    .line 668
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/a/a/d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/a/a/d;->d:Landroid/os/Message;

    .line 669
    invoke-direct {p0, v2}, Lcom/android/a/a/d;->a(I)V

    .line 674
    invoke-direct {p0}, Lcom/android/a/a/d;->a()V

    .line 676
    iget-boolean v0, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "HierarchicalStateMachine"

    const-string/jumbo v1, "completeConstruction: X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private final b(Lcom/android/a/a/a;)V
    .locals 3
    .parameter

    .prologue
    .line 914
    iget-boolean v0, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HierarchicalStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInitialState: initialState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/a/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    iput-object p1, p0, Lcom/android/a/a/d;->o:Lcom/android/a/a/a;

    .line 916
    return-void
.end method

.method static synthetic b(Lcom/android/a/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/a/a/d;->b()V

    return-void
.end method

.method static synthetic b(Lcom/android/a/a/d;Lcom/android/a/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/android/a/a/d;->c(Lcom/android/a/a/a;)V

    return-void
.end method

.method private final b(Landroid/os/Message;)Z
    .locals 2
    .parameter

    .prologue
    .line 943
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/android/a/a/d;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final c()V
    .locals 5

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/a/a/d;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 757
    iget-object v0, p0, Lcom/android/a/a/d;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 758
    iget-boolean v2, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "HierarchicalStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/a/a/d;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 756
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/android/a/a/d;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 762
    return-void
.end method

.method private final c(Lcom/android/a/a/a;)V
    .locals 3
    .parameter

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HierarchicalStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StateMachine.transitionTo EX destState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/a/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_0
    iput-object p1, p0, Lcom/android/a/a/d;->p:Lcom/android/a/a/a;

    .line 922
    return-void
.end method

.method private final d()I
    .locals 6

    .prologue
    .line 772
    iget v0, p0, Lcom/android/a/a/d;->h:I

    add-int/lit8 v1, v0, 0x1

    .line 773
    iget v0, p0, Lcom/android/a/a/d;->j:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v0, v1

    .line 775
    :goto_0
    if-ltz v2, :cond_1

    .line 776
    iget-boolean v3, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "HierarchicalStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_0
    iget-object v3, p0, Lcom/android/a/a/d;->g:[Lcom/android/a/a/g;

    iget-object v4, p0, Lcom/android/a/a/d;->i:[Lcom/android/a/a/g;

    aget-object v4, v4, v2

    aput-object v4, v3, v0

    .line 778
    add-int/lit8 v0, v0, 0x1

    .line 779
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 782
    :cond_1
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/a/a/d;->h:I

    .line 783
    iget-boolean v0, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v0, :cond_2

    .line 784
    const-string/jumbo v0, "HierarchicalStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/a/a/d;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",startingIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",Top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/a/a/d;->g:[Lcom/android/a/a/g;

    iget v4, p0, Lcom/android/a/a/d;->h:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/a/a/g;->a:Lcom/android/a/a/a;

    invoke-virtual {v3}, Lcom/android/a/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_2
    return v1
.end method

.method private final e()V
    .locals 3

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v0, :cond_0

    .line 828
    const-string/jumbo v0, "HierarchicalStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/a/a/d;->o:Lcom/android/a/a/a;

    invoke-virtual {v2}, Lcom/android/a/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/android/a/a/d;->n:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/a/a/d;->o:Lcom/android/a/a/a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/a/g;

    .line 833
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/a/a/d;->j:I

    :goto_0
    if-eqz v0, :cond_1

    .line 834
    iget-object v1, p0, Lcom/android/a/a/d;->i:[Lcom/android/a/a/g;

    iget v2, p0, Lcom/android/a/a/d;->j:I

    aput-object v0, v1, v2

    .line 835
    iget-object v0, v0, Lcom/android/a/a/g;->b:Lcom/android/a/a/g;

    .line 833
    iget v1, p0, Lcom/android/a/a/d;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/a/a/d;->j:I

    goto :goto_0

    .line 839
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/a/a/d;->h:I

    .line 841
    invoke-direct {p0}, Lcom/android/a/a/d;->d()I

    .line 842
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HierarchicalStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: E msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_0
    iput-object p1, p0, Lcom/android/a/a/d;->d:Landroid/os/Message;

    .line 557
    iget-boolean v0, p0, Lcom/android/a/a/d;->f:Z

    if-nez v0, :cond_2

    .line 558
    const-string/jumbo v0, "HierarchicalStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The start method not called, ignore msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_1
    :goto_0
    return-void

    .line 566
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/a/a/d;->a(Landroid/os/Message;)V

    .line 567
    invoke-direct {p0}, Lcom/android/a/a/d;->a()V

    .line 569
    iget-boolean v0, p0, Lcom/android/a/a/d;->a:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "HierarchicalStateMachine"

    const-string/jumbo v1, "handleMessage: X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
