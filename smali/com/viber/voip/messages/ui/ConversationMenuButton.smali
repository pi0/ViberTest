.class public Lcom/viber/voip/messages/ui/ConversationMenuButton;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget-object v0, Lcom/viber/voip/bb;->ConversationMenuButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/ConversationMenuButton;->a:I

    .line 25
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/ui/ConversationMenuButton;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ConversationMenuButton;->a()V

    .line 29
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const v3, 0x7f070070

    .line 32
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030010

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 33
    invoke-virtual {p0, v3}, Lcom/viber/voip/messages/ui/ConversationMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ConversationMenuButton;->c:Landroid/widget/ImageView;

    .line 34
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationMenuButton;->c:Landroid/widget/ImageView;

    iget v1, p0, Lcom/viber/voip/messages/ui/ConversationMenuButton;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    const v0, 0x7f0700ac

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/ConversationMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ConversationMenuButton;->d:Landroid/widget/TextView;

    .line 36
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationMenuButton;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ConversationMenuButton;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationMenuButton;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 38
    return-void
.end method
