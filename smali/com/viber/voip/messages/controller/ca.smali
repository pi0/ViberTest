.class Lcom/viber/voip/messages/controller/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/b/al;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field final synthetic b:Lcom/viber/voip/messages/controller/bz;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/bz;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/viber/voip/messages/controller/ca;->b:Lcom/viber/voip/messages/controller/bz;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/ca;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ca;->b:Lcom/viber/voip/messages/controller/bz;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/bz;->b:Lcom/viber/voip/messages/controller/by;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/controller/by;->a(Lcom/viber/voip/messages/controller/by;Lcom/viber/voip/util/b/al;)Lcom/viber/voip/util/b/al;

    .line 361
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ca;->b:Lcom/viber/voip/messages/controller/bz;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/bz;->b:Lcom/viber/voip/messages/controller/by;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/ca;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/controller/by;->a(Lcom/viber/voip/messages/controller/by;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 362
    return-void
.end method
