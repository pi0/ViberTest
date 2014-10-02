.class public Lcom/viber/voip/phone/call/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field private b:I

.field private final c:Lcom/viber/voip/phone/call/l;

.field private final d:Lcom/viber/voip/phone/call/CallerInfo;

.field private e:Lcom/viber/voip/phone/call/n;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private j:I


# direct methods
.method public constructor <init>(Lcom/viber/voip/phone/call/CallerInfo;IZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    sget-object v1, Lcom/viber/voip/phone/call/l;->a:Lcom/viber/voip/phone/call/l;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/phone/call/k;-><init>(Lcom/viber/voip/phone/call/l;Lcom/viber/voip/phone/call/CallerInfo;IZZ)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/phone/call/CallerInfo;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 44
    sget-object v1, Lcom/viber/voip/phone/call/l;->b:Lcom/viber/voip/phone/call/l;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/phone/call/k;-><init>(Lcom/viber/voip/phone/call/l;Lcom/viber/voip/phone/call/CallerInfo;IZZ)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/phone/call/l;Lcom/viber/voip/phone/call/CallerInfo;IZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0xf00

    iput v0, p0, Lcom/viber/voip/phone/call/k;->b:I

    .line 32
    iput-boolean v1, p0, Lcom/viber/voip/phone/call/k;->g:Z

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/phone/call/k;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    const v0, 0x7fffffff

    iput v0, p0, Lcom/viber/voip/phone/call/k;->j:I

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The type argument is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    if-nez p2, :cond_1

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The callerInfo argument is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    iput-object p1, p0, Lcom/viber/voip/phone/call/k;->c:Lcom/viber/voip/phone/call/l;

    .line 76
    iput-object p2, p0, Lcom/viber/voip/phone/call/k;->d:Lcom/viber/voip/phone/call/CallerInfo;

    .line 77
    iput p3, p0, Lcom/viber/voip/phone/call/k;->f:I

    .line 78
    iput-boolean p4, p0, Lcom/viber/voip/phone/call/k;->g:Z

    .line 79
    iput-boolean p5, p0, Lcom/viber/voip/phone/call/k;->h:Z

    .line 80
    new-instance v0, Lcom/viber/voip/phone/call/n;

    invoke-direct {v0}, Lcom/viber/voip/phone/call/n;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/phone/call/k;->e:Lcom/viber/voip/phone/call/n;

    .line 81
    return-void
.end method

.method public static l()Lcom/viber/voip/a/au;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/viber/voip/a/a;->w:Lcom/viber/voip/a/au;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/viber/voip/phone/call/k;->f:I

    return v0
.end method

.method public a(I)I
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/viber/voip/phone/call/k;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    return v0
.end method

.method public b()Lcom/viber/voip/phone/call/l;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/phone/call/k;->c:Lcom/viber/voip/phone/call/l;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput p1, p0, Lcom/viber/voip/phone/call/k;->j:I

    .line 164
    return-void
.end method

.method public c()Lcom/viber/voip/phone/call/CallerInfo;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/viber/voip/phone/call/k;->d:Lcom/viber/voip/phone/call/CallerInfo;

    return-object v0
.end method

.method public d()Lcom/viber/voip/phone/call/n;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/phone/call/k;->e:Lcom/viber/voip/phone/call/n;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/k;->g:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/k;->h:Z

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/viber/voip/phone/call/k;->e:Lcom/viber/voip/phone/call/n;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    .line 118
    if-eqz v0, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/viber/voip/phone/call/k;->e:Lcom/viber/voip/phone/call/n;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 126
    iget-object v1, p0, Lcom/viber/voip/phone/call/k;->e:Lcom/viber/voip/phone/call/n;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v1

    .line 127
    iget v2, p0, Lcom/viber/voip/phone/call/k;->b:I

    shl-int v3, v0, v1

    and-int/2addr v2, v3

    if-gtz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 131
    iget v1, p0, Lcom/viber/voip/phone/call/k;->f:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Lcom/viber/voip/a/g;
    .locals 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/k;->h:Z

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/viber/voip/a/a;->k:Lcom/viber/voip/a/as;

    .line 142
    :goto_0
    return-object v0

    .line 137
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/viber/voip/phone/call/k;->f:I

    if-ne v0, v1, :cond_1

    .line 138
    sget-object v0, Lcom/viber/voip/a/a;->j:Lcom/viber/voip/a/ar;

    goto :goto_0

    .line 139
    :cond_1
    iget-boolean v0, p0, Lcom/viber/voip/phone/call/k;->a:Z

    if-eqz v0, :cond_2

    .line 140
    invoke-static {}, Lcom/viber/voip/phone/call/k;->l()Lcom/viber/voip/a/au;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_2
    sget-object v0, Lcom/viber/voip/a/a;->v:Lcom/viber/voip/a/g;

    goto :goto_0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/viber/voip/phone/call/k;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/viber/voip/phone/call/k;->m()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/viber/voip/phone/call/k;->j:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CallInfo [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/call/k;->c:Lcom/viber/voip/phone/call/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", callerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/call/k;->d:Lcom/viber/voip/phone/call/CallerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isTransfer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/phone/call/k;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isViberOut:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/phone/call/k;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isViberIn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/phone/call/k;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", inCallState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/call/k;->e:Lcom/viber/voip/phone/call/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
