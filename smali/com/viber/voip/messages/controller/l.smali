.class Lcom/viber/voip/messages/controller/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/q;


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
    .line 66
    iput-object p1, p0, Lcom/viber/voip/messages/controller/l;->c:Lcom/viber/voip/messages/controller/c;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/l;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/controller/l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/GroupController;)V
    .locals 3
    .parameter

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/viber/voip/messages/controller/l;->a:J

    iget-object v2, p0, Lcom/viber/voip/messages/controller/l;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/voip/messages/controller/GroupController;->a(JLjava/lang/String;)V

    .line 71
    return-void
.end method
