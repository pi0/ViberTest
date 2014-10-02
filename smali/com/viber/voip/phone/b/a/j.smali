.class public Lcom/viber/voip/phone/b/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:[I

.field private c:Lcom/viber/voip/util/fr;

.field private volatile d:I

.field private e:Landroid/widget/TextView;

.field private final f:[I

.field private g:Lcom/viber/jni/dialer/DialerController;

.field private h:Lcom/viber/voip/phone/call/a;


# direct methods
.method public constructor <init>(Lcom/viber/voip/phone/call/a;Lcom/viber/jni/dialer/DialerController;Landroid/widget/TextView;[I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/viber/voip/phone/b/a/k;

    invoke-direct {v0, p0}, Lcom/viber/voip/phone/b/a/k;-><init>(Lcom/viber/voip/phone/b/a/j;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/j;->a:Ljava/lang/Runnable;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/j;->b:[I

    .line 35
    new-instance v0, Lcom/viber/voip/util/fr;

    sget-object v1, Lcom/viber/voip/dk;->f:Lcom/viber/voip/dk;

    invoke-virtual {v1}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/b/a/j;->a:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/util/fr;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/j;->c:Lcom/viber/voip/util/fr;

    .line 45
    iput-object p1, p0, Lcom/viber/voip/phone/b/a/j;->h:Lcom/viber/voip/phone/call/a;

    .line 46
    iput-object p2, p0, Lcom/viber/voip/phone/b/a/j;->g:Lcom/viber/jni/dialer/DialerController;

    .line 47
    iput-object p3, p0, Lcom/viber/voip/phone/b/a/j;->e:Landroid/widget/TextView;

    .line 48
    iput-object p4, p0, Lcom/viber/voip/phone/b/a/j;->f:[I

    .line 49
    return-void

    .line 33
    :array_0
    .array-data 0x4
        0x71t 0x0t 0x9t 0x7ft
        0x72t 0x0t 0x9t 0x7ft
        0x73t 0x0t 0x9t 0x7ft
        0x73t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method private a(I)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/j;->h:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/phone/b/a/j;->h:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x3

    .line 77
    :goto_0
    return v0

    .line 69
    :cond_0
    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 70
    const/4 v0, 0x2

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x7

    if-ge p1, v0, :cond_2

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/phone/b/a/j;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput p1, p0, Lcom/viber/voip/phone/b/a/j;->d:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/phone/b/a/j;)Lcom/viber/jni/dialer/DialerController;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/j;->g:Lcom/viber/jni/dialer/DialerController;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/phone/b/a/j;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/b/a/j;->a(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/j;->c:Lcom/viber/voip/util/fr;

    invoke-virtual {v0}, Lcom/viber/voip/util/fr;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/j;->c:Lcom/viber/voip/util/fr;

    invoke-virtual {v0}, Lcom/viber/voip/util/fr;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/j;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/j;->f:[I

    iget v2, p0, Lcom/viber/voip/phone/b/a/j;->d:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/viber/voip/phone/b/a/j;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/j;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/j;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/b/a/j;->b:[I

    iget v3, p0, Lcom/viber/voip/phone/b/a/j;->d:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    return-void
.end method
