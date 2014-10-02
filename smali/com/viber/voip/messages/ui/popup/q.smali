.class Lcom/viber/voip/messages/ui/popup/q;
.super Lcom/viber/voip/messages/ui/dz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

.field final synthetic b:Lcom/viber/voip/messages/ui/popup/n;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/popup/n;Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/q;->b:Lcom/viber/voip/messages/ui/popup/n;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/popup/q;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/dz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 478
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/q;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->r:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->j(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    .line 479
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/q;->b:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->r:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->finish()V

    .line 480
    return-void
.end method
