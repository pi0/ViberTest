.class Lcom/viber/voip/messages/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/t;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/k;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/k;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/viber/voip/messages/ui/l;->a:Lcom/viber/voip/messages/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/ui/bf;)V
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/viber/voip/messages/ui/l;->a:Lcom/viber/voip/messages/ui/k;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/k;->a(Lcom/viber/voip/messages/ui/k;)Lcom/viber/voip/messages/ui/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/viber/voip/messages/ui/l;->a:Lcom/viber/voip/messages/ui/k;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/k;->a(Lcom/viber/voip/messages/ui/k;)Lcom/viber/voip/messages/ui/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/ui/p;->a(Lcom/viber/voip/messages/ui/bf;)V

    .line 172
    :cond_0
    return-void
.end method
