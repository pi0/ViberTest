.class Lcom/viber/voip/messages/controller/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/q;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/viber/voip/messages/controller/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/viber/voip/messages/controller/j;->d:Lcom/viber/voip/messages/controller/c;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/j;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/controller/j;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/voip/messages/controller/j;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/GroupController;)V
    .locals 4
    .parameter

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/viber/voip/messages/controller/j;->a:J

    iget-object v2, p0, Lcom/viber/voip/messages/controller/j;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/messages/controller/j;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/GroupController;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
