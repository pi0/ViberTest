.class public Lcom/viber/voip/gallery/a/f;
.super Lcom/viber/voip/gallery/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/gallery/a/c",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/viber/voip/gallery/GalleryItem;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/gallery/a/f;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p3}, Lcom/viber/voip/gallery/a/c;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/viber/voip/gallery/a/f;->c:Ljava/util/List;

    .line 38
    iput p2, p0, Lcom/viber/voip/gallery/a/f;->b:I

    .line 39
    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    if-lez p1, :cond_0

    .line 97
    const-string/jumbo v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    iget v0, p0, Lcom/viber/voip/gallery/a/f;->b:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/a/f;->c:Ljava/util/List;

    const/4 v1, 0x0

    iget v2, p0, Lcom/viber/voip/gallery/a/f;->b:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/a/f;->c:Ljava/util/List;

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/viber/voip/gallery/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/viber/voip/gallery/a/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/gallery/GalleryItem;

    .line 69
    invoke-virtual {v1}, Lcom/viber/voip/gallery/GalleryItem;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 72
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    const/4 v1, 0x5

    const-string/jumbo v4, "DateFilterPhotoLoader"

    const-string/jumbo v5, "Invalid URI for photo filtering. Uri doesn\'t contain photo ID"

    invoke-static {v1, v4, v5}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/viber/voip/gallery/a/f;->a:[Ljava/lang/String;

    const-string/jumbo v4, "_id"

    invoke-static {v4, v3}, Lcom/viber/voip/gallery/a/f;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "datetaken"

    iget v6, p0, Lcom/viber/voip/gallery/a/f;->b:I

    invoke-static {v5, v6}, Lcom/viber/voip/gallery/a/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_2

    .line 82
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string/jumbo v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/viber/voip/gallery/GalleryItem;->a(Landroid/net/Uri;)Lcom/viber/voip/gallery/GalleryItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 88
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iget-object v0, p0, Lcom/viber/voip/gallery/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/viber/voip/gallery/a/f;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    .line 50
    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-direct {p0, v1}, Lcom/viber/voip/gallery/a/f;->a(Ljava/util/ArrayList;)V

    .line 58
    :cond_0
    :goto_0
    return-object v1

    .line 54
    :cond_1
    invoke-direct {p0, v1}, Lcom/viber/voip/gallery/a/f;->b(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/viber/voip/gallery/a/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
