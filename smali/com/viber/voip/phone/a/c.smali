.class public Lcom/viber/voip/phone/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/phone/ac;


# instance fields
.field private a:Lcom/viber/voip/phone/PhoneActivity;

.field private b:Landroid/view/View;

.field private c:Lcom/viber/voip/phone/a/d;

.field private d:Lcom/viber/voip/phone/a/a;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/viber/voip/phone/a/c;->a:Lcom/viber/voip/phone/PhoneActivity;

    .line 33
    iput-object p1, p0, Lcom/viber/voip/phone/a/c;->b:Landroid/view/View;

    .line 34
    return-void
.end method

.method private declared-synchronized f()Lcom/viber/voip/phone/a/d;
    .locals 3

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/phone/a/c;->c:Lcom/viber/voip/phone/a/d;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/viber/voip/phone/a/d;

    iget-object v1, p0, Lcom/viber/voip/phone/a/c;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/viber/voip/phone/a/c;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/viber/voip/phone/a/d;-><init>(Lcom/viber/voip/phone/a/c;Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V

    iput-object v0, p0, Lcom/viber/voip/phone/a/c;->c:Lcom/viber/voip/phone/a/d;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/a/c;->c:Lcom/viber/voip/phone/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Lcom/viber/voip/phone/ab;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/viber/voip/phone/a/c;->f()Lcom/viber/voip/phone/a/d;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/viber/voip/phone/ab;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/viber/voip/phone/a/c;->f()Lcom/viber/voip/phone/a/d;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c()Lcom/viber/voip/phone/ab;
    .locals 3

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/phone/a/c;->d:Lcom/viber/voip/phone/a/a;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/viber/voip/phone/a/a;

    iget-object v1, p0, Lcom/viber/voip/phone/a/c;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/viber/voip/phone/a/c;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/phone/a/a;-><init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V

    iput-object v0, p0, Lcom/viber/voip/phone/a/c;->d:Lcom/viber/voip/phone/a/a;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/a/c;->d:Lcom/viber/voip/phone/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lcom/viber/voip/phone/ab;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/viber/voip/phone/a/c;->f()Lcom/viber/voip/phone/a/d;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 120
    const v0, 0x7f03003a

    return v0
.end method
