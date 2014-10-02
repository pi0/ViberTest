.class public Lcom/android/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/android/a/a/d;

.field private c:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/a/a/b;->c:Landroid/os/HandlerThread;

    .line 999
    iget-object v0, p0, Lcom/android/a/a/b;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1000
    iget-object v0, p0, Lcom/android/a/a/b;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1002
    invoke-direct {p0, p1, v0}, Lcom/android/a/a/b;->a(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1003
    return-void
.end method

.method static synthetic a(Lcom/android/a/a/b;)Landroid/os/HandlerThread;
    .locals 1
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/a/a/b;->c:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 988
    iput-object p1, p0, Lcom/android/a/a/b;->a:Ljava/lang/String;

    .line 989
    new-instance v0, Lcom/android/a/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/a/a/d;-><init>(Landroid/os/Looper;Lcom/android/a/a/b;Lcom/android/a/a/c;)V

    iput-object v0, p0, Lcom/android/a/a/b;->b:Lcom/android/a/a/d;

    .line 990
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/a/a/b;->b:Lcom/android/a/a/d;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 1117
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 1102
    return-void
.end method

.method protected final a(Lcom/android/a/a/a;)V
    .locals 2
    .parameter

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/a/a/b;->b:Lcom/android/a/a/d;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/a/a/d;->a(Lcom/android/a/a/d;Lcom/android/a/a/a;Lcom/android/a/a/a;)Lcom/android/a/a/g;

    .line 1043
    return-void
.end method

.method protected final a(Lcom/android/a/a/a;Lcom/android/a/a/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/a/a/b;->b:Lcom/android/a/a/d;

    invoke-static {v0, p1, p2}, Lcom/android/a/a/d;->a(Lcom/android/a/a/d;Lcom/android/a/a/a;Lcom/android/a/a/a;)Lcom/android/a/a/g;

    .line 1021
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 1124
    return-void
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/a/a/b;->b:Lcom/android/a/a/d;

    invoke-virtual {p0, p1}, Lcom/android/a/a/b;->a(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/a/a/d;->sendMessage(Landroid/os/Message;)Z

    .line 1208
    return-void
.end method

.method protected b(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 1109
    return-void
.end method

.method protected final b(Lcom/android/a/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/a/a/b;->b:Lcom/android/a/a/d;

    invoke-static {v0, p1}, Lcom/android/a/a/d;->a(Lcom/android/a/a/d;Lcom/android/a/a/a;)V

    .line 1053
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/a/a/b;->b:Lcom/android/a/a/d;

    invoke-static {v0}, Lcom/android/a/a/d;->b(Lcom/android/a/a/d;)V

    .line 1310
    return-void
.end method

.method protected final c(Lcom/android/a/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/a/a/b;->b:Lcom/android/a/a/d;

    invoke-static {v0, p1}, Lcom/android/a/a/d;->b(Lcom/android/a/a/d;Lcom/android/a/a/a;)V

    .line 1065
    return-void
.end method
