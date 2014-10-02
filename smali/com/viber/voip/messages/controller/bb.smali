.class Lcom/viber/voip/messages/controller/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/messages/controller/z;

.field final synthetic c:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;ZLcom/viber/voip/messages/controller/z;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/viber/voip/messages/controller/bb;->c:Lcom/viber/voip/messages/controller/ak;

    iput-boolean p2, p0, Lcom/viber/voip/messages/controller/bb;->a:Z

    iput-object p3, p0, Lcom/viber/voip/messages/controller/bb;->b:Lcom/viber/voip/messages/controller/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 2
    .parameter

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/viber/voip/messages/controller/bb;->a:Z

    iget-object v1, p0, Lcom/viber/voip/messages/controller/bb;->b:Lcom/viber/voip/messages/controller/z;

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/messages/controller/x;->a(ZLcom/viber/voip/messages/controller/z;)V

    .line 313
    return-void
.end method
