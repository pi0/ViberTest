.class public Lcom/viber/voip/messages/conversation/ui/g;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/viber/voip/messages/conversation/ui/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/g;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/g;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/ui/g;->setStyle(II)V

    .line 36
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/g;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    check-cast v0, [Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

    check-cast v0, [Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

    .line 39
    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/g;->dismiss()V

    .line 43
    :cond_0
    new-instance v1, Lcom/viber/voip/messages/conversation/ui/i;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/viber/voip/messages/conversation/ui/i;-><init>(Lcom/viber/voip/messages/conversation/ui/g;Landroid/content/Context;[Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)V

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/ui/g;->c:Lcom/viber/voip/messages/conversation/ui/i;

    .line 44
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/g;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_calls"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    const v0, 0x7f030031

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/g;->a:Landroid/view/LayoutInflater;

    .line 51
    const v0, 0x7f070123

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/g;->b:Landroid/widget/ListView;

    .line 52
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/g;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/g;->c:Lcom/viber/voip/messages/conversation/ui/i;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    return-object v1
.end method
