.class public Lcom/viber/voip/gallery/a/b;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Landroid/net/Uri;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "MAX(datetaken) AS datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "COUNT(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/gallery/a/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 37
    invoke-static {p0, p1}, Lcom/viber/voip/gallery/a/b;->a(Lcom/viber/voip/gallery/a/b;Landroid/database/Cursor;)V

    .line 38
    return-void
.end method

.method private static a(Lcom/viber/voip/gallery/a/b;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/gallery/a/b;->id:J

    .line 42
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/a/b;->b:Ljava/lang/String;

    .line 43
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/a/b;->c:Ljava/lang/String;

    .line 44
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/gallery/a/b;->d:J

    .line 45
    iget-wide v0, p0, Lcom/viber/voip/gallery/a/b;->id:J

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/a/b;->e:Landroid/net/Uri;

    .line 46
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/a/b;->f:I

    .line 47
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/viber/voip/gallery/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/viber/voip/gallery/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/viber/voip/gallery/a/b;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/viber/voip/gallery/a/b;->f:I

    return v0
.end method
