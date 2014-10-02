.class public Lcom/viber/voip/util/hv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-string/jumbo v0, "http://viber-fake-uri.com"

    sput-object v0, Lcom/viber/voip/util/hv;->b:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/util/hv;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/pg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/hv;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/viber/voip/util/upload/s;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    sget-object v0, Lcom/viber/voip/util/upload/ak;->f:Lcom/viber/voip/util/upload/ak;

    const-string/jumbo v1, "jpg"

    invoke-static {p0, v0, v1, p1}, Lcom/viber/voip/util/hv;->a(Ljava/lang/String;Lcom/viber/voip/util/upload/ak;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/viber/voip/util/upload/ak;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    sget-object v0, Lcom/viber/voip/util/hv;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/util/upload/ak;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/util/hv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 29
    sget-object v0, Lcom/viber/voip/util/upload/ak;->d:Lcom/viber/voip/util/upload/ak;

    const-string/jumbo v1, "jpg"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/util/hv;->a(Ljava/lang/String;Lcom/viber/voip/util/upload/ak;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/net/Uri;)Lcom/viber/voip/util/hw;
    .locals 3
    .parameter

    .prologue
    .line 47
    new-instance v1, Lcom/viber/voip/util/hw;

    invoke-direct {v1}, Lcom/viber/voip/util/hw;-><init>()V

    .line 48
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 49
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/viber/voip/util/hw;->a:Ljava/lang/String;

    .line 50
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/upload/ak;->valueOf(Ljava/lang/String;)Lcom/viber/voip/util/upload/ak;

    move-result-object v0

    iput-object v0, v1, Lcom/viber/voip/util/hw;->b:Lcom/viber/voip/util/upload/ak;

    .line 51
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/viber/voip/util/hw;->c:Ljava/lang/String;

    .line 52
    const/4 v0, 0x4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/viber/voip/util/hw;->d:I

    .line 53
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 33
    sget-object v0, Lcom/viber/voip/util/upload/ak;->e:Lcom/viber/voip/util/upload/ak;

    const-string/jumbo v1, "jpg"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/util/hv;->a(Ljava/lang/String;Lcom/viber/voip/util/upload/ak;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
