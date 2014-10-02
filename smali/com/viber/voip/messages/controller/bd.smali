.class Lcom/viber/voip/messages/controller/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/viber/voip/messages/controller/ab;

.field final synthetic e:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;Ljava/lang/String;Ljava/lang/String;ZLcom/viber/voip/messages/controller/ab;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/viber/voip/messages/controller/bd;->e:Lcom/viber/voip/messages/controller/ak;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/bd;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/messages/controller/bd;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/viber/voip/messages/controller/bd;->c:Z

    iput-object p5, p0, Lcom/viber/voip/messages/controller/bd;->d:Lcom/viber/voip/messages/controller/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 4
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/viber/voip/messages/controller/bd;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/bd;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/viber/voip/messages/controller/bd;->c:Z

    iget-object v3, p0, Lcom/viber/voip/messages/controller/bd;->d:Lcom/viber/voip/messages/controller/ab;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/x;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/viber/voip/messages/controller/ab;)V

    .line 333
    return-void
.end method
