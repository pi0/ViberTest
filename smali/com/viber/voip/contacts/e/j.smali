.class public Lcom/viber/voip/contacts/e/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 406
    const-string/jumbo v0, "phonebookcontact.has_number=1"

    sput-object v0, Lcom/viber/voip/contacts/e/j;->a:Ljava/lang/String;

    return-void
.end method

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
    .line 414
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 415
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

    const/4 v2, 0x4

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

    const/4 v3, 0x2

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

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 419
    :goto_2
    return-object v0

    .line 415
    :cond_0
    const-string/jumbo v0, ""

    goto/16 :goto_0

    :cond_1
    move-object p3, p2

    goto :goto_1

    .line 419
    :cond_2
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/viber/voip/messages/orm/creator/CreatorHelper;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-static {p0, p1}, Lcom/viber/voip/contacts/e/j;->b(Lcom/viber/voip/messages/orm/creator/CreatorHelper;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 454
    invoke-static {p3, p4, p5, p6}, Lcom/viber/voip/contacts/e/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 455
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public static a(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 424
    const/4 v1, 0x1

    const-string/jumbo v2, "low_display_name ASC"

    const-string/jumbo v3, "phonebookcontact.has_number=1 AND phonebookcontact.viber=1"

    const-string/jumbo v4, "(phonebookcontact.low_display_name LIKE ? OR phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?)))"

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/contacts/e/j;->a(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public static a(Lcom/viber/voip/messages/orm/manager/EntityManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 459
    invoke-static {p3, p4, p5, p6}, Lcom/viber/voip/contacts/e/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 460
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, p2, v0, v1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->fillCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public static a(Lcom/viber/voip/messages/orm/manager/EntityManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 444
    const/4 v1, 0x4

    const-string/jumbo v2, "recently_joined_date DESC, low_display_name ASC"

    const-string/jumbo v3, "recently_joined_date<>0 AND phonebookcontact.has_number=1 AND phonebookcontact.viber=1"

    const-string/jumbo v4, "(phonebookcontact.low_display_name LIKE ? OR phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?)))"

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/contacts/e/j;->a(Lcom/viber/voip/messages/orm/manager/EntityManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public static a(Lcom/viber/voip/messages/orm/manager/EntityManager;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 449
    const/4 v1, 0x5

    const-string/jumbo v2, "low_display_name ASC"

    if-eqz p1, :cond_0

    const-string/jumbo v3, "phonebookcontact.has_number=1 AND phonebookcontact.starred=1 AND phonebookcontact.viber=1"

    :goto_0
    const-string/jumbo v4, "(phonebookcontact.low_display_name LIKE ? OR phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?)))"

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/contacts/e/j;->a(Lcom/viber/voip/messages/orm/manager/EntityManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void

    .line 449
    :cond_0
    const-string/jumbo v3, "phonebookcontact.has_number=1 AND phonebookcontact.starred=1"

    goto :goto_0
.end method

.method private static b(Lcom/viber/voip/messages/orm/creator/CreatorHelper;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;)Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 410
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;Z)V

    return-object v0
.end method

.method public static b(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 428
    const/4 v1, 0x1

    const-string/jumbo v2, "low_display_name ASC, phonebookcontact._id"

    const-string/jumbo v3, "phonebookcontact.has_number=1 AND phonebookcontact.viber=1 AND vibernumbers.canonized_number IS NOT NULL"

    const-string/jumbo v4, "(phonebookcontact.low_display_name LIKE ? OR phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?)))"

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/contacts/e/j;->a(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public static c(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 432
    const/4 v1, 0x0

    const-string/jumbo v2, "low_display_name ASC"

    sget-object v3, Lcom/viber/voip/contacts/e/j;->a:Ljava/lang/String;

    const-string/jumbo v4, "(phonebookcontact.low_display_name LIKE ? OR phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?)))"

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/contacts/e/j;->a(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public static d(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 436
    const/4 v1, 0x2

    const-string/jumbo v2, "low_display_name ASC"

    sget-object v3, Lcom/viber/voip/contacts/e/j;->a:Ljava/lang/String;

    const-string/jumbo v4, "(phonebookcontact.numbers_name LIKE ? OR phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?)))"

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/contacts/e/j;->a(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public static e(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 440
    const/4 v1, 0x2

    const-string/jumbo v2, "low_display_name ASC"

    sget-object v3, Lcom/viber/voip/contacts/e/j;->a:Ljava/lang/String;

    const-string/jumbo v4, "(phonebookcontact._id NOT IN (SELECT phonebookdata.contact_id FROM calls LEFT OUTER JOIN phonebookdata ON (calls.canonized_number=phonebookdata.data2) WHERE phonebookdata.contact_id NOT NULL )) AND (phonebookcontact.numbers_name LIKE ? OR phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?))) AND mime_type=0"

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/contacts/e/j;->a(Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method
