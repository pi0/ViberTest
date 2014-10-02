.class Lcom/viber/voip/messages/controller/c/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/c/am;

.field final synthetic b:Lcom/viber/voip/messages/controller/de;

.field final synthetic c:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;Lcom/viber/voip/messages/controller/c/am;Lcom/viber/voip/messages/controller/de;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/x;->c:Lcom/viber/voip/messages/controller/c/e;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/c/x;->a:Lcom/viber/voip/messages/controller/c/am;

    iput-object p3, p0, Lcom/viber/voip/messages/controller/c/x;->b:Lcom/viber/voip/messages/controller/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/x;->a:Lcom/viber/voip/messages/controller/c/am;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/x;->b:Lcom/viber/voip/messages/controller/de;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/c/am;->a(Lcom/viber/voip/messages/controller/de;)V

    .line 461
    return-void
.end method
