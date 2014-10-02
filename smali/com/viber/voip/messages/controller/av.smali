.class Lcom/viber/voip/messages/controller/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/viber/voip/messages/controller/aa;

.field final synthetic c:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;Ljava/util/Set;Lcom/viber/voip/messages/controller/aa;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/viber/voip/messages/controller/av;->c:Lcom/viber/voip/messages/controller/ak;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/av;->a:Ljava/util/Set;

    iput-object p3, p0, Lcom/viber/voip/messages/controller/av;->b:Lcom/viber/voip/messages/controller/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/controller/av;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/av;->b:Lcom/viber/voip/messages/controller/aa;

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/messages/controller/x;->a(Ljava/util/Set;Lcom/viber/voip/messages/controller/aa;)V

    .line 46
    return-void
.end method
