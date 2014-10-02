.class Lcom/viber/voip/util/upload/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Lcom/viber/voip/util/upload/ak;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/viber/voip/util/upload/ak;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/viber/voip/util/upload/al;->a:Landroid/net/Uri;

    .line 79
    iput-object p2, p0, Lcom/viber/voip/util/upload/al;->b:Lcom/viber/voip/util/upload/ak;

    .line 80
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 89
    check-cast p1, Lcom/viber/voip/util/upload/al;

    .line 90
    iget-object v0, p0, Lcom/viber/voip/util/upload/al;->a:Landroid/net/Uri;

    iget-object v1, p1, Lcom/viber/voip/util/upload/al;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/util/upload/al;->b:Lcom/viber/voip/util/upload/ak;

    iget-object v1, p1, Lcom/viber/voip/util/upload/al;->b:Lcom/viber/voip/util/upload/ak;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/upload/ak;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/viber/voip/util/upload/al;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/util/upload/al;->b:Lcom/viber/voip/util/upload/ak;

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
