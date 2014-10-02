.class public Lcom/viber/voip/messages/conversation/c;
.super Lcom/viber/voip/messages/conversation/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/conversation/v",
        "<",
        "Lcom/viber/voip/messages/conversation/an;",
        ">;"
    }
.end annotation


# instance fields
.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    sget-object v2, Lcom/viber/provider/messages/b/f;->a:Landroid/net/Uri;

    sget-object v3, Lcom/viber/voip/messages/conversation/ag;->a:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/conversation/v;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/c;->k:Ljava/util/Map;

    .line 29
    const-string/jumbo v0, "message_global_id DESC, date DESC"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/c;->b(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    sget-object v2, Lcom/viber/provider/messages/b/f;->a:Landroid/net/Uri;

    sget-object v3, Lcom/viber/voip/messages/conversation/ag;->a:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/v;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/c;->k:Ljava/util/Map;

    .line 34
    const-string/jumbo v0, "message_global_id DESC, date DESC"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/c;->b(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    div-int/lit8 v0, p1, 0x32

    .line 117
    mul-int/lit8 v0, v0, 0x32

    .line 121
    if-le p1, v0, :cond_1

    .line 122
    add-int/lit8 v1, v0, 0x32

    if-ge v1, p2, :cond_0

    .line 123
    add-int/lit8 p2, v0, 0x32

    .line 128
    :cond_0
    :goto_0
    return p2

    :cond_1
    move p2, v0

    goto :goto_0
.end method

.method private a(JI)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 99
    if-lez p3, :cond_0

    .line 100
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/c;->k:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    .line 102
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/c;->k:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v1

    invoke-interface {v1, v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/GroupController;->a(IJI)V

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/ag;
    .locals 1
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/viber/voip/messages/conversation/ag;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/conversation/ag;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)Lcom/viber/voip/messages/conversation/an;
    .locals 1
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/viber/voip/messages/conversation/ag;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/conversation/ag;-><init>(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    return-object v0
.end method

.method protected synthetic b(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/an;
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/c;->a(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/ag;

    move-result-object v0

    return-object v0
.end method

.method protected k()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/16 v8, 0x32

    const/4 v7, 0x1

    .line 51
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/v;->k()V

    .line 53
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/c;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/c;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/c;->e:Landroid/database/Cursor;

    const/16 v2, 0x23

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-array v2, v7, [I

    const/4 v3, 0x4

    aput v3, v2, v0

    invoke-static {v1, v2}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/c;->e:Landroid/database/Cursor;

    sget v2, Lcom/viber/voip/messages/conversation/ag;->b:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 63
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/c;->e:Landroid/database/Cursor;

    const/16 v2, 0x24

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 65
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/c;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    .line 67
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/c;->e:Landroid/database/Cursor;

    sget v2, Lcom/viber/voip/messages/conversation/ag;->b:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 70
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/c;->e:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v8, :cond_1

    if-le v1, v7, :cond_1

    .line 71
    invoke-direct {p0, v4, v5, v3}, Lcom/viber/voip/messages/conversation/c;->a(JI)V

    .line 96
    :cond_0
    return-void

    .line 78
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/c;->e:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    if-gt v0, v8, :cond_0

    .line 79
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/c;->e:Landroid/database/Cursor;

    sget v6, Lcom/viber/voip/messages/conversation/ag;->b:I

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 82
    sub-int v6, v2, v1

    .line 84
    if-le v6, v8, :cond_2

    .line 85
    add-int/lit8 v1, v1, 0x32

    invoke-direct {p0, v1, v3}, Lcom/viber/voip/messages/conversation/c;->a(II)I

    move-result v1

    .line 86
    invoke-direct {p0, v4, v5, v1}, Lcom/viber/voip/messages/conversation/c;->a(JI)V

    .line 91
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 92
    goto :goto_0

    .line 87
    :cond_2
    if-le v6, v7, :cond_3

    .line 88
    invoke-direct {p0, v2, v3}, Lcom/viber/voip/messages/conversation/c;->a(II)I

    move-result v1

    invoke-direct {p0, v4, v5, v1}, Lcom/viber/voip/messages/conversation/c;->a(JI)V

    :cond_3
    move v1, v2

    goto :goto_1
.end method
