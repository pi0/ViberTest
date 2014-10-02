.class public Lcom/viber/voip/gallery/a/a;
.super Lcom/viber/provider/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    const/4 v1, 0x6

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/viber/provider/b;-><init>(ILandroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;I)V

    .line 18
    sget-object v0, Lcom/viber/voip/gallery/a/b;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/a/a;->a([Ljava/lang/String;)V

    .line 19
    const-string/jumbo v0, "1=1) GROUP BY (bucket_id"

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/a/a;->a(Ljava/lang/String;)V

    .line 20
    const-string/jumbo v0, "datetaken DESC"

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/a/a;->b(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/a/a;->e(I)Lcom/viber/voip/gallery/a/b;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/viber/voip/gallery/a/b;
    .locals 2
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/a/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/viber/voip/gallery/a/b;

    iget-object v1, p0, Lcom/viber/voip/gallery/a/a;->e:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lcom/viber/voip/gallery/a/b;-><init>(Landroid/database/Cursor;)V

    .line 28
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
