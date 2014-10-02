.class Lcom/viber/voip/contacts/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/a/h;->b:Landroid/widget/TextView;

    .line 51
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/a/h;->a:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0701ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/contacts/a/h;->c:Landroid/widget/ImageView;

    .line 53
    const v0, 0x7f0701cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/contacts/a/h;->d:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0701cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/a/h;->e:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0701cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/h;->f:Landroid/view/View;

    .line 56
    const v0, 0x7f0701c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/a/h;->g:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0701c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/h;->h:Landroid/view/View;

    .line 58
    const v0, 0x7f0701ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/h;->i:Landroid/view/View;

    .line 59
    const v0, 0x7f0701cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/viber/voip/contacts/a/h;->j:Landroid/widget/LinearLayout;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/a/h;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viber/voip/contacts/a/h;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/contacts/a/h;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viber/voip/contacts/a/h;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/contacts/a/h;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viber/voip/contacts/a/h;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/contacts/a/h;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viber/voip/contacts/a/h;->h:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method a(I)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/viber/voip/contacts/a/h;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/viber/voip/contacts/a/h;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    return-void
.end method
