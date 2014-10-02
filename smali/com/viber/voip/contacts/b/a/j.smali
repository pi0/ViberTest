.class public Lcom/viber/voip/contacts/b/a/j;
.super Lcom/viber/voip/contacts/b/a/m;
.source "SourceFile"


# instance fields
.field protected a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/viber/voip/contacts/b/a/m;-><init>()V

    .line 25
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "phonebookcontact._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "phonebookcontact.native_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "phonebookcontact.native_photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "phonebookcontact.display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "SUM(phonebookdata.int_data1) AS sms_count"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "GROUP_CONCAT(vibernumbers.canonized_number||\':\'||vibernumbers.photo||\':\'||vibernumbers.actual_photo) AS viber_numbers"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "GROUP_CONCAT(phonebookdata.data2) AS canonized_numbers"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/viber/voip/contacts/b/a/j;->a:[Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/contacts/b/a/j;->createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 45
    new-instance v0, Lcom/viber/voip/contacts/b/b/e;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/b/e;-><init>()V

    .line 47
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/b/b/e;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 48
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/b/b/e;->b(J)V

    .line 49
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/b/b/e;->c(J)V

    .line 50
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/b/b/e;->i(Ljava/lang/String;)V

    .line 52
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/b/b/e;->a(I)V

    .line 53
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/b/b/e;->f(Ljava/lang/String;)V

    .line 54
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/b/b/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/viber/provider/contacts/d;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/viber/voip/contacts/b/a/j;->a:[Ljava/lang/String;

    return-object v0
.end method
