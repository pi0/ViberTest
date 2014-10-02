.class Lcom/viber/voip/messages/controller/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/q;


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/messages/controller/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/viber/voip/messages/controller/k;->c:Lcom/viber/voip/messages/controller/c;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/k;->a:J

    iput-boolean p4, p0, Lcom/viber/voip/messages/controller/k;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/GroupController;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/viber/voip/messages/controller/k;->a:J

    iget-boolean v2, p0, Lcom/viber/voip/messages/controller/k;->b:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/voip/messages/controller/GroupController;->a(JZ)V

    .line 60
    return-void
.end method
