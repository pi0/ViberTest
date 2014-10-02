.class Lcom/viber/voip/messages/adapters/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/b/al;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/adapters/MediaLayout;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/adapters/MediaLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/e;->a:Lcom/viber/voip/messages/adapters/MediaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/e;->a:Lcom/viber/voip/messages/adapters/MediaLayout;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/MediaLayout;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 279
    return-void
.end method
