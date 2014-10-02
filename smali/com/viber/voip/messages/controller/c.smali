.class public Lcom/viber/voip/messages/controller/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/GroupController;


# instance fields
.field private final a:Lcom/viber/voip/messages/controller/GroupController;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/viber/voip/messages/controller/GroupController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/viber/voip/messages/controller/c;->a:Lcom/viber/voip/messages/controller/GroupController;

    .line 18
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c;->b:Landroid/os/Handler;

    .line 19
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/c;)Lcom/viber/voip/messages/controller/GroupController;
    .locals 1
    .parameter

    .prologue
    .line 7
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c;->a:Lcom/viber/voip/messages/controller/GroupController;

    return-object v0
.end method

.method private a(Lcom/viber/voip/messages/controller/q;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c;->b:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/controller/d;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/controller/d;-><init>(Lcom/viber/voip/messages/controller/c;Lcom/viber/voip/messages/controller/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 29
    return-void
.end method


# virtual methods
.method public a(DDJJ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    new-instance v0, Lcom/viber/voip/messages/controller/f;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/viber/voip/messages/controller/f;-><init>(Lcom/viber/voip/messages/controller/c;DDJJ)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c;->a(Lcom/viber/voip/messages/controller/q;)V

    .line 140
    return-void
.end method

.method public a(IJI)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/viber/voip/messages/controller/h;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/h;-><init>(Lcom/viber/voip/messages/controller/c;IJI)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 160
    return-void
.end method

.method public a(IJILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v11

    new-instance v0, Lcom/viber/voip/messages/controller/e;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/viber/voip/messages/controller/e;-><init>(Lcom/viber/voip/messages/controller/c;IJILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method

.method public a(IJLcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    new-instance v0, Lcom/viber/voip/messages/controller/o;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/o;-><init>(Lcom/viber/voip/messages/controller/c;IJLcom/viber/voip/messages/controller/GroupController$PublicGroupChanger;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c;->a(Lcom/viber/voip/messages/controller/q;)V

    .line 106
    return-void
.end method

.method public a(IJ[Lcom/viber/voip/messages/controller/GroupController$GroupMember;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v0, Lcom/viber/voip/messages/controller/m;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/m;-><init>(Lcom/viber/voip/messages/controller/c;IJ[Lcom/viber/voip/messages/controller/GroupController$GroupMember;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c;->a(Lcom/viber/voip/messages/controller/q;)V

    .line 84
    return-void
.end method

.method public a(ILcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 88
    new-instance v0, Lcom/viber/voip/messages/controller/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/n;-><init>(Lcom/viber/voip/messages/controller/c;ILcom/viber/voip/messages/controller/GroupController$CreatePublicGroupData;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c;->a(Lcom/viber/voip/messages/controller/q;)V

    .line 95
    return-void
.end method

.method public a(I[Lcom/viber/voip/messages/controller/GroupController$GroupMember;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    new-instance v0, Lcom/viber/voip/messages/controller/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/controller/i;-><init>(Lcom/viber/voip/messages/controller/c;I[Lcom/viber/voip/messages/controller/GroupController$GroupMember;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c;->a(Lcom/viber/voip/messages/controller/q;)V

    .line 40
    return-void
.end method

.method public a(JI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 110
    new-instance v0, Lcom/viber/voip/messages/controller/p;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/p;-><init>(Lcom/viber/voip/messages/controller/c;JI)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c;->a(Lcom/viber/voip/messages/controller/q;)V

    .line 118
    return-void
.end method

.method public a(JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Lcom/viber/voip/messages/controller/l;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/l;-><init>(Lcom/viber/voip/messages/controller/c;JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c;->a(Lcom/viber/voip/messages/controller/q;)V

    .line 73
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/viber/voip/messages/controller/j;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/controller/j;-><init>(Lcom/viber/voip/messages/controller/c;JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c;->a(Lcom/viber/voip/messages/controller/q;)V

    .line 51
    return-void
.end method

.method public a(JZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v0, Lcom/viber/voip/messages/controller/k;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/k;-><init>(Lcom/viber/voip/messages/controller/c;JZ)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/controller/c;->a(Lcom/viber/voip/messages/controller/q;)V

    .line 62
    return-void
.end method

.method public b(JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 144
    sget-object v0, Lcom/viber/voip/dk;->k:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/controller/g;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/viber/voip/messages/controller/g;-><init>(Lcom/viber/voip/messages/controller/c;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method
