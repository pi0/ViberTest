.class Lcom/viber/voip/messages/controller/c/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/c/ak;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;Ljava/util/Set;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/ah;->c:Lcom/viber/voip/messages/controller/c/e;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/c/ah;->a:Ljava/util/Set;

    iput-boolean p3, p0, Lcom/viber/voip/messages/controller/c/ah;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/da;)V
    .locals 2
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/ah;->a:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/viber/voip/messages/controller/c/ah;->b:Z

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/messages/controller/da;->b(Ljava/util/Set;Z)V

    .line 237
    return-void
.end method
