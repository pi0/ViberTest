.class Lcom/viber/voip/messages/controller/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/viber/voip/messages/extras/image/a;

.field final synthetic d:Lcom/viber/voip/messages/controller/ck;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ck;JLandroid/net/Uri;Lcom/viber/voip/messages/extras/image/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/viber/voip/messages/controller/cl;->d:Lcom/viber/voip/messages/controller/ck;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/cl;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/controller/cl;->b:Landroid/net/Uri;

    iput-object p5, p0, Lcom/viber/voip/messages/controller/cl;->c:Lcom/viber/voip/messages/extras/image/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cl;->d:Lcom/viber/voip/messages/controller/ck;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/ck;->b:Lcom/viber/voip/messages/controller/cn;

    iget-wide v1, p0, Lcom/viber/voip/messages/controller/cl;->a:J

    iget-object v3, p0, Lcom/viber/voip/messages/controller/cl;->b:Landroid/net/Uri;

    iget-object v4, p0, Lcom/viber/voip/messages/controller/cl;->c:Lcom/viber/voip/messages/extras/image/a;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/cn;->a(JLandroid/net/Uri;Lcom/viber/voip/messages/extras/image/a;)V

    .line 153
    return-void
.end method
