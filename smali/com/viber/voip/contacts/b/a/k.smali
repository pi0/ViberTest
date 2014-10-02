.class public Lcom/viber/voip/contacts/b/a/k;
.super Lcom/viber/voip/messages/orm/creator/CreatorHelper;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field protected static final i:[Ljava/lang/String;

.field private static final j:Lcom/viber/voip/contacts/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    new-instance v0, Lcom/viber/voip/contacts/b/a/l;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/a/l;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/b/a/k;->j:Lcom/viber/voip/contacts/b/a/d;

    .line 27
    sget-object v0, Lcom/viber/voip/contacts/b/a/k;->j:Lcom/viber/voip/contacts/b/a/d;

    const/16 v0, 0x13

    sput v0, Lcom/viber/voip/contacts/b/a/k;->a:I

    .line 28
    sget-object v0, Lcom/viber/voip/contacts/b/a/k;->j:Lcom/viber/voip/contacts/b/a/d;

    const/16 v0, 0x14

    sput v0, Lcom/viber/voip/contacts/b/a/k;->b:I

    .line 29
    sget-object v0, Lcom/viber/voip/contacts/b/a/k;->j:Lcom/viber/voip/contacts/b/a/d;

    const/16 v0, 0x15

    sput v0, Lcom/viber/voip/contacts/b/a/k;->c:I

    .line 30
    sget-object v0, Lcom/viber/voip/contacts/b/a/k;->j:Lcom/viber/voip/contacts/b/a/d;

    const/16 v0, 0x16

    sput v0, Lcom/viber/voip/contacts/b/a/k;->d:I

    .line 31
    sget-object v0, Lcom/viber/voip/contacts/b/a/k;->j:Lcom/viber/voip/contacts/b/a/d;

    const/16 v0, 0x17

    sput v0, Lcom/viber/voip/contacts/b/a/k;->e:I

    .line 32
    sget-object v0, Lcom/viber/voip/contacts/b/a/k;->j:Lcom/viber/voip/contacts/b/a/d;

    const/16 v0, 0x18

    sput v0, Lcom/viber/voip/contacts/b/a/k;->f:I

    .line 33
    sget-object v0, Lcom/viber/voip/contacts/b/a/k;->j:Lcom/viber/voip/contacts/b/a/d;

    const/16 v0, 0x19

    sput v0, Lcom/viber/voip/contacts/b/a/k;->g:I

    .line 34
    sget-object v0, Lcom/viber/voip/contacts/b/a/k;->j:Lcom/viber/voip/contacts/b/a/d;

    const/16 v0, 0x1a

    sput v0, Lcom/viber/voip/contacts/b/a/k;->h:I

    .line 36
    sget-object v0, Lcom/viber/voip/contacts/b/a/k;->j:Lcom/viber/voip/contacts/b/a/d;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/a/d;->getProjections()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "vibernumbers.canonized_number"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "vibernumbers.photo"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "vibernumbers.actual_photo"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "phonebookdata.data2"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "phonebookdata.data3"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "phonebookdata.data1"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "phonebookdata.data4"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "phonebookdata.data5"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/b/a/k;->addProjections([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/b/a/k;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/viber/voip/contacts/b/b/a/a;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/orm/creator/CreatorHelper;-><init>(Ljava/lang/Class;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/contacts/b/b/e;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/viber/voip/contacts/b/b/e;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/b/e;-><init>()V

    return-object v0
.end method

.method public synthetic createEntity()Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/a/k;->a()Lcom/viber/voip/contacts/b/b/e;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/contacts/b/a/k;->createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 64
    sget-object v0, Lcom/viber/voip/contacts/b/a/k;->j:Lcom/viber/voip/contacts/b/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/contacts/b/a/d;->createInstance(Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/e;

    .line 66
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/viber/voip/contacts/b/a/k;->a:I

    add-int/2addr v2, p2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/viber/voip/contacts/b/a/k;->b:I

    add-int/2addr v2, p2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/viber/voip/contacts/b/a/k;->c:I

    add-int/2addr v2, p2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/b/b/e;->f(Ljava/lang/String;)V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/viber/voip/contacts/b/a/k;->d:I

    add-int/2addr v2, p2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/viber/voip/contacts/b/a/k;->e:I

    add-int/2addr v2, p2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/viber/voip/contacts/b/a/k;->f:I

    add-int/2addr v2, p2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/viber/voip/contacts/b/a/k;->g:I

    add-int/2addr v2, p2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/b/b/e;->c(Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/viber/voip/contacts/b/a/k;->a:I

    add-int/2addr v2, p2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/viber/voip/contacts/b/a/k;->h:I

    add-int/2addr v2, p2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/b/b/e;->e(Ljava/lang/String;)V

    .line 76
    sget v1, Lcom/viber/voip/contacts/b/a/k;->g:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/b/b/e;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/viber/provider/contacts/d;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/viber/voip/contacts/b/a/k;->i:[Ljava/lang/String;

    return-object v0
.end method
