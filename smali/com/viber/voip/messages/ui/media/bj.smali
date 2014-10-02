.class public Lcom/viber/voip/messages/ui/media/bj;
.super Lcom/viber/voip/messages/ui/media/be;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/media/ba;


# instance fields
.field private a:Lcom/viber/voip/messages/ui/media/bl;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/be;-><init>()V

    .line 36
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;II)Lcom/viber/voip/messages/ui/media/bj;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/viber/voip/messages/ui/media/bj;

    invoke-direct {v0}, Lcom/viber/voip/messages/ui/media/bj;-><init>()V

    .line 40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 41
    const-string/jumbo v2, "media_uri"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    const-string/jumbo v2, "fragmentPosition"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/media/bj;->setArguments(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/bj;->a(I)V

    .line 45
    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/bj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "media_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/bl;->c:Landroid/widget/ImageView;

    const v2, 0x7f0900a8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 83
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/bl;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bl;->c:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/bj;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/bj;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/bj;->a(Ljava/lang/String;)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bl;->d:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/messages/ui/media/bk;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/media/bk;-><init>(Lcom/viber/voip/messages/ui/media/bj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bl;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bl;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/bl;->a(Lcom/viber/voip/messages/ui/media/bl;)V

    .line 133
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/bl;->a()V

    .line 143
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bl;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bl;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bl;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bl;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bl;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/bj;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/bj;->c()V

    .line 124
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    iget-object v1, v0, Lcom/viber/voip/messages/ui/media/bl;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    :goto_1
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/bj;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/bj;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public c()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/bl;->a()V

    .line 138
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bl;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/media/be;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/bj;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "fragmentPosition"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/media/bj;->b:I

    .line 58
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget v1, p0, Lcom/viber/voip/messages/ui/media/bj;->b:I

    invoke-virtual {v0, v1, p0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(ILcom/viber/voip/messages/ui/media/ba;)V

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    const v0, 0x7f03014a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/viber/voip/messages/ui/media/bl;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/messages/ui/media/bl;-><init>(Lcom/viber/voip/messages/ui/media/bj;Landroid/view/View;)V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/media/bj;->a:Lcom/viber/voip/messages/ui/media/bl;

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/media/bj;->a(Landroid/content/Context;)V

    .line 66
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/viber/voip/messages/ui/media/be;->onDestroy()V

    .line 51
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/bj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget v1, p0, Lcom/viber/voip/messages/ui/media/bj;->b:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(I)V

    .line 52
    return-void
.end method
