.class Lcom/viber/voip/messages/controller/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/c/al;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/m;->c:Lcom/viber/voip/messages/controller/c/e;

    iput p2, p0, Lcom/viber/voip/messages/controller/c/m;->a:I

    iput p3, p0, Lcom/viber/voip/messages/controller/c/m;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/dc;)V
    .locals 2
    .parameter

    .prologue
    .line 336
    iget v0, p0, Lcom/viber/voip/messages/controller/c/m;->a:I

    iget v1, p0, Lcom/viber/voip/messages/controller/c/m;->b:I

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/messages/controller/dc;->a(II)V

    .line 337
    return-void
.end method
