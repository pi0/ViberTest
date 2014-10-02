.class public Lcom/viber/voip/contacts/ui/bu;
.super Lcom/viber/voip/ui/e;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public o:Lcom/viber/voip/ui/ViberTextView;

.field public p:Landroid/widget/ProgressBar;

.field public q:Landroid/view/View;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/view/View;

.field public t:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/viber/voip/contacts/ui/bu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/ui/bu;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/viber/voip/ui/e;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/contacts/ui/bu;->b:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/viber/voip/ui/e;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/contacts/ui/bu;->b:I

    .line 57
    const v0, 0x7f0701f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/bu;->q:Landroid/view/View;

    .line 58
    const v0, 0x7f0701f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/bu;->r:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0701fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/ViberTextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/bu;->o:Lcom/viber/voip/ui/ViberTextView;

    .line 60
    const v0, 0x7f0701fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/bu;->p:Landroid/widget/ProgressBar;

    .line 61
    return-void
.end method


# virtual methods
.method public a(IIZZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 98
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/bu;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/viber/voip/contacts/ui/bu;->b(Z)V

    .line 103
    if-eqz p4, :cond_1

    .line 104
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p5}, Lcom/viber/voip/contacts/ui/bu;->a(IZ)V

    goto :goto_0

    .line 107
    :cond_1
    if-eqz p3, :cond_2

    .line 108
    invoke-virtual {p0, v3, p5}, Lcom/viber/voip/contacts/ui/bu;->a(IZ)V

    goto :goto_0

    .line 111
    :cond_2
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0
    invoke-virtual {p0, v0, p5}, Lcom/viber/voip/contacts/ui/bu;->a(IZ)V

    goto :goto_0

    .line 117
    :pswitch_1
    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {p0, v0, p5}, Lcom/viber/voip/contacts/ui/bu;->a(IZ)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 120
    :pswitch_2
    if-nez p1, :cond_4

    const/4 v1, 0x5

    :cond_4
    invoke-virtual {p0, v1, p5}, Lcom/viber/voip/contacts/ui/bu;->a(IZ)V

    goto :goto_0

    .line 123
    :pswitch_3
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 125
    :pswitch_4
    invoke-virtual {p0, v3, p5}, Lcom/viber/voip/contacts/ui/bu;->a(IZ)V

    goto :goto_0

    .line 128
    :pswitch_5
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p5}, Lcom/viber/voip/contacts/ui/bu;->a(IZ)V

    goto :goto_0

    .line 131
    :pswitch_6
    invoke-virtual {p0, v1, p5}, Lcom/viber/voip/contacts/ui/bu;->a(IZ)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 123
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public a(IZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/bu;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bu;->k:Landroid/view/View;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bu;->m:Landroid/view/View;

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bu;->l:Landroid/view/View;

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bu;->j:Landroid/view/View;

    if-ne p1, v4, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bu;->i:Landroid/view/View;

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bu;->n:Landroid/view/View;

    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bu;->t:Landroid/view/View;

    if-eq p1, v4, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 142
    goto :goto_1

    :cond_4
    move v0, v2

    .line 143
    goto :goto_2

    :cond_5
    move v0, v2

    .line 144
    goto :goto_3

    :cond_6
    move v0, v2

    .line 145
    goto :goto_4

    :cond_7
    move v0, v2

    .line 146
    goto :goto_5

    :cond_8
    move v0, v2

    .line 147
    goto :goto_6
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 156
    if-eq p2, v1, :cond_1

    iget v0, p0, Lcom/viber/voip/contacts/ui/bu;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/viber/voip/contacts/ui/bu;->b:I

    if-ne v0, p2, :cond_2

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    iput p2, p0, Lcom/viber/voip/contacts/ui/bu;->b:I

    .line 158
    new-instance v0, Lcom/viber/voip/contacts/ui/bv;

    invoke-direct {v0, p0, p2, p1}, Lcom/viber/voip/contacts/ui/bv;-><init>(Lcom/viber/voip/contacts/ui/bu;ILandroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bu;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bu;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/view/View$OnClickListener;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-super {p0, p1}, Lcom/viber/voip/ui/e;->a(Landroid/view/View;)Z

    move-result v1

    .line 69
    if-nez v1, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 72
    :cond_0
    const v1, 0x7f0701df

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/contacts/ui/bu;->j:Landroid/view/View;

    .line 73
    const v1, 0x7f0701e2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/contacts/ui/bu;->i:Landroid/view/View;

    .line 74
    const v1, 0x7f0701e8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/contacts/ui/bu;->k:Landroid/view/View;

    .line 75
    const v1, 0x7f0701e5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/contacts/ui/bu;->l:Landroid/view/View;

    .line 76
    const v1, 0x7f0701ec

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/contacts/ui/bu;->m:Landroid/view/View;

    .line 77
    const v1, 0x7f0701f0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/contacts/ui/bu;->n:Landroid/view/View;

    .line 78
    const v1, 0x7f0701de

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/contacts/ui/bu;->t:Landroid/view/View;

    .line 80
    const v1, 0x7f0701eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v1, 0x7f0701ef

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v1, 0x7f0701e4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bu;->o:Lcom/viber/voip/ui/ViberTextView;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bu;->o:Lcom/viber/voip/ui/ViberTextView;

    invoke-virtual {v1, p2}, Lcom/viber/voip/ui/ViberTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_1
    const v1, 0x1020004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/contacts/ui/bu;->s:Landroid/view/View;

    .line 89
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/bu;->b(Z)V

    goto :goto_0
.end method
