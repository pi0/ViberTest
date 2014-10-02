.class Lcom/viber/voip/messages/controller/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:J

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/viber/voip/messages/controller/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c;IJILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/viber/voip/messages/controller/e;->h:Lcom/viber/voip/messages/controller/c;

    iput p2, p0, Lcom/viber/voip/messages/controller/e;->a:I

    iput-wide p3, p0, Lcom/viber/voip/messages/controller/e;->b:J

    iput p5, p0, Lcom/viber/voip/messages/controller/e;->c:I

    iput-object p6, p0, Lcom/viber/voip/messages/controller/e;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/viber/voip/messages/controller/e;->e:Ljava/lang/String;

    iput-wide p8, p0, Lcom/viber/voip/messages/controller/e;->f:J

    iput-object p10, p0, Lcom/viber/voip/messages/controller/e;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 126
    iget-object v0, p0, Lcom/viber/voip/messages/controller/e;->h:Lcom/viber/voip/messages/controller/c;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/c;->a(Lcom/viber/voip/messages/controller/c;)Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/controller/e;->a:I

    iget-wide v2, p0, Lcom/viber/voip/messages/controller/e;->b:J

    iget v4, p0, Lcom/viber/voip/messages/controller/e;->c:I

    iget-object v5, p0, Lcom/viber/voip/messages/controller/e;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/viber/voip/messages/controller/e;->e:Ljava/lang/String;

    iget-wide v7, p0, Lcom/viber/voip/messages/controller/e;->f:J

    iget-object v9, p0, Lcom/viber/voip/messages/controller/e;->g:Ljava/lang/String;

    invoke-interface/range {v0 .. v9}, Lcom/viber/voip/messages/controller/GroupController;->a(IJILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 127
    return-void
.end method
