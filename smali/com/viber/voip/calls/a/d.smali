.class public Lcom/viber/voip/calls/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 217
    :goto_1
    return-object v0

    .line 214
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 217
    :cond_1
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/viber/voip/messages/orm/creator/CreatorHelper;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-static {p0, p1}, Lcom/viber/voip/calls/a/d;->b(Lcom/viber/voip/messages/orm/creator/CreatorHelper;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 226
    const/4 v0, 0x0

    const-string/jumbo v1, "phonebookcontact.numbers_name LIKE ? OR calls.canonized_number LIKE ?"

    invoke-static {v0, v1, p1, p1}, Lcom/viber/voip/calls/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 227
    const/4 v2, 0x0

    const-string/jumbo v3, "calls.date DESC,phonebookcontact.low_display_name ASC, phonebookcontact._id"

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method private static b(Lcom/viber/voip/messages/orm/creator/CreatorHelper;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 222
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;Z)V

    return-object v0
.end method

.method public static b(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 231
    const-string/jumbo v0, "calls.type=3"

    const-string/jumbo v1, "phonebookcontact.numbers_name LIKE ? OR calls.canonized_number LIKE ?"

    invoke-static {v0, v1, p1, p1}, Lcom/viber/voip/calls/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 232
    const/4 v2, 0x1

    const-string/jumbo v3, "calls.date DESC,phonebookcontact.low_display_name ASC, phonebookcontact._id"

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 233
    return-void
.end method
