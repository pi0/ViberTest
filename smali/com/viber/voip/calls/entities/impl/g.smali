.class public Lcom/viber/voip/calls/entities/impl/g;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"


# static fields
.field public static final a:Lcom/viber/voip/messages/orm/creator/Creator;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:I

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/viber/voip/calls/entities/impl/h;

    invoke-direct {v0}, Lcom/viber/voip/calls/entities/impl/h;-><init>()V

    sput-object v0, Lcom/viber/voip/calls/entities/impl/g;->a:Lcom/viber/voip/messages/orm/creator/Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/viber/voip/calls/entities/impl/g;->f:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/viber/voip/calls/entities/impl/g;->c:I

    .line 50
    return-void
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/viber/voip/calls/entities/impl/g;->f:J

    .line 33
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/viber/voip/calls/entities/impl/g;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/viber/voip/calls/entities/impl/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/viber/voip/calls/entities/impl/g;->h:I

    .line 74
    return-void
.end method

.method public b(J)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/viber/voip/calls/entities/impl/g;->g:J

    .line 66
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/viber/voip/calls/entities/impl/g;->d:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/viber/voip/calls/entities/impl/g;->c:I

    return v0
.end method

.method public c(J)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/viber/voip/calls/entities/impl/g;->j:J

    .line 107
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/viber/voip/calls/entities/impl/g;->i:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public compareTo(Lcom/viber/voip/messages/orm/entity/Entity;)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 121
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/viber/voip/calls/entities/impl/g;

    if-eqz v1, :cond_0

    .line 122
    check-cast p1, Lcom/viber/voip/calls/entities/impl/g;

    .line 123
    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/g;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/g;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/g;->getId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 124
    const/4 v0, 0x0

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/g;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/g;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/g;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/g;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    check-cast p1, Lcom/viber/voip/messages/orm/entity/Entity;

    invoke-virtual {p0, p1}, Lcom/viber/voip/calls/entities/impl/g;->compareTo(Lcom/viber/voip/messages/orm/entity/Entity;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/calls/entities/impl/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/viber/voip/calls/entities/impl/g;->e:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/viber/voip/calls/entities/impl/g;->g:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/viber/voip/calls/entities/impl/g;->h:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/calls/entities/impl/g;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/viber/voip/calls/entities/impl/g;->a:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentValues(Lcom/viber/voip/messages/orm/entity/Entity;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Lcom/viber/voip/messages/orm/creator/Creator;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/viber/voip/calls/entities/impl/g;->a:Lcom/viber/voip/messages/orm/creator/Creator;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/viber/voip/calls/entities/impl/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/viber/voip/calls/entities/impl/g;->j:J

    return-wide v0
.end method
