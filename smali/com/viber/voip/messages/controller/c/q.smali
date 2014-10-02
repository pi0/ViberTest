.class Lcom/viber/voip/messages/controller/c/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/c/am;


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
    .line 150
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/q;->c:Lcom/viber/voip/messages/controller/c/e;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/c/q;->a:Ljava/util/Set;

    iput-boolean p3, p0, Lcom/viber/voip/messages/controller/c/q;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/de;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/q;->a:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/viber/voip/messages/controller/c/q;->b:Z

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/messages/controller/de;->b(Ljava/util/Set;Z)V

    .line 155
    return-void
.end method
