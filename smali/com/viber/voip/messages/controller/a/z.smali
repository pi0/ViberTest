.class Lcom/viber/voip/messages/controller/a/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/viber/voip/messages/controller/a/p;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/p;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/z;->d:Lcom/viber/voip/messages/controller/a/p;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/z;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/controller/a/z;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/voip/messages/controller/a/z;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 583
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/z;->d:Lcom/viber/voip/messages/controller/a/p;

    iget-wide v1, p0, Lcom/viber/voip/messages/controller/a/z;->a:J

    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/z;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/voip/messages/controller/a/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/a/p;->b(JLjava/lang/String;Ljava/lang/String;)V

    .line 584
    return-void
.end method
