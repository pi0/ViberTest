.class public Lcom/viber/voip/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ui/x;


# instance fields
.field final synthetic a:Lcom/viber/voip/ui/ContactsListView;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/viber/voip/ui/ContactsListView;)V
    .locals 3
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/viber/voip/ui/d;->a:Lcom/viber/voip/ui/ContactsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/ui/d;->b:I

    .line 119
    invoke-virtual {p1}, Lcom/viber/voip/ui/ContactsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030111

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/d;->c:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/viber/voip/ui/d;->c:Landroid/view/View;

    const v1, 0x7f070391

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/ui/d;->d:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/viber/voip/ui/d;->c:Landroid/view/View;

    const v1, 0x7f070390

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/ui/d;->e:Landroid/widget/ProgressBar;

    .line 122
    const/high16 v0, 0x428c

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/d;->f:I

    .line 123
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/viber/voip/ui/d;->c:Landroid/view/View;

    return-object v0
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 130
    iget v0, p0, Lcom/viber/voip/ui/d;->b:I

    if-ne v0, p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iput p1, p0, Lcom/viber/voip/ui/d;->b:I

    .line 136
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 153
    :goto_1
    iget-object v2, p0, Lcom/viber/voip/ui/d;->e:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/viber/voip/ui/d;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 138
    :pswitch_0
    const v0, 0x7f0c051b

    .line 139
    goto :goto_1

    .line 141
    :pswitch_1
    const v0, 0x7f0c0518

    .line 142
    goto :goto_1

    .line 144
    :pswitch_2
    const v0, 0x7f0c0519

    .line 145
    goto :goto_1

    .line 147
    :pswitch_3
    const v0, 0x7f0c051a

    .line 148
    goto :goto_1

    .line 153
    :cond_2
    const/16 v1, 0x8

    goto :goto_2

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/viber/voip/ui/d;->f:I

    return v0
.end method
