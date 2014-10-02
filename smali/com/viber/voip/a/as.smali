.class public Lcom/viber/voip/a/as;
.super Lcom/viber/voip/a/g;
.source "SourceFile"


# instance fields
.field public d:Lcom/viber/voip/a/at;

.field private final e:Lcom/viber/voip/a/c;

.field private final f:Lcom/viber/voip/a/c;

.field private final g:Lcom/viber/voip/a/c;

.field private final h:Lcom/viber/voip/a/c;

.field private final i:Lcom/viber/voip/a/c;

.field private final j:Lcom/viber/voip/a/c;

.field private final k:Lcom/viber/voip/a/c;

.field private final l:Lcom/viber/voip/a/c;

.field private final m:Lcom/viber/voip/a/c;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    const-string/jumbo v0, "Viber_out"

    invoke-direct {p0, v0, v2}, Lcom/viber/voip/a/g;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 275
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "VO_Calling"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/as;->e:Lcom/viber/voip/a/c;

    .line 276
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "VO_Ringing"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/as;->f:Lcom/viber/voip/a/c;

    .line 277
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "VO_Ongoing"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/as;->g:Lcom/viber/voip/a/c;

    .line 278
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "VO_Hold"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/as;->h:Lcom/viber/voip/a/c;

    .line 279
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "VO_Being held"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/as;->i:Lcom/viber/voip/a/c;

    .line 280
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "VO_Disconnected"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/as;->j:Lcom/viber/voip/a/c;

    .line 281
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "VO_Failed"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/as;->k:Lcom/viber/voip/a/c;

    .line 282
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "VO_Ended"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/as;->l:Lcom/viber/voip/a/c;

    .line 283
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "VO_Busy"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/as;->m:Lcom/viber/voip/a/c;

    .line 330
    new-instance v0, Lcom/viber/voip/a/at;

    invoke-direct {v0}, Lcom/viber/voip/a/at;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/a/as;->d:Lcom/viber/voip/a/at;

    .line 273
    return-void
.end method


# virtual methods
.method public c()Lcom/viber/voip/a/c;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/viber/voip/a/as;->e:Lcom/viber/voip/a/c;

    return-object v0
.end method

.method public d()Lcom/viber/voip/a/c;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/viber/voip/a/as;->f:Lcom/viber/voip/a/c;

    return-object v0
.end method

.method public e()Lcom/viber/voip/a/c;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/viber/voip/a/as;->g:Lcom/viber/voip/a/c;

    return-object v0
.end method

.method public f()Lcom/viber/voip/a/c;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/viber/voip/a/as;->h:Lcom/viber/voip/a/c;

    return-object v0
.end method

.method public g()Lcom/viber/voip/a/c;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/viber/voip/a/as;->i:Lcom/viber/voip/a/c;

    return-object v0
.end method

.method public h()Lcom/viber/voip/a/c;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/viber/voip/a/as;->j:Lcom/viber/voip/a/c;

    return-object v0
.end method

.method public i()Lcom/viber/voip/a/c;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/viber/voip/a/as;->k:Lcom/viber/voip/a/c;

    return-object v0
.end method

.method public j()Lcom/viber/voip/a/c;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/viber/voip/a/as;->l:Lcom/viber/voip/a/c;

    return-object v0
.end method

.method public k()Lcom/viber/voip/a/c;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/viber/voip/a/as;->m:Lcom/viber/voip/a/c;

    return-object v0
.end method
