.class Lcom/viber/voip/messages/ui/popup/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/popup/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/popup/h;)V
    .locals 0
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/i;->a:Lcom/viber/voip/messages/ui/popup/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/i;->a:Lcom/viber/voip/messages/ui/popup/h;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/h;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->c(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    .line 849
    return-void
.end method
