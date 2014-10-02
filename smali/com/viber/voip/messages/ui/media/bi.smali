.class public Lcom/viber/voip/messages/ui/media/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/ProgressBar;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const v0, 0x7f070070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    .line 128
    const v0, 0x7f070413

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->b:Landroid/widget/ImageView;

    .line 129
    const v0, 0x7f070414

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->c:Landroid/widget/ImageView;

    .line 130
    const v0, 0x7f070415

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->d:Landroid/widget/ProgressBar;

    .line 131
    const v0, 0x7f070416

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->e:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f070419

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->f:Landroid/widget/TextView;

    .line 133
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 142
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bi;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    return-void
.end method
