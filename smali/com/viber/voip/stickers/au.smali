.class Lcom/viber/voip/stickers/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/as;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/as;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/viber/voip/stickers/au;->a:Lcom/viber/voip/stickers/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/stickers/au;->a:Lcom/viber/voip/stickers/as;

    invoke-static {v0}, Lcom/viber/voip/stickers/as;->b(Lcom/viber/voip/stickers/as;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 71
    invoke-static {v0}, Lcom/viber/voip/stickers/c/e;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 72
    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/viber/voip/stickers/au;->a:Lcom/viber/voip/stickers/as;

    invoke-static {v2, v0}, Lcom/viber/voip/stickers/as;->a(Lcom/viber/voip/stickers/as;I)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method
