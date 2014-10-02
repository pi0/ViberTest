.class public Lcom/viber/voip/ui/s;
.super Lcom/viber/voip/ui/e;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Lcom/viber/voip/calls/ui/s;

.field private final d:Z

.field private e:Lcom/viber/voip/util/b/w;

.field private f:Lcom/viber/voip/util/b/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/viber/voip/ui/e;-><init>()V

    .line 24
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/ui/s;->d:Z

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    const v1, 0x7f07039a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/ui/s;->b:Landroid/view/View;

    .line 46
    iget-object v1, p0, Lcom/viber/voip/ui/s;->b:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 48
    new-instance v1, Lcom/viber/voip/calls/ui/s;

    iget-object v2, p0, Lcom/viber/voip/ui/s;->b:Landroid/view/View;

    invoke-direct {v1, v2, p2}, Lcom/viber/voip/calls/ui/s;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/viber/voip/ui/s;->c:Lcom/viber/voip/calls/ui/s;

    .line 49
    iget-object v1, p0, Lcom/viber/voip/ui/s;->c:Lcom/viber/voip/calls/ui/s;

    iget-object v1, v1, Lcom/viber/voip/calls/ui/s;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-boolean v1, p0, Lcom/viber/voip/ui/s;->d:Z

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/viber/voip/ui/s;->c:Lcom/viber/voip/calls/ui/s;

    iget-object v1, v1, Lcom/viber/voip/calls/ui/s;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/ui/s;->c:Lcom/viber/voip/calls/ui/s;

    iget-object v1, v1, Lcom/viber/voip/calls/ui/s;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v1, p0, Lcom/viber/voip/ui/s;->c:Lcom/viber/voip/calls/ui/s;

    iget-object v1, v1, Lcom/viber/voip/calls/ui/s;->b:Landroid/widget/RelativeLayout;

    const v2, 0x7f0200cb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 61
    iget-object v1, p0, Lcom/viber/voip/ui/s;->c:Lcom/viber/voip/calls/ui/s;

    iget-object v1, v1, Lcom/viber/voip/calls/ui/s;->i:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/viber/voip/ui/s;->c:Lcom/viber/voip/calls/ui/s;

    iget-object v1, v1, Lcom/viber/voip/calls/ui/s;->g:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 65
    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/ui/s;->e:Lcom/viber/voip/util/b/w;

    .line 66
    new-instance v1, Lcom/viber/voip/util/b/z;

    invoke-direct {v1}, Lcom/viber/voip/util/b/z;-><init>()V

    const v2, 0x7f0202ca

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/aa;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/s;->f:Lcom/viber/voip/util/b/x;

    .line 71
    iget-object v0, p0, Lcom/viber/voip/ui/s;->e:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/ui/s;->c:Lcom/viber/voip/calls/ui/s;

    iget-object v2, v2, Lcom/viber/voip/calls/ui/s;->a:Lcom/viber/voip/widget/AvatarView;

    iget-object v3, p0, Lcom/viber/voip/ui/s;->f:Lcom/viber/voip/util/b/x;

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 72
    iget-object v0, p0, Lcom/viber/voip/ui/s;->c:Lcom/viber/voip/calls/ui/s;

    iget-object v0, v0, Lcom/viber/voip/calls/ui/s;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/ui/s;->c:Lcom/viber/voip/calls/ui/s;

    iget-object v1, v1, Lcom/viber/voip/calls/ui/s;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v1, p0, Lcom/viber/voip/ui/s;->c:Lcom/viber/voip/calls/ui/s;

    iget-object v1, v1, Lcom/viber/voip/calls/ui/s;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c0461

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/viber/voip/ui/s;->c:Lcom/viber/voip/calls/ui/s;

    iget-object v1, v1, Lcom/viber/voip/calls/ui/s;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object v1, p0, Lcom/viber/voip/ui/s;->c:Lcom/viber/voip/calls/ui/s;

    iget-object v1, v1, Lcom/viber/voip/calls/ui/s;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 57
    iget-object v1, p0, Lcom/viber/voip/ui/s;->c:Lcom/viber/voip/calls/ui/s;

    iget-object v1, v1, Lcom/viber/voip/calls/ui/s;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/viber/voip/ui/s;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 101
    :goto_1
    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/viber/voip/ui/s;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/viber/voip/ui/s;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/viber/voip/ui/s;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 100
    goto :goto_1

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/ui/s;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/viber/voip/ui/s;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/viber/voip/ui/s;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 87
    :cond_0
    if-eqz p1, :cond_1

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/s;->b(Z)V

    .line 89
    iget-object v0, p0, Lcom/viber/voip/ui/s;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/s;->b(Z)V

    .line 92
    invoke-virtual {p0, p2}, Lcom/viber/voip/ui/s;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnCreateContextMenuListener;Landroid/view/View$OnTouchListener;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/viber/voip/ui/e;->a(Landroid/view/View;)Z

    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    .line 34
    :cond_0
    const v0, 0x7f0700fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/ui/s;->a:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/viber/voip/ui/s;->a:Landroid/widget/TextView;

    const v1, 0x7f0c033a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 36
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/ui/s;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnCreateContextMenuListener;)V

    .line 39
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/ui/s;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p1}, Lcom/viber/voip/phone/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "-2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/ui/s;->c:Lcom/viber/voip/calls/ui/s;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/viber/voip/ui/s;->c:Lcom/viber/voip/calls/ui/s;

    iget-object v1, v1, Lcom/viber/voip/calls/ui/s;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/viber/voip/ui/e;->b(Z)V

    .line 78
    iget-object v0, p0, Lcom/viber/voip/ui/s;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/viber/voip/ui/s;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :cond_0
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
