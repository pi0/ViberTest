.class Lcom/viber/voip/messages/controller/a/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/b;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/messages/controller/a/p;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/p;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/x;->b:Lcom/viber/voip/messages/controller/a/p;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/x;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/x;->b:Lcom/viber/voip/messages/controller/a/p;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/p;->c(Lcom/viber/voip/messages/controller/a/p;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/controller/a/y;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/controller/a/y;-><init>(Lcom/viber/voip/messages/controller/a/x;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    return-void
.end method
