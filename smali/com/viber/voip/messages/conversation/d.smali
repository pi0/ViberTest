.class public Lcom/viber/voip/messages/conversation/d;
.super Lcom/viber/provider/b;
.source "SourceFile"


# instance fields
.field private final h:Lcom/viber/voip/messages/conversation/g;

.field private final i:Lcom/viber/voip/messages/i;

.field private j:J

.field private k:Lcom/viber/voip/messages/controller/db;

.field private l:Lcom/viber/voip/messages/controller/dh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/voip/messages/conversation/g;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 94
    sget-object v2, Lcom/viber/provider/messages/b/b;->a:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/viber/provider/b;-><init>(ILandroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;I)V

    .line 28
    new-instance v0, Lcom/viber/voip/messages/conversation/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/e;-><init>(Lcom/viber/voip/messages/conversation/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/d;->k:Lcom/viber/voip/messages/controller/db;

    .line 56
    new-instance v0, Lcom/viber/voip/messages/conversation/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/f;-><init>(Lcom/viber/voip/messages/conversation/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/d;->l:Lcom/viber/voip/messages/controller/dh;

    .line 96
    iput-object p3, p0, Lcom/viber/voip/messages/conversation/d;->i:Lcom/viber/voip/messages/i;

    .line 97
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/d;->h:Lcom/viber/voip/messages/conversation/g;

    .line 99
    sget-object v0, Lcom/viber/voip/messages/conversation/h;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/d;->a([Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, "conversations._id=?"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/d;->a(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/i;Lcom/viber/voip/messages/conversation/g;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    const/16 v1, 0x9

    sget-object v2, Lcom/viber/provider/messages/b/b;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/viber/provider/b;-><init>(ILandroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;I)V

    .line 28
    new-instance v0, Lcom/viber/voip/messages/conversation/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/e;-><init>(Lcom/viber/voip/messages/conversation/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/d;->k:Lcom/viber/voip/messages/controller/db;

    .line 56
    new-instance v0, Lcom/viber/voip/messages/conversation/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/f;-><init>(Lcom/viber/voip/messages/conversation/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/d;->l:Lcom/viber/voip/messages/controller/dh;

    .line 107
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/d;->i:Lcom/viber/voip/messages/i;

    .line 108
    iput-object p3, p0, Lcom/viber/voip/messages/conversation/d;->h:Lcom/viber/voip/messages/conversation/g;

    .line 110
    sget-object v0, Lcom/viber/voip/messages/conversation/h;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/d;->a([Ljava/lang/String;)V

    .line 111
    const-string/jumbo v0, "conversations._id=?"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/d;->a(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;Lcom/viber/voip/messages/i;Lcom/viber/voip/messages/conversation/g;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 84
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/viber/provider/b;-><init>(ILandroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;I)V

    .line 28
    new-instance v0, Lcom/viber/voip/messages/conversation/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/e;-><init>(Lcom/viber/voip/messages/conversation/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/d;->k:Lcom/viber/voip/messages/controller/db;

    .line 56
    new-instance v0, Lcom/viber/voip/messages/conversation/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/f;-><init>(Lcom/viber/voip/messages/conversation/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/d;->l:Lcom/viber/voip/messages/controller/dh;

    .line 86
    iput-object p5, p0, Lcom/viber/voip/messages/conversation/d;->i:Lcom/viber/voip/messages/i;

    .line 87
    iput-object p6, p0, Lcom/viber/voip/messages/conversation/d;->h:Lcom/viber/voip/messages/conversation/g;

    .line 88
    sget-object v0, Lcom/viber/voip/messages/conversation/h;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/d;->a([Ljava/lang/String;)V

    .line 89
    const-string/jumbo v0, "conversations._id=?"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/d;->a(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/d;)J
    .locals 2
    .parameter

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/d;->j:J

    return-wide v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/d;)Lcom/viber/voip/messages/conversation/g;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/d;->h:Lcom/viber/voip/messages/conversation/g;

    return-object v0
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/d;->e(I)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 3
    .parameter

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/viber/voip/messages/conversation/d;->j:J

    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/d;->b([Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public e(I)Lcom/viber/voip/messages/conversation/h;
    .locals 2
    .parameter

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/d;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Lcom/viber/voip/messages/conversation/h;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/d;->e:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/conversation/h;-><init>(Landroid/database/Cursor;)V

    .line 150
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/viber/provider/b;->e()V

    .line 139
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/d;->i:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/d;->k:Lcom/viber/voip/messages/controller/db;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->b(Lcom/viber/voip/messages/controller/da;)V

    .line 116
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/d;->i:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/d;->l:Lcom/viber/voip/messages/controller/dh;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->b(Lcom/viber/voip/messages/controller/dg;)V

    .line 117
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/d;->i:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/d;->k:Lcom/viber/voip/messages/controller/db;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->a(Lcom/viber/voip/messages/controller/da;)V

    .line 121
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/d;->i:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/d;->l:Lcom/viber/voip/messages/controller/dh;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->a(Lcom/viber/voip/messages/controller/dg;)V

    .line 122
    return-void
.end method

.method public o()J
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/d;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/d;->e:Landroid/database/Cursor;

    const/16 v1, 0x13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 133
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public p()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/d;->j:J

    return-wide v0
.end method
