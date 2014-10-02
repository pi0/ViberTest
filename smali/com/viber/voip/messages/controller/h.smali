.class Lcom/viber/voip/messages/controller/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Lcom/viber/voip/messages/controller/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c;IJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/viber/voip/messages/controller/h;->d:Lcom/viber/voip/messages/controller/c;

    iput p2, p0, Lcom/viber/voip/messages/controller/h;->a:I

    iput-wide p3, p0, Lcom/viber/voip/messages/controller/h;->b:J

    iput p5, p0, Lcom/viber/voip/messages/controller/h;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 157
    iget-object v0, p0, Lcom/viber/voip/messages/controller/h;->d:Lcom/viber/voip/messages/controller/c;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/c;->a(Lcom/viber/voip/messages/controller/c;)Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/controller/h;->a:I

    iget-wide v2, p0, Lcom/viber/voip/messages/controller/h;->b:J

    iget v4, p0, Lcom/viber/voip/messages/controller/h;->c:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/GroupController;->a(IJI)V

    .line 158
    return-void
.end method
