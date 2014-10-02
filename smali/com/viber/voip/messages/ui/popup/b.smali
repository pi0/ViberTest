.class Lcom/viber/voip/messages/ui/popup/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/b;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/b;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->b(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    .line 145
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/b;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->c(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    .line 146
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/b;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/ui/popup/n;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->c()V

    .line 147
    return-void
.end method
