.class Lcom/viber/voip/messages/controller/c/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/c/al;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/o;->b:Lcom/viber/voip/messages/controller/c/e;

    iput p2, p0, Lcom/viber/voip/messages/controller/c/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/dc;)V
    .locals 1
    .parameter

    .prologue
    .line 356
    iget v0, p0, Lcom/viber/voip/messages/controller/c/o;->a:I

    invoke-interface {p1, v0}, Lcom/viber/voip/messages/controller/dc;->a(I)V

    .line 357
    return-void
.end method
