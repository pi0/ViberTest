.class public Lcom/viber/voip/calls/entities/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field private static final b:Ljava/lang/String;

.field private static c:[Ljava/lang/String;

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:I

.field private static p:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    const-class v0, Lcom/viber/voip/calls/entities/impl/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/calls/entities/impl/a;->b:Ljava/lang/String;

    .line 27
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "aggregate_hash"

    aput-object v1, v0, v4

    const-string/jumbo v1, "number"

    aput-object v1, v0, v5

    const-string/jumbo v1, "canonized_number"

    aput-object v1, v0, v6

    const-string/jumbo v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "looked"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "token"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "viber_call"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "call_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "end_reason"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "start_reason"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "viber_call_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/calls/entities/impl/a;->c:[Ljava/lang/String;

    .line 44
    sput v3, Lcom/viber/voip/calls/entities/impl/a;->a:I

    .line 45
    sput v4, Lcom/viber/voip/calls/entities/impl/a;->d:I

    .line 46
    sput v5, Lcom/viber/voip/calls/entities/impl/a;->e:I

    .line 47
    sput v6, Lcom/viber/voip/calls/entities/impl/a;->f:I

    .line 48
    sput v7, Lcom/viber/voip/calls/entities/impl/a;->g:I

    .line 49
    const/4 v0, 0x5

    sput v0, Lcom/viber/voip/calls/entities/impl/a;->h:I

    .line 50
    const/4 v0, 0x6

    sput v0, Lcom/viber/voip/calls/entities/impl/a;->i:I

    .line 51
    const/4 v0, 0x7

    sput v0, Lcom/viber/voip/calls/entities/impl/a;->j:I

    .line 52
    const/16 v0, 0x8

    sput v0, Lcom/viber/voip/calls/entities/impl/a;->k:I

    .line 53
    const/16 v0, 0x9

    sput v0, Lcom/viber/voip/calls/entities/impl/a;->l:I

    .line 54
    const/16 v0, 0xa

    sput v0, Lcom/viber/voip/calls/entities/impl/a;->m:I

    .line 55
    const/16 v0, 0xb

    sput v0, Lcom/viber/voip/calls/entities/impl/a;->n:I

    .line 56
    const/16 v0, 0xc

    sput v0, Lcom/viber/voip/calls/entities/impl/a;->o:I

    .line 57
    const/16 v0, 0xd

    sput v0, Lcom/viber/voip/calls/entities/impl/a;->p:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/viber/voip/calls/entities/impl/a;->d:I

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-static {p0}, Lcom/viber/voip/calls/entities/impl/a;->b(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/viber/voip/calls/entities/impl/a;->e:I

    return v0
.end method

.method private static b(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;)Landroid/content/ContentValues;
    .locals 7
    .parameter

    .prologue
    .line 60
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->getId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 62
    const-string/jumbo v0, "_id"

    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->j()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/16 v0, 0xa

    .line 66
    :goto_0
    const-string/jumbo v2, "aggregate_hash"

    const-string/jumbo v3, "%s_%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->f()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    const-string/jumbo v0, "number"

    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "canonized_number"

    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "date"

    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    const-string/jumbo v0, "duration"

    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    const-string/jumbo v0, "type"

    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string/jumbo v0, "looked"

    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->q()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 73
    const-string/jumbo v0, "token"

    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 74
    const-string/jumbo v0, "viber_call"

    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->k()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 75
    const-string/jumbo v0, "call_id"

    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    const-string/jumbo v0, "end_reason"

    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->s()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string/jumbo v0, "start_reason"

    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->r()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string/jumbo v0, "viber_call_type"

    invoke-virtual {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->v()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    return-object v1

    .line 64
    :cond_1
    const/16 v0, 0xb

    goto/16 :goto_0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/viber/voip/calls/entities/impl/a;->f:I

    return v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/viber/voip/calls/entities/impl/a;->g:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/viber/voip/calls/entities/impl/a;->h:I

    return v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/viber/voip/calls/entities/impl/a;->i:I

    return v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/viber/voip/calls/entities/impl/a;->j:I

    return v0
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/viber/voip/calls/entities/impl/a;->k:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/viber/voip/calls/entities/impl/a;->l:I

    return v0
.end method

.method static synthetic j()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/viber/voip/calls/entities/impl/a;->m:I

    return v0
.end method

.method static synthetic k()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/viber/voip/calls/entities/impl/a;->n:I

    return v0
.end method

.method static synthetic l()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/viber/voip/calls/entities/impl/a;->o:I

    return v0
.end method

.method static synthetic m()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/viber/voip/calls/entities/impl/a;->p:I

    return v0
.end method

.method static synthetic n()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/viber/voip/calls/entities/impl/a;->c:[Ljava/lang/String;

    return-object v0
.end method
