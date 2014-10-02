.class public Lcom/viber/voip/gallery/a/d;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:J

.field private c:Lcom/viber/voip/gallery/GalleryItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/gallery/a/d;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 26
    invoke-static {p0, p1}, Lcom/viber/voip/gallery/a/d;->a(Lcom/viber/voip/gallery/a/d;Landroid/database/Cursor;)V

    .line 27
    return-void
.end method

.method private static a(Lcom/viber/voip/gallery/a/d;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/gallery/a/d;->id:J

    .line 31
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/gallery/a/d;->b:J

    .line 32
    iget-wide v0, p0, Lcom/viber/voip/gallery/a/d;->id:J

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/gallery/GalleryItem;->a(Landroid/net/Uri;)Lcom/viber/voip/gallery/GalleryItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/a/d;->c:Lcom/viber/voip/gallery/GalleryItem;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/gallery/GalleryItem;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/viber/voip/gallery/a/d;->c:Lcom/viber/voip/gallery/GalleryItem;

    return-object v0
.end method
