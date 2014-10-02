.class Lcom/viber/voip/backgrounds/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/ac;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/viber/voip/backgrounds/ui/b;->b:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    iput-wide p2, p0, Lcom/viber/voip/backgrounds/ui/b;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V
    .locals 3
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/b;->b:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    iget-wide v1, p0, Lcom/viber/voip/backgrounds/ui/b;->a:J

    invoke-static {v0, p1, v1, v2}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;J)V

    .line 326
    return-void
.end method
