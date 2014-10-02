.class Lcom/viber/voip/messages/extras/fb/x;
.super Lcom/viber/voip/messages/extras/fb/ad;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/viber/voip/messages/extras/fb/s;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/fb/s;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/x;->g:Lcom/viber/voip/messages/extras/fb/s;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/fb/x;->a:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/viber/voip/messages/extras/fb/x;->b:J

    iput-object p5, p0, Lcom/viber/voip/messages/extras/fb/x;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/viber/voip/messages/extras/fb/x;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/viber/voip/messages/extras/fb/x;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/viber/voip/messages/extras/fb/x;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizationSuccess(Z)V
    .locals 8
    .parameter

    .prologue
    .line 555
    if-eqz p1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/x;->g:Lcom/viber/voip/messages/extras/fb/s;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/x;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/viber/voip/messages/extras/fb/x;->b:J

    iget-object v4, p0, Lcom/viber/voip/messages/extras/fb/x;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/voip/messages/extras/fb/x;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/viber/voip/messages/extras/fb/x;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/viber/voip/messages/extras/fb/x;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/s;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_0
    return-void
.end method
