.class Lcom/viber/voip/messages/ui/chathead/a/p;
.super Lcom/viber/voip/ui/z;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/a/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/a/l;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a/p;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-direct {p0, p2}, Lcom/viber/voip/ui/z;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a/p;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->m()V

    .line 198
    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/ui/z;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
