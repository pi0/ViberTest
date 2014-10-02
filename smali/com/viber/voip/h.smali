.class Lcom/viber/voip/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/AddFriendPreview;


# direct methods
.method constructor <init>(Lcom/viber/voip/AddFriendPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/viber/voip/h;->a:Lcom/viber/voip/AddFriendPreview;

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
    .line 129
    packed-switch p2, :pswitch_data_0

    .line 134
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/h;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-static {v0}, Lcom/viber/voip/AddFriendPreview;->b(Lcom/viber/voip/AddFriendPreview;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/h;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-static {v0}, Lcom/viber/voip/AddFriendPreview;->a(Lcom/viber/voip/AddFriendPreview;)V

    .line 132
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
