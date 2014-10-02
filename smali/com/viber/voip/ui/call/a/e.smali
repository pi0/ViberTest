.class public Lcom/viber/voip/ui/call/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ui/call/a/d;


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:J

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/ui/call/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:F

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, -0x1

    sput v0, Lcom/viber/voip/ui/call/a/e;->a:I

    .line 20
    const/4 v0, 0x1

    sput v0, Lcom/viber/voip/ui/call/a/e;->b:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    check-cast v0, [Lcom/viber/voip/ui/call/a/d;

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/ui/call/a/e;-><init>(J[Lcom/viber/voip/ui/call/a/d;)V

    .line 42
    return-void
.end method

.method public constructor <init>(JLcom/viber/voip/ui/call/a/d;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/viber/voip/ui/call/a/d;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/ui/call/a/e;-><init>(J[Lcom/viber/voip/ui/call/a/d;)V

    .line 46
    return-void
.end method

.method public constructor <init>(J[Lcom/viber/voip/ui/call/a/d;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/call/a/e;->d:Ljava/util/Set;

    .line 26
    sget v0, Lcom/viber/voip/ui/call/a/e;->b:I

    iput v0, p0, Lcom/viber/voip/ui/call/a/e;->f:I

    .line 27
    iput v1, p0, Lcom/viber/voip/ui/call/a/e;->g:I

    .line 28
    iput-boolean v1, p0, Lcom/viber/voip/ui/call/a/e;->h:Z

    .line 80
    iput-boolean v1, p0, Lcom/viber/voip/ui/call/a/e;->i:Z

    .line 34
    long-to-float v0, p1

    iput v0, p0, Lcom/viber/voip/ui/call/a/e;->e:F

    .line 35
    if-eqz p3, :cond_0

    .line 36
    iget-object v0, p0, Lcom/viber/voip/ui/call/a/e;->d:Ljava/util/Set;

    invoke-static {v0, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/ui/call/a/e;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 58
    return-void
.end method

.method public a(F)V
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/viber/voip/ui/call/a/e;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/call/a/d;

    .line 75
    invoke-interface {v0, p1}, Lcom/viber/voip/ui/call/a/d;->a(F)V

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput p1, p0, Lcom/viber/voip/ui/call/a/e;->f:I

    .line 67
    return-void
.end method

.method public a(J)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v8, 0x3f80

    .line 86
    sget v0, Lcom/viber/voip/ui/call/a/e;->a:I

    iget v3, p0, Lcom/viber/voip/ui/call/a/e;->f:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/viber/voip/ui/call/a/e;->f:I

    iget v3, p0, Lcom/viber/voip/ui/call/a/e;->g:I

    if-le v0, v3, :cond_4

    :cond_0
    move v0, v2

    .line 87
    :goto_0
    iget-wide v3, p0, Lcom/viber/voip/ui/call/a/e;->c:J

    sub-long v3, p1, v3

    long-to-float v3, v3

    iget v4, p0, Lcom/viber/voip/ui/call/a/e;->e:F

    div-float/2addr v3, v4

    .line 88
    if-eqz v0, :cond_6

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/viber/voip/ui/call/a/e;->c:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    cmpl-float v0, v3, v8

    if-lez v0, :cond_6

    .line 89
    :cond_1
    iput-wide p1, p0, Lcom/viber/voip/ui/call/a/e;->c:J

    .line 90
    const/4 v0, 0x0

    .line 91
    iget v3, p0, Lcom/viber/voip/ui/call/a/e;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/viber/voip/ui/call/a/e;->g:I

    .line 92
    iput-boolean v1, p0, Lcom/viber/voip/ui/call/a/e;->i:Z

    .line 95
    :goto_1
    cmpg-float v1, v0, v8

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/viber/voip/ui/call/a/e;->i:Z

    if-nez v1, :cond_5

    .line 96
    :cond_2
    iget-boolean v1, p0, Lcom/viber/voip/ui/call/a/e;->h:Z

    if-eqz v1, :cond_3

    .line 97
    sub-float v0, v8, v0

    .line 99
    :cond_3
    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/call/a/e;->a(F)V

    .line 104
    :goto_2
    return-void

    :cond_4
    move v0, v1

    .line 86
    goto :goto_0

    .line 101
    :cond_5
    iput-boolean v2, p0, Lcom/viber/voip/ui/call/a/e;->i:Z

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method public a(Lcom/viber/voip/ui/call/a/d;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/ui/call/a/e;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/ui/call/a/e;->g:I

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/ui/call/a/e;->c:J

    .line 110
    iget-object v0, p0, Lcom/viber/voip/ui/call/a/e;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/call/a/d;

    .line 111
    invoke-interface {v0}, Lcom/viber/voip/ui/call/a/d;->c()V

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/viber/voip/ui/call/a/e;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/call/a/d;

    .line 118
    invoke-interface {v0}, Lcom/viber/voip/ui/call/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
