.class public Lcom/viber/voip/messages/conversation/ap;
.super Lcom/viber/provider/b;
.source "SourceFile"


# instance fields
.field private final h:Lcom/viber/voip/messages/i;

.field private i:J

.field private j:Lcom/viber/voip/messages/controller/dh;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/conversation/ap;-><init>(Landroid/content/Context;ZZLandroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLandroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    const/4 v1, 0x3

    sget-object v2, Lcom/viber/provider/messages/b/e;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/viber/provider/b;-><init>(ILandroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;I)V

    .line 31
    new-instance v0, Lcom/viber/voip/messages/conversation/aq;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/aq;-><init>(Lcom/viber/voip/messages/conversation/ap;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ap;->j:Lcom/viber/voip/messages/controller/dh;

    .line 60
    iput-object p5, p0, Lcom/viber/voip/messages/conversation/ap;->h:Lcom/viber/voip/messages/i;

    .line 62
    sget-object v0, Lcom/viber/voip/messages/conversation/ar;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ap;->a([Ljava/lang/String;)V

    .line 64
    const-string/jumbo v0, ""

    .line 65
    if-eqz p3, :cond_1

    .line 66
    if-eqz p2, :cond_0

    const-string/jumbo v0, "participants.conversation_id=? AND participants.active=0"

    .line 71
    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ap;->a(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v0, "participant_type ASC, display_name ASC, number ASC"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ap;->b(Ljava/lang/String;)V

    .line 73
    return-void

    .line 66
    :cond_0
    const-string/jumbo v0, "participants.conversation_id=? AND participants.active=0 AND participant_type<>0"

    goto :goto_0

    .line 68
    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v0, "participants.conversation_id=?"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "participants.conversation_id=? AND participant_type<>0"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ZZLcom/viber/voip/messages/i;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    const/16 v1, 0xc

    sget-object v2, Lcom/viber/provider/messages/b/e;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/provider/b;-><init>(ILandroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;I)V

    .line 31
    new-instance v0, Lcom/viber/voip/messages/conversation/aq;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/aq;-><init>(Lcom/viber/voip/messages/conversation/ap;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ap;->j:Lcom/viber/voip/messages/controller/dh;

    .line 77
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/ap;->h:Lcom/viber/voip/messages/i;

    .line 79
    sget-object v0, Lcom/viber/voip/messages/conversation/ar;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ap;->a([Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, ""

    .line 82
    if-eqz p3, :cond_1

    .line 83
    if-eqz p2, :cond_0

    const-string/jumbo v0, "participants.conversation_id=? AND participants.active=0"

    .line 88
    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ap;->a(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v0, "participant_type ASC, display_name ASC, number ASC"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ap;->b(Ljava/lang/String;)V

    .line 90
    return-void

    .line 83
    :cond_0
    const-string/jumbo v0, "participants.conversation_id=? AND participants.active=0 AND participant_type<>0"

    goto :goto_0

    .line 85
    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v0, "participants.conversation_id=?"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "participants.conversation_id=? AND participant_type<>0"

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ap;)J
    .locals 2
    .parameter

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ap;->i:J

    return-wide v0
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/ap;->e(I)Lcom/viber/voip/messages/conversation/ar;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/database/CharArrayBuffer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/ap;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ap;->e:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 114
    iget v0, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ap;->e:Landroid/database/Cursor;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 118
    :cond_0
    return-void
.end method

.method public a(J)Z
    .locals 2
    .parameter

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ap;->i:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 122
    invoke-super {p0}, Lcom/viber/provider/b;->a()Z

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)V
    .locals 4
    .parameter

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/viber/voip/messages/conversation/ap;->i:J

    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/viber/voip/messages/conversation/ap;->i:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ap;->b([Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public e(I)Lcom/viber/voip/messages/conversation/ar;
    .locals 2
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/ap;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lcom/viber/voip/messages/conversation/ar;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ap;->e:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/conversation/ar;-><init>(Landroid/database/Cursor;)V

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ap;->h:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ap;->j:Lcom/viber/voip/messages/controller/dh;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->b(Lcom/viber/voip/messages/controller/dg;)V

    .line 98
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ap;->h:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ap;->j:Lcom/viber/voip/messages/controller/dh;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->a(Lcom/viber/voip/messages/controller/dg;)V

    .line 102
    return-void
.end method
