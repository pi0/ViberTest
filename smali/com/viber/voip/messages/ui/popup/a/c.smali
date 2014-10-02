.class Lcom/viber/voip/messages/ui/popup/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/ImageView;

.field protected c:Lcom/viber/voip/messages/conversation/an;

.field final synthetic d:Lcom/viber/voip/messages/ui/popup/a/a;

.field private e:I


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/popup/a/a;Landroid/view/View;ILcom/viber/voip/messages/conversation/an;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 133
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/a/c;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const v0, 0x7f0702b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/c;->a:Landroid/widget/ImageView;

    .line 135
    const v0, 0x7f0702b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/c;->b:Landroid/widget/ImageView;

    .line 137
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/c;->a:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/viber/voip/messages/ui/popup/a/a;->a(Lcom/viber/voip/messages/ui/popup/a/a;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/c;->b:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/viber/voip/messages/ui/popup/a/a;->a(Lcom/viber/voip/messages/ui/popup/a/a;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iput p3, p0, Lcom/viber/voip/messages/ui/popup/a/c;->e:I

    .line 141
    iput-object p4, p0, Lcom/viber/voip/messages/ui/popup/a/c;->c:Lcom/viber/voip/messages/conversation/an;

    .line 143
    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/a/c;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/popup/a/a;->f()Lcom/viber/voip/messages/conversation/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/c;->a:Landroid/widget/ImageView;

    if-nez p3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    return-void

    :cond_0
    move v0, v2

    .line 143
    goto :goto_0

    :cond_1
    move v1, v2

    .line 144
    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/popup/a/a;Landroid/view/View;ILcom/viber/voip/messages/conversation/an;Lcom/viber/voip/messages/ui/popup/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/messages/ui/popup/a/c;-><init>(Lcom/viber/voip/messages/ui/popup/a/a;Landroid/view/View;ILcom/viber/voip/messages/conversation/an;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/messages/conversation/an;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/c;->c:Lcom/viber/voip/messages/conversation/an;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/viber/voip/messages/ui/popup/a/c;->e:I

    return v0
.end method
