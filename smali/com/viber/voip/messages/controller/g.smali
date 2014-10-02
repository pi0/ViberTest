.class Lcom/viber/voip/messages/controller/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/messages/controller/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/viber/voip/messages/controller/g;->c:Lcom/viber/voip/messages/controller/c;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/g;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/controller/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/viber/voip/messages/controller/g;->c:Lcom/viber/voip/messages/controller/c;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/c;->a(Lcom/viber/voip/messages/controller/c;)Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/controller/g;->a:J

    iget-object v3, p0, Lcom/viber/voip/messages/controller/g;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/GroupController;->b(JLjava/lang/String;)V

    .line 148
    return-void
.end method
