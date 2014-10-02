.class Lcom/viber/voip/messages/ui/popup/j;
.super Lcom/viber/voip/stickers/al;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 911
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/j;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-direct {p0}, Lcom/viber/voip/stickers/al;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/stickers/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 914
    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/j;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->u(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    .line 917
    :cond_0
    return-void
.end method
