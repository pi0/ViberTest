.class Lcom/viber/voip/messages/ui/popup/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/popup/k;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/popup/k;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/l;->a:Lcom/viber/voip/messages/ui/popup/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/l;->a:Lcom/viber/voip/messages/ui/popup/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/popup/k;->a(Lcom/viber/voip/messages/ui/popup/k;Z)Z

    .line 807
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/l;->a:Lcom/viber/voip/messages/ui/popup/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/popup/k;->b(Lcom/viber/voip/messages/ui/popup/k;Z)Z

    .line 808
    return-void
.end method
