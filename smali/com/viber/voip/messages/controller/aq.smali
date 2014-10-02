.class Lcom/viber/voip/messages/controller/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/messages/controller/aa;

.field final synthetic d:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;Ljava/util/Set;ZLcom/viber/voip/messages/controller/aa;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/viber/voip/messages/controller/aq;->d:Lcom/viber/voip/messages/controller/ak;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/aq;->a:Ljava/util/Set;

    iput-boolean p3, p0, Lcom/viber/voip/messages/controller/aq;->b:Z

    iput-object p4, p0, Lcom/viber/voip/messages/controller/aq;->c:Lcom/viber/voip/messages/controller/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 3
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/viber/voip/messages/controller/aq;->a:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/viber/voip/messages/controller/aq;->b:Z

    iget-object v2, p0, Lcom/viber/voip/messages/controller/aq;->c:Lcom/viber/voip/messages/controller/aa;

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/voip/messages/controller/x;->a(Ljava/util/Set;ZLcom/viber/voip/messages/controller/aa;)V

    .line 188
    return-void
.end method
