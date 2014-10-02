.class Lcom/viber/voip/messages/controller/c/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/c/aj;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/w;->b:Lcom/viber/voip/messages/controller/c/e;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/c/w;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/cz;)V
    .locals 1
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/w;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Lcom/viber/voip/messages/controller/cz;->a(Ljava/util/Set;)V

    .line 447
    return-void
.end method
