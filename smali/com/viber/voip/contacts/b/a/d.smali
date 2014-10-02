.class public Lcom/viber/voip/contacts/b/a/d;
.super Lcom/viber/voip/messages/orm/creator/CreatorHelper;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/16 v0, 0x13

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

    const-string/jumbo v2, "phonebookcontact.numbers_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "phonebookcontact.starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "phonebookcontact.viber"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "phonebookcontact.viber_out"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "phonebookcontact.contact_lookup_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "phonebookcontact.contact_hash"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "phonebookcontact.has_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "phonebookcontact.has_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "phonebookcontact.native_photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "phonebookcontact.recently_joined_date"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "phonebookcontact.joined_date"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "phonebookcontact.version"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "phonebookcontact.flags"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "phonebookcontact.phone_label"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "phonebookcontact.phonetic_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/contacts/b/a/d;->b:[Ljava/lang/String;

    .line 59
    const-class v0, Lcom/viber/voip/contacts/b/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/b/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/viber/voip/contacts/b/b/a/a;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;-><init>(Ljava/lang/Class;)V

    .line 63
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/contacts/b/b/a/a;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/viber/voip/contacts/b/b/a/a;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/b/a/a;-><init>()V

    return-object v0
.end method

.method public synthetic createEntity()Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/a/d;->a()Lcom/viber/voip/contacts/b/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/contacts/b/a/d;->createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

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

    .line 87
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/a/d;->a()Lcom/viber/voip/contacts/b/b/a/a;

    move-result-object v3

    .line 89
    add-int/lit8 v2, p2, 0x0

    :try_start_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/viber/voip/contacts/b/b/a/a;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 90
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/viber/voip/contacts/b/b/a/a;->b(J)V

    .line 91
    add-int/lit8 v2, p2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/viber/voip/contacts/b/b/a/a;->a(Z)V

    .line 92
    add-int/lit8 v2, p2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/viber/voip/contacts/b/b/a/a;->i(Ljava/lang/String;)V

    .line 93
    add-int/lit8 v2, p2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/viber/voip/contacts/b/b/a/a;->m(Ljava/lang/String;)V

    .line 94
    add-int/lit8 v2, p2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Lcom/viber/voip/contacts/b/b/a/a;->b(Z)V

    .line 95
    add-int/lit8 v2, p2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    :goto_2
    invoke-virtual {v3, v2}, Lcom/viber/voip/contacts/b/b/a/a;->c(Z)V

    .line 96
    add-int/lit8 v2, p2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/viber/voip/contacts/b/b/a/a;->n(Ljava/lang/String;)V

    .line 97
    add-int/lit8 v2, p2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    :goto_3
    invoke-virtual {v3, v2}, Lcom/viber/voip/contacts/b/b/a/a;->d(Z)V

    .line 98
    add-int/lit8 v2, p2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_4

    :goto_4
    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/b/b/a/a;->e(Z)V

    .line 99
    add-int/lit8 v0, p2, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/contacts/b/b/a/a;->c(J)V

    .line 100
    add-int/lit8 v0, p2, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/b/b/a/a;->b(I)V

    .line 101
    add-int/lit8 v0, p2, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/contacts/b/b/a/a;->e(J)V

    .line 102
    add-int/lit8 v0, p2, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/contacts/b/b/a/a;->d(J)V

    .line 103
    add-int/lit8 v0, p2, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/b/b/a/a;->l(Ljava/lang/String;)V

    .line 104
    add-int/lit8 v0, p2, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/b/b/a/a;->d(I)V

    .line 105
    add-int/lit8 v0, p2, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/b/b/a/a;->c(I)V

    .line 106
    add-int/lit8 v0, p2, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/b/b/a/a;->k(Ljava/lang/String;)V

    .line 107
    add-int/lit8 v0, p2, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/b/b/a/a;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_5
    return-object v3

    :cond_0
    move v2, v1

    .line 91
    goto/16 :goto_0

    :cond_1
    move v2, v1

    .line 94
    goto/16 :goto_1

    :cond_2
    move v2, v1

    .line 95
    goto :goto_2

    :cond_3
    move v2, v1

    .line 97
    goto :goto_3

    :cond_4
    move v0, v1

    .line 98
    goto :goto_4

    .line 108
    :catch_0
    move-exception v0

    goto :goto_5
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public getContentValues(Lcom/viber/voip/messages/orm/entity/Entity;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 116
    invoke-interface {p1}, Lcom/viber/voip/messages/orm/entity/Entity;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/viber/voip/contacts/b/a/d;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, ""

    return-object v0
.end method
