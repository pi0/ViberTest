.class public Lcom/viber/voip/a/ar;
.super Lcom/viber/voip/a/g;
.source "SourceFile"


# instance fields
.field private final d:Lcom/viber/voip/a/c;

.field private final e:Lcom/viber/voip/a/c;

.field private final f:Lcom/viber/voip/a/c;

.field private final g:Lcom/viber/voip/a/c;

.field private final h:Lcom/viber/voip/a/c;

.field private final i:Lcom/viber/voip/a/c;

.field private final j:Lcom/viber/voip/a/c;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 360
    const-string/jumbo v0, "Viber_in"

    invoke-direct {p0, v0, v2}, Lcom/viber/voip/a/g;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 363
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "VI_Ongoing"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/ar;->d:Lcom/viber/voip/a/c;

    .line 364
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "VI_Hold"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/ar;->e:Lcom/viber/voip/a/c;

    .line 365
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "VI_Being held"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/ar;->f:Lcom/viber/voip/a/c;

    .line 366
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "VI_Disconnected"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/ar;->g:Lcom/viber/voip/a/c;

    .line 367
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "VI_Failed"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/ar;->h:Lcom/viber/voip/a/c;

    .line 368
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "VI_Ended"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/ar;->i:Lcom/viber/voip/a/c;

    .line 369
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "VI_Busy"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/ar;->j:Lcom/viber/voip/a/c;

    .line 361
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 408
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Calls"

    const-string/jumbo v2, "Incoming_Viber_in_call"

    move-object v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public e()Lcom/viber/voip/a/c;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/viber/voip/a/ar;->d:Lcom/viber/voip/a/c;

    return-object v0
.end method

.method public f()Lcom/viber/voip/a/c;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/viber/voip/a/ar;->e:Lcom/viber/voip/a/c;

    return-object v0
.end method

.method public g()Lcom/viber/voip/a/c;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/viber/voip/a/ar;->f:Lcom/viber/voip/a/c;

    return-object v0
.end method

.method public h()Lcom/viber/voip/a/c;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/viber/voip/a/ar;->g:Lcom/viber/voip/a/c;

    return-object v0
.end method

.method public i()Lcom/viber/voip/a/c;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/viber/voip/a/ar;->h:Lcom/viber/voip/a/c;

    return-object v0
.end method

.method public j()Lcom/viber/voip/a/c;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/viber/voip/a/ar;->i:Lcom/viber/voip/a/c;

    return-object v0
.end method

.method public k()Lcom/viber/voip/a/c;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/viber/voip/a/ar;->j:Lcom/viber/voip/a/c;

    return-object v0
.end method
