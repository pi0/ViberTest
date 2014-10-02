.class Lcom/viber/voip/messages/controller/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;Lcom/viber/voip/calls/entities/impl/CallEntityImpl;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/viber/voip/messages/controller/ao;->c:Lcom/viber/voip/messages/controller/ak;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/ao;->a:Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    iput p3, p0, Lcom/viber/voip/messages/controller/ao;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/viber/voip/messages/controller/ao;->a:Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    iget v1, p0, Lcom/viber/voip/messages/controller/ao;->b:I

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;I)V

    .line 155
    return-void
.end method
