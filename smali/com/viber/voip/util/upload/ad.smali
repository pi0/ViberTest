.class final Lcom/viber/voip/util/upload/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/upload/p;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/viber/voip/util/upload/p;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/viber/voip/util/upload/p;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/viber/voip/util/upload/ad;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/viber/voip/util/upload/ad;->b:Lcom/viber/voip/util/upload/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/viber/voip/util/upload/ad;->b:Lcom/viber/voip/util/upload/p;

    invoke-interface {v0, p1}, Lcom/viber/voip/util/upload/p;->a(Landroid/net/Uri;)V

    .line 159
    return-void
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/viber/voip/util/upload/ad;->b:Lcom/viber/voip/util/upload/p;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/util/upload/p;->a(Landroid/net/Uri;I)V

    .line 169
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 153
    new-instance v0, Lcom/viber/voip/util/upload/ai;

    iget-object v1, p0, Lcom/viber/voip/util/upload/ad;->a:Landroid/net/Uri;

    sget-object v2, Lcom/viber/voip/util/upload/ak;->c:Lcom/viber/voip/util/upload/ak;

    const/4 v3, 0x0

    const-string/jumbo v4, "image"

    iget-object v6, p0, Lcom/viber/voip/util/upload/ad;->b:Lcom/viber/voip/util/upload/p;

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/util/upload/ai;-><init>(Landroid/net/Uri;Lcom/viber/voip/util/upload/ak;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/upload/p;)V

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->a(Lcom/viber/voip/util/upload/ah;)V

    .line 154
    return-void
.end method
