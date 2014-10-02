.class Lcom/viber/voip/messages/conversation/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/RelativeLayout;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field final synthetic f:Lcom/viber/voip/messages/conversation/ui/b;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/conversation/ui/b;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/e;->f:Lcom/viber/voip/messages/conversation/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const v0, 0x7f0701fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/e;->a:Landroid/widget/RelativeLayout;

    .line 102
    const v0, 0x7f0701fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/e;->b:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f070200

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/e;->c:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f0701fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/e;->d:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0701ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/e;->e:Landroid/widget/TextView;

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/conversation/ui/b;Landroid/view/View;Lcom/viber/voip/messages/conversation/ui/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/conversation/ui/e;-><init>(Lcom/viber/voip/messages/conversation/ui/b;Landroid/view/View;)V

    return-void
.end method
