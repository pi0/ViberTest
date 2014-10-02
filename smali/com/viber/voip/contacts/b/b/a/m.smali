.class final Lcom/viber/voip/contacts/b/b/a/m;
.super Lcom/viber/voip/messages/orm/creator/CreatorHelper;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createEntity()Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/contacts/b/b/a/m;->createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method public final createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 235
    :try_start_0
    const-string/jumbo v1, "mime_type"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/a/m;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 236
    packed-switch v2, :pswitch_data_0

    .line 245
    new-instance v1, Lcom/viber/voip/contacts/b/b/a/l;

    invoke-direct {v1}, Lcom/viber/voip/contacts/b/b/a/l;-><init>()V

    move-object v0, v1

    .line 247
    :goto_0
    iput v2, v0, Lcom/viber/voip/contacts/b/b/a/l;->h:I

    .line 249
    const-string/jumbo v1, "_id"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/a/m;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/contacts/b/b/a/l;->a(Lcom/viber/voip/contacts/b/b/a/l;J)J

    .line 250
    const-string/jumbo v1, "contact_id"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/a/m;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/viber/voip/contacts/b/b/a/l;->i:J

    .line 251
    const-string/jumbo v1, "raw_id"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/a/m;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/viber/voip/contacts/b/b/a/l;->j:J

    .line 252
    const-string/jumbo v1, "data1"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/a/m;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/contacts/b/b/a/l;->b:Ljava/lang/String;

    .line 253
    const-string/jumbo v1, "data2"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/a/m;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/contacts/b/b/a/l;->c:Ljava/lang/String;

    .line 254
    const-string/jumbo v1, "data3"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/a/m;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/contacts/b/b/a/l;->d:Ljava/lang/String;

    .line 255
    const-string/jumbo v1, "data4"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/a/m;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/contacts/b/b/a/l;->e:Ljava/lang/String;

    .line 256
    const-string/jumbo v1, "data5"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/a/m;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/contacts/b/b/a/l;->f:Ljava/lang/String;

    .line 257
    const-string/jumbo v1, "int_data2"

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/contacts/b/b/a/m;->getProjectionColumn(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/viber/voip/contacts/b/b/a/l;->g:I

    .line 261
    :goto_1
    return-object v0

    .line 238
    :pswitch_0
    new-instance v1, Lcom/viber/voip/contacts/b/b/k;

    invoke-direct {v1}, Lcom/viber/voip/contacts/b/b/k;-><init>()V

    move-object v0, v1

    .line 239
    goto :goto_0

    .line 241
    :pswitch_1
    new-instance v1, Lcom/viber/voip/contacts/b/b/j;

    invoke-direct {v1}, Lcom/viber/voip/contacts/b/b/j;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 242
    goto/16 :goto_0

    .line 258
    :catch_0
    move-exception v1

    goto :goto_1

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    return-object v0
.end method
