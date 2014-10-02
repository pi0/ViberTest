.class public Lcom/viber/voip/contacts/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "canonized_number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "blocked_date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/contacts/b/b/a;->a:[Ljava/lang/String;

    .line 16
    sput v3, Lcom/viber/voip/contacts/b/b/a;->b:I

    .line 17
    sget v0, Lcom/viber/voip/contacts/b/b/a;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/contacts/b/b/a;->c:I

    .line 18
    sget v0, Lcom/viber/voip/contacts/b/b/a;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/contacts/b/b/a;->d:I

    return-void
.end method

.method public static a(Lcom/viber/voip/contacts/b/b/b;)Landroid/content/ContentValues;
    .locals 5
    .parameter

    .prologue
    .line 21
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 22
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/b;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 23
    const-string/jumbo v1, "_id"

    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/b;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 25
    :cond_0
    const-string/jumbo v1, "canonized_number"

    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v1, "blocked_date"

    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/b;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    return-object v0
.end method

.method public static a(Lcom/viber/voip/contacts/b/b/b;Landroid/database/Cursor;I)Lcom/viber/voip/contacts/b/b/b;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    sget v0, Lcom/viber/voip/contacts/b/b/a;->b:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/contacts/b/b/b;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 32
    sget v0, Lcom/viber/voip/contacts/b/b/a;->c:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b/b/b;->a(Ljava/lang/String;)V

    .line 33
    sget v0, Lcom/viber/voip/contacts/b/b/a;->d:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/contacts/b/b/b;->a(J)V

    .line 34
    return-object p0
.end method
