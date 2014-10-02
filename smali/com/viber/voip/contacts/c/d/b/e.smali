.class public Lcom/viber/voip/contacts/c/d/b/e;
.super Lcom/viber/voip/contacts/c/d/m;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String;

.field private static k:Lcom/viber/voip/contacts/c/d/b/e;


# instance fields
.field private l:Lcom/viber/voip/contacts/c/d/b/a;

.field private m:Lcom/viber/voip/contacts/c/f/b/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/viber/voip/contacts/c/d/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/d/b/e;->j:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 3
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/c/d/m;-><init>(Lcom/viber/voip/ViberApplication;)V

    .line 40
    new-instance v0, Lcom/viber/voip/contacts/c/d/b/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/b/e;->c:Lcom/viber/voip/ViberApplication;

    iget-object v2, p0, Lcom/viber/voip/contacts/c/d/b/e;->e:Lcom/viber/voip/contacts/c/d/aa;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/contacts/c/d/b/a;-><init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/contacts/c/d/aa;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/b/e;->l:Lcom/viber/voip/contacts/c/d/b/a;

    .line 41
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/b/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/b/e;->c:Lcom/viber/voip/ViberApplication;

    invoke-direct {v0, v1, p0, p0}, Lcom/viber/voip/contacts/c/f/b/b/a;-><init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/contacts/c/f/b/q;Lcom/viber/voip/contacts/c/d/c;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/b/e;->m:Lcom/viber/voip/contacts/c/f/b/b/a;

    .line 43
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/d/b/e;->g()V

    .line 44
    return-void
.end method

.method public static a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/d/b;
    .locals 2
    .parameter

    .prologue
    .line 27
    sget-object v0, Lcom/viber/voip/contacts/c/d/b/e;->k:Lcom/viber/voip/contacts/c/d/b/e;

    if-nez v0, :cond_1

    sget-object v0, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 28
    const-class v1, Lcom/viber/voip/contacts/c/d/b/e;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/viber/voip/contacts/c/d/b/e;->k:Lcom/viber/voip/contacts/c/d/b/e;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/viber/voip/contacts/c/d/b/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/c/d/b/e;-><init>(Lcom/viber/voip/ViberApplication;)V

    sput-object v0, Lcom/viber/voip/contacts/c/d/b/e;->k:Lcom/viber/voip/contacts/c/d/b/e;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/viber/voip/contacts/c/d/b/e;->k:Lcom/viber/voip/contacts/c/d/b/e;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 89
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public c()Lcom/viber/voip/contacts/c/f/b/p;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/b/e;->m:Lcom/viber/voip/contacts/c/f/b/b/a;

    return-object v0
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method protected j()Lcom/viber/voip/contacts/c/d/a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/b/e;->l:Lcom/viber/voip/contacts/c/d/b/a;

    return-object v0
.end method

.method public o()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
