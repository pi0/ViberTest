.class Lcom/viber/voip/messages/extras/twitter/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/viber/voip/messages/extras/twitter/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/p;->f:Lcom/viber/voip/messages/extras/twitter/l;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/twitter/p;->a:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/viber/voip/messages/extras/twitter/p;->b:J

    iput-object p5, p0, Lcom/viber/voip/messages/extras/twitter/p;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/viber/voip/messages/extras/twitter/p;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/viber/voip/messages/extras/twitter/p;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 250
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/p;->f:Lcom/viber/voip/messages/extras/twitter/l;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/p;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/viber/voip/messages/extras/twitter/p;->b:J

    iget-object v4, p0, Lcom/viber/voip/messages/extras/twitter/p;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/voip/messages/extras/twitter/p;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/viber/voip/messages/extras/twitter/p;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method
