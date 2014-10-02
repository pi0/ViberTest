.class Lcom/viber/voip/messages/conversation/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/g;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/conversation/ui/g;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/j;->a:Lcom/viber/voip/messages/conversation/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const v0, 0x7f070126

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/j;->e:Landroid/widget/ImageView;

    .line 147
    const v0, 0x7f070127

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/j;->b:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f070128

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/j;->c:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f070125

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/j;->d:Landroid/widget/TextView;

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/conversation/ui/g;Landroid/view/View;Lcom/viber/voip/messages/conversation/ui/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/conversation/ui/j;-><init>(Lcom/viber/voip/messages/conversation/ui/g;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/j;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/j;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/ui/j;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/j;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/conversation/ui/j;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/j;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/conversation/ui/j;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/j;->c:Landroid/widget/TextView;

    return-object v0
.end method
