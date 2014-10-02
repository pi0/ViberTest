.class Lcom/viber/voip/messages/ui/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/b/al;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/view/c;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/ui/view/c;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/viber/voip/messages/ui/view/e;->a:Lcom/viber/voip/messages/ui/view/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p2, p0, Lcom/viber/voip/messages/ui/view/e;->b:Landroid/widget/ImageView;

    .line 339
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/e;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 346
    :cond_0
    return-void
.end method
