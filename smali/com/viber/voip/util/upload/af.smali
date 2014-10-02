.class final Lcom/viber/voip/util/upload/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/upload/p;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/upload/p;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/upload/p;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/viber/voip/util/upload/af;->a:Lcom/viber/voip/util/upload/p;

    iput-object p2, p0, Lcom/viber/voip/util/upload/af;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/viber/voip/util/upload/af;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/viber/voip/util/upload/af;->a:Lcom/viber/voip/util/upload/p;

    iget-object v1, p0, Lcom/viber/voip/util/upload/af;->b:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/viber/voip/util/upload/p;->a(Landroid/net/Uri;)V

    .line 241
    return-void
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/viber/voip/util/upload/af;->a:Lcom/viber/voip/util/upload/p;

    iget-object v1, p0, Lcom/viber/voip/util/upload/af;->b:Landroid/net/Uri;

    invoke-interface {v0, v1, p2}, Lcom/viber/voip/util/upload/p;->a(Landroid/net/Uri;I)V

    .line 237
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/viber/voip/util/upload/af;->a:Lcom/viber/voip/util/upload/p;

    iget-object v1, p0, Lcom/viber/voip/util/upload/af;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/voip/util/upload/af;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/util/upload/p;->a(Landroid/net/Uri;Ljava/lang/String;)V

    .line 245
    return-void
.end method
