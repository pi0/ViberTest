.class Lcom/viber/voip/messages/controller/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/q;


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/messages/controller/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/viber/voip/messages/controller/p;->c:Lcom/viber/voip/messages/controller/c;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/p;->a:J

    iput p4, p0, Lcom/viber/voip/messages/controller/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/GroupController;)V
    .locals 3
    .parameter

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/viber/voip/messages/controller/p;->a:J

    iget v2, p0, Lcom/viber/voip/messages/controller/p;->b:I

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/voip/messages/controller/GroupController;->a(JI)V

    .line 115
    return-void
.end method
