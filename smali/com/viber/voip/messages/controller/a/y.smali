.class Lcom/viber/voip/messages/controller/a/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcom/viber/voip/messages/controller/a/x;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/x;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/y;->b:Lcom/viber/voip/messages/controller/a/x;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/a/y;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 461
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/y;->b:Lcom/viber/voip/messages/controller/a/x;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/x;->b:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/p;->b(Lcom/viber/voip/messages/controller/a/p;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/y;->b:Lcom/viber/voip/messages/controller/a/x;

    iget-wide v1, v1, Lcom/viber/voip/messages/controller/a/x;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_0

    .line 464
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/y;->a:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 465
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/y;->a:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setLocation(Landroid/location/Location;)V

    .line 471
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 472
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 473
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/y;->b:Lcom/viber/voip/messages/controller/a/x;

    iget-object v1, v1, Lcom/viber/voip/messages/controller/a/x;->b:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v1}, Lcom/viber/voip/messages/controller/a/p;->b(Lcom/viber/voip/messages/controller/a/p;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 474
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/y;->b:Lcom/viber/voip/messages/controller/a/x;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/x;->b:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/p;->a(Lcom/viber/voip/messages/controller/a/p;)V

    .line 476
    :cond_0
    return-void

    .line 467
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/y;->b:Lcom/viber/voip/messages/controller/a/x;

    iget-object v1, v1, Lcom/viber/voip/messages/controller/a/x;->b:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v1}, Lcom/viber/voip/messages/controller/a/p;->e(Lcom/viber/voip/messages/controller/a/p;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.viber.voip.action.SEND_NO_LOCATION_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
