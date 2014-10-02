.class public Lcom/viber/voip/messages/controller/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/x;


# instance fields
.field private final a:Lcom/viber/voip/messages/controller/x;

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;Lcom/viber/voip/messages/controller/x;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p3, p0, Lcom/viber/voip/messages/controller/ak;->a:Lcom/viber/voip/messages/controller/x;

    .line 25
    iput-object p1, p0, Lcom/viber/voip/messages/controller/ak;->b:Landroid/os/Handler;

    .line 26
    iput-object p2, p0, Lcom/viber/voip/messages/controller/ak;->c:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/ak;)Lcom/viber/voip/messages/controller/x;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ak;->a:Lcom/viber/voip/messages/controller/x;

    return-object v0
.end method

.method private a(Lcom/viber/voip/messages/controller/bx;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ak;->b:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/al;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/controller/al;-><init>(Lcom/viber/voip/messages/controller/ak;Lcom/viber/voip/messages/controller/bx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/viber/voip/messages/controller/as;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/controller/as;-><init>(Lcom/viber/voip/messages/controller/ak;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 212
    return-void
.end method

.method public a(IJJJ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 449
    new-instance v0, Lcom/viber/voip/messages/controller/br;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/messages/controller/br;-><init>(Lcom/viber/voip/messages/controller/ak;IJJJ)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 455
    return-void
.end method

.method public a(ILjava/lang/String;JLjava/lang/String;IZLcom/viber/jni/PublicGroupInfo;Lcom/viber/voip/messages/controller/ad;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v0, Lcom/viber/voip/messages/controller/bt;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/viber/voip/messages/controller/bt;-><init>(Lcom/viber/voip/messages/controller/ak;ILjava/lang/String;JLjava/lang/String;IZLcom/viber/jni/PublicGroupInfo;Lcom/viber/voip/messages/controller/ad;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 93
    return-void
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 194
    new-instance v0, Lcom/viber/voip/messages/controller/ar;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/ar;-><init>(Lcom/viber/voip/messages/controller/ak;J)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 201
    return-void
.end method

.method public a(JI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 227
    new-instance v0, Lcom/viber/voip/messages/controller/au;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/au;-><init>(Lcom/viber/voip/messages/controller/ak;JI)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 234
    return-void
.end method

.method public a(JJJ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    new-instance v0, Lcom/viber/voip/messages/controller/bs;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/controller/bs;-><init>(Lcom/viber/voip/messages/controller/ak;JJJ)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 81
    return-void
.end method

.method public a(JLcom/viber/voip/messages/controller/aa;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 172
    new-instance v0, Lcom/viber/voip/messages/controller/ap;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/ap;-><init>(Lcom/viber/voip/messages/controller/ak;JLcom/viber/voip/messages/controller/aa;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 179
    return-void
.end method

.method public a(JLcom/viber/voip/messages/controller/ac;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v0, Lcom/viber/voip/messages/controller/bu;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/bu;-><init>(Lcom/viber/voip/messages/controller/ak;JLcom/viber/voip/messages/controller/ac;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 104
    return-void
.end method

.method public a(JLcom/viber/voip/messages/controller/ae;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 299
    new-instance v0, Lcom/viber/voip/messages/controller/ba;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/ba;-><init>(Lcom/viber/voip/messages/controller/ak;JLcom/viber/voip/messages/controller/ae;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 305
    return-void
.end method

.method public a(JLcom/viber/voip/messages/controller/af;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 439
    new-instance v0, Lcom/viber/voip/messages/controller/bq;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/bq;-><init>(Lcom/viber/voip/messages/controller/ak;JLcom/viber/voip/messages/controller/af;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 445
    return-void
.end method

.method public a(JLcom/viber/voip/messages/controller/ag;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 216
    new-instance v0, Lcom/viber/voip/messages/controller/at;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/at;-><init>(Lcom/viber/voip/messages/controller/ak;JLcom/viber/voip/messages/controller/ag;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 223
    return-void
.end method

.method public a(JLcom/viber/voip/messages/controller/y;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 319
    new-instance v0, Lcom/viber/voip/messages/controller/bc;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/bc;-><init>(Lcom/viber/voip/messages/controller/ak;JLcom/viber/voip/messages/controller/y;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 325
    return-void
.end method

.method public a(JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 279
    new-instance v0, Lcom/viber/voip/messages/controller/az;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/az;-><init>(Lcom/viber/voip/messages/controller/ak;JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 285
    return-void
.end method

.method public a(JLjava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    new-instance v0, Lcom/viber/voip/messages/controller/ax;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/controller/ax;-><init>(Lcom/viber/voip/messages/controller/ak;JLjava/lang/String;II)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 265
    return-void
.end method

.method public a(JZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 269
    new-instance v0, Lcom/viber/voip/messages/controller/ay;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/ay;-><init>(Lcom/viber/voip/messages/controller/ak;JZ)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 275
    return-void
.end method

.method public a(JZLcom/viber/voip/messages/controller/ai;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v0, Lcom/viber/voip/messages/controller/be;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/be;-><init>(Lcom/viber/voip/messages/controller/ak;JZLcom/viber/voip/messages/controller/ai;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 59
    return-void
.end method

.method public a(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    new-instance v0, Lcom/viber/voip/messages/controller/ao;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/ao;-><init>(Lcom/viber/voip/messages/controller/ak;Lcom/viber/voip/calls/entities/impl/CallEntityImpl;I)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 157
    return-void
.end method

.method public a(Lcom/viber/voip/messages/controller/ac;)V
    .locals 1
    .parameter

    .prologue
    .line 419
    new-instance v0, Lcom/viber/voip/messages/controller/bn;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/controller/bn;-><init>(Lcom/viber/voip/messages/controller/ak;Lcom/viber/voip/messages/controller/ac;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 425
    return-void
.end method

.method public a(Lcom/viber/voip/messages/controller/aj;)V
    .locals 1
    .parameter

    .prologue
    .line 369
    new-instance v0, Lcom/viber/voip/messages/controller/bi;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/controller/bi;-><init>(Lcom/viber/voip/messages/controller/ak;Lcom/viber/voip/messages/controller/aj;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 375
    return-void
.end method

.method public a(Lcom/viber/voip/messages/controller/c/ao;Lcom/viber/voip/messages/controller/ah;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 359
    new-instance v0, Lcom/viber/voip/messages/controller/bh;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/bh;-><init>(Lcom/viber/voip/messages/controller/ak;Lcom/viber/voip/messages/controller/c/ao;Lcom/viber/voip/messages/controller/ah;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 365
    return-void
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ak;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/am;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/controller/am;-><init>(Lcom/viber/voip/messages/controller/ak;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    new-instance v0, Lcom/viber/voip/messages/controller/bv;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/controller/bv;-><init>(Lcom/viber/voip/messages/controller/ak;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 115
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/viber/voip/messages/controller/ai;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 429
    new-instance v0, Lcom/viber/voip/messages/controller/bo;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/bo;-><init>(Lcom/viber/voip/messages/controller/ak;Ljava/lang/String;Lcom/viber/voip/messages/controller/ai;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 435
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZLcom/viber/voip/messages/controller/ab;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    new-instance v0, Lcom/viber/voip/messages/controller/bd;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/bd;-><init>(Lcom/viber/voip/messages/controller/ak;Ljava/lang/String;Ljava/lang/String;ZLcom/viber/voip/messages/controller/ab;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 335
    return-void
.end method

.method public a(Ljava/util/Set;Lcom/viber/voip/messages/controller/aa;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/viber/voip/messages/controller/aa;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/viber/voip/messages/controller/av;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/av;-><init>(Lcom/viber/voip/messages/controller/ak;Ljava/util/Set;Lcom/viber/voip/messages/controller/aa;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 48
    return-void
.end method

.method public a(Ljava/util/Set;ZLcom/viber/voip/messages/controller/aa;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z",
            "Lcom/viber/voip/messages/controller/aa;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lcom/viber/voip/messages/controller/aq;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/aq;-><init>(Lcom/viber/voip/messages/controller/ak;Ljava/util/Set;ZLcom/viber/voip/messages/controller/aa;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 190
    return-void
.end method

.method public a(Ljava/util/Set;ZLcom/viber/voip/messages/controller/ai;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z",
            "Lcom/viber/voip/messages/controller/ai;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/viber/voip/messages/controller/bp;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/bp;-><init>(Lcom/viber/voip/messages/controller/ak;Ljava/util/Set;ZLcom/viber/voip/messages/controller/ai;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 70
    return-void
.end method

.method public a(ZLcom/viber/voip/messages/controller/z;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 309
    new-instance v0, Lcom/viber/voip/messages/controller/bb;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/bb;-><init>(Lcom/viber/voip/messages/controller/ak;ZLcom/viber/voip/messages/controller/z;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 315
    return-void
.end method

.method public a([Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ak;->c:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/an;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/controller/an;-><init>(Lcom/viber/voip/messages/controller/ak;[Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 379
    new-instance v0, Lcom/viber/voip/messages/controller/bj;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/controller/bj;-><init>(Lcom/viber/voip/messages/controller/ak;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 385
    return-void
.end method

.method public b(J)V
    .locals 1
    .parameter

    .prologue
    .line 339
    new-instance v0, Lcom/viber/voip/messages/controller/bf;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/bf;-><init>(Lcom/viber/voip/messages/controller/ak;J)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 345
    return-void
.end method

.method public b(JI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    new-instance v0, Lcom/viber/voip/messages/controller/aw;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/aw;-><init>(Lcom/viber/voip/messages/controller/ak;JI)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 245
    return-void
.end method

.method public b(JJJ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    new-instance v0, Lcom/viber/voip/messages/controller/bw;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/controller/bw;-><init>(Lcom/viber/voip/messages/controller/ak;JJJ)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 126
    return-void
.end method

.method public b(JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 349
    new-instance v0, Lcom/viber/voip/messages/controller/bg;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/bg;-><init>(Lcom/viber/voip/messages/controller/ak;JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 355
    return-void
.end method

.method public c(J)V
    .locals 1
    .parameter

    .prologue
    .line 389
    new-instance v0, Lcom/viber/voip/messages/controller/bk;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/bk;-><init>(Lcom/viber/voip/messages/controller/ak;J)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 395
    return-void
.end method

.method public c(JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 399
    new-instance v0, Lcom/viber/voip/messages/controller/bl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/bl;-><init>(Lcom/viber/voip/messages/controller/ak;JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 405
    return-void
.end method

.method public d(J)V
    .locals 1
    .parameter

    .prologue
    .line 409
    new-instance v0, Lcom/viber/voip/messages/controller/bm;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/bm;-><init>(Lcom/viber/voip/messages/controller/ak;J)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/bx;)V

    .line 415
    return-void
.end method
