.class Lcom/viber/voip/messages/ui/media/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/ProgressBar;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/view/View;

.field final synthetic e:Lcom/viber/voip/messages/ui/media/bj;

.field private f:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Lcom/viber/voip/messages/ui/media/bj;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/bl;->e:Lcom/viber/voip/messages/ui/media/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Lcom/viber/voip/messages/ui/media/bm;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/media/bm;-><init>(Lcom/viber/voip/messages/ui/media/bl;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bl;->f:Ljava/lang/Runnable;

    .line 155
    const v0, 0x7f070415

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bl;->a:Landroid/widget/ProgressBar;

    .line 156
    const v0, 0x7f070416

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bl;->b:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f070291

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bl;->c:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f070210

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bl;->d:Landroid/view/View;

    .line 159
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/bl;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/bl;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bl;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bl;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 172
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bl;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bl;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 176
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bl;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bl;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 177
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bl;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bl;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    return-void
.end method
