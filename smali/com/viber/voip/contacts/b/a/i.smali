.class public Lcom/viber/voip/contacts/b/a/i;
.super Lcom/viber/voip/contacts/b/a/m;
.source "SourceFile"


# instance fields
.field protected a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/contacts/b/a/m;-><init>()V

    .line 41
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "phonebookcontact._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "phonebookcontact.native_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "phonebookcontact.display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "phonebookcontact.low_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "phonebookcontact.contact_lookup_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "phonebookcontact.viber"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "phonebookcontact.viber_out"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "phonebookcontact.starred"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "phonebookcontact.native_photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "phonebookcontact.version"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "phonebookcontact.phone_label"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "GROUP_CONCAT(vibernumbers.canonized_number||\':\'||vibernumbers.photo||\':\'||vibernumbers.actual_photo) AS viber_numbers"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "GROUP_CONCAT(phonebookdata.data2||\':\'||phonebookdata.int_data2) AS locale_numbers"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/viber/voip/contacts/b/a/i;->a:[Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/contacts/b/a/i;->createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 67
    new-instance v3, Lcom/viber/voip/contacts/b/b/e;

    invoke-direct {v3}, Lcom/viber/voip/contacts/b/b/e;-><init>()V

    .line 69
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/viber/voip/contacts/b/b/e;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 70
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/viber/voip/contacts/b/b/e;->b(J)V

    .line 71
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/viber/voip/contacts/b/b/e;->i(Ljava/lang/String;)V

    .line 72
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/viber/voip/contacts/b/b/e;->m(Ljava/lang/String;)V

    .line 73
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/viber/voip/contacts/b/b/e;->n(Ljava/lang/String;)V

    .line 74
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/viber/voip/contacts/b/b/e;->b(Z)V

    .line 75
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Lcom/viber/voip/contacts/b/b/e;->c(Z)V

    .line 76
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_2
    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/b/b/e;->a(Z)V

    .line 77
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/contacts/b/b/e;->c(J)V

    .line 78
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/b/b/e;->k(Ljava/lang/String;)V

    .line 79
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/b/b/e;->f(Ljava/lang/String;)V

    .line 80
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/b/b/e;->g(Ljava/lang/String;)V

    .line 81
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/b/b/e;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_3
    return-object v3

    :cond_0
    move v2, v1

    .line 74
    goto :goto_0

    :cond_1
    move v2, v1

    .line 75
    goto :goto_1

    :cond_2
    move v0, v1

    .line 76
    goto :goto_2

    .line 82
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/viber/provider/contacts/d;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/contacts/b/a/i;->a:[Ljava/lang/String;

    return-object v0
.end method
