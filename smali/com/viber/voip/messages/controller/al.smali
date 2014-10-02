.class Lcom/viber/voip/messages/controller/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/bx;

.field final synthetic b:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;Lcom/viber/voip/messages/controller/bx;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/viber/voip/messages/controller/al;->b:Lcom/viber/voip/messages/controller/ak;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/al;->a:Lcom/viber/voip/messages/controller/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/messages/controller/al;->a:Lcom/viber/voip/messages/controller/bx;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/al;->b:Lcom/viber/voip/messages/controller/ak;

    invoke-static {v1}, Lcom/viber/voip/messages/controller/ak;->a(Lcom/viber/voip/messages/controller/ak;)Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/bx;->a(Lcom/viber/voip/messages/controller/x;)V

    .line 35
    return-void
.end method
