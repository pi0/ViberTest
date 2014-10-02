.class Lcom/viber/voip/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/AddFriendActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/AddFriendActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/viber/voip/f;->a:Lcom/viber/voip/AddFriendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/viber/voip/f;->a:Lcom/viber/voip/AddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/AddFriendActivity;->a(Lcom/viber/voip/AddFriendActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/f;->a:Lcom/viber/voip/AddFriendActivity;

    invoke-static {v0}, Lcom/viber/voip/AddFriendActivity;->b(Lcom/viber/voip/AddFriendActivity;)V

    .line 76
    :cond_0
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
