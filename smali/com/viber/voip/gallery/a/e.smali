.class public Lcom/viber/voip/gallery/a/e;
.super Lcom/viber/provider/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    const/4 v1, 0x7

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/viber/provider/b;-><init>(ILandroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;I)V

    .line 18
    sget-object v0, Lcom/viber/voip/gallery/a/d;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/a/e;->a([Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bucket_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/a/e;->a(Ljava/lang/String;)V

    .line 20
    const-string/jumbo v0, "datetaken DESC"

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/a/e;->b(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/a/e;->e(I)Lcom/viber/voip/gallery/a/d;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/viber/voip/gallery/a/d;
    .locals 2
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/a/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/viber/voip/gallery/a/d;

    iget-object v1, p0, Lcom/viber/voip/gallery/a/e;->e:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lcom/viber/voip/gallery/a/d;-><init>(Landroid/database/Cursor;)V

    .line 28
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
