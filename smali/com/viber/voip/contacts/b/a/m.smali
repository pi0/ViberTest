.class public Lcom/viber/voip/contacts/b/a/m;
.super Lcom/viber/voip/messages/orm/creator/CreatorHelper;
.source "SourceFile"


# static fields
.field private static final a:Lcom/viber/voip/contacts/b/a/d;

.field protected static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    new-instance v0, Lcom/viber/voip/contacts/b/a/n;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/a/n;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/b/a/m;->a:Lcom/viber/voip/contacts/b/a/d;

    .line 52
    sget-object v0, Lcom/viber/voip/contacts/b/a/m;->a:Lcom/viber/voip/contacts/b/a/d;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/a/d;->getProjections()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "SUM(phonebookdata.int_data1) AS sms_count"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "GROUP_CONCAT(vibernumbers.canonized_number||\':\'||vibernumbers.photo||\':\'||vibernumbers.actual_photo) AS viber_numbers"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "GROUP_CONCAT(phonebookdata.data2||\':\'||phonebookdata.data3||\':\'||phonebookdata.data1||\':\'||ifnull(phonebookdata.data4, \'\')) AS all_numbers"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "GROUP_CONCAT(phonebookdata.data2||\':\'||ifnull(phonebookdata.data5,phonebookdata.data2)) AS numbers_labels"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/b/a/m;->addProjections([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/b/a/m;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/viber/voip/contacts/b/b/a/a;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;-><init>(Ljava/lang/Class;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/contacts/b/b/e;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/viber/voip/contacts/b/b/e;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/b/e;-><init>()V

    return-object v0
.end method

.method public synthetic createEntity()Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/a/m;->a()Lcom/viber/voip/contacts/b/b/e;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/contacts/b/a/m;->createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    sget-object v0, Lcom/viber/voip/contacts/b/a/m;->a:Lcom/viber/voip/contacts/b/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/contacts/b/a/d;->createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/e;

    .line 76
    :try_start_0
    const-string/jumbo v1, "sms_count"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/b/b/e;->a(I)V

    .line 77
    const-string/jumbo v1, "viber_numbers"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/b/b/e;->f(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v1, "all_numbers"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/b/b/e;->c(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, "numbers_labels"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/b/b/e;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/viber/provider/contacts/d;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/viber/voip/contacts/b/a/m;->b:[Ljava/lang/String;

    return-object v0
.end method
