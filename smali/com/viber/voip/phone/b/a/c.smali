.class public Lcom/viber/voip/phone/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private a:Lcom/viber/voip/phone/call/k;

.field private b:Lcom/viber/voip/phone/b/a/d;

.field private c:Lcom/viber/voip/phone/b/a/b;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/viber/voip/phone/call/k;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/viber/voip/phone/b/a/d;

    invoke-direct {v0, p1, p2}, Lcom/viber/voip/phone/b/a/d;-><init>(Landroid/widget/TextView;Lcom/viber/voip/phone/call/k;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/c;->b:Lcom/viber/voip/phone/b/a/d;

    .line 24
    new-instance v0, Lcom/viber/voip/phone/b/a/b;

    invoke-direct {v0, p1}, Lcom/viber/voip/phone/b/a/b;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/c;->c:Lcom/viber/voip/phone/b/a/b;

    .line 25
    iput-object p1, p0, Lcom/viber/voip/phone/b/a/c;->d:Landroid/widget/TextView;

    .line 26
    iput-object p2, p0, Lcom/viber/voip/phone/b/a/c;->a:Lcom/viber/voip/phone/call/k;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/phone/call/k;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/c;->a:Lcom/viber/voip/phone/call/k;

    if-eq p1, v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/c;->c:Lcom/viber/voip/phone/b/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 32
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/c;->b:Lcom/viber/voip/phone/b/a/d;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 34
    new-instance v0, Lcom/viber/voip/phone/b/a/d;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/c;->d:Landroid/widget/TextView;

    invoke-direct {v0, v1, p1}, Lcom/viber/voip/phone/b/a/d;-><init>(Landroid/widget/TextView;Lcom/viber/voip/phone/call/k;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/c;->b:Lcom/viber/voip/phone/b/a/d;

    .line 35
    new-instance v0, Lcom/viber/voip/phone/b/a/b;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/c;->d:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/viber/voip/phone/b/a/b;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/c;->c:Lcom/viber/voip/phone/b/a/b;

    .line 37
    iput-object p1, p0, Lcom/viber/voip/phone/b/a/c;->a:Lcom/viber/voip/phone/call/k;

    .line 39
    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0c0355

    const v0, 0x7f0c0351

    const/4 v2, 0x1

    .line 44
    check-cast p2, Lcom/viber/voip/phone/call/n;

    .line 46
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 47
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/c;->c:Lcom/viber/voip/phone/b/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/a/b;->a()V

    .line 53
    :goto_0
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/c;->d:Landroid/widget/TextView;

    const v1, 0x7f0c0412

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->u()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    .line 60
    :goto_2
    if-eqz v0, :cond_5

    .line 61
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/c;->b:Lcom/viber/voip/phone/b/a/d;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 114
    :goto_3
    return-void

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/c;->c:Lcom/viber/voip/phone/b/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/a/b;->b()V

    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/c;->d:Landroid/widget/TextView;

    const v1, 0x7f0c035c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 59
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 63
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/c;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/c;->b:Lcom/viber/voip/phone/b/a/d;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 66
    :cond_6
    iget-object v3, p0, Lcom/viber/voip/phone/b/a/c;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/viber/voip/phone/b/a/c;->b:Lcom/viber/voip/phone/b/a/d;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 68
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 112
    :cond_7
    :goto_4
    :pswitch_1
    iget-object v1, p0, Lcom/viber/voip/phone/b/a/c;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 73
    :pswitch_2
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 74
    const v0, 0x7f0c0352

    goto :goto_4

    .line 80
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/c;->a:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 81
    const v0, 0x7f0c035b

    goto :goto_4

    .line 83
    :cond_8
    const v0, 0x7f0c03b0

    .line 85
    goto :goto_4

    .line 87
    :pswitch_4
    const v0, 0x7f0c0353

    .line 88
    goto :goto_4

    :pswitch_5
    move v0, v1

    .line 91
    goto :goto_4

    .line 95
    :pswitch_6
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->p()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 96
    const v0, 0x7f0c035a

    goto :goto_4

    .line 97
    :cond_9
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 98
    const v0, 0x7f0c0359

    goto :goto_4

    .line 99
    :cond_a
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 100
    const v0, 0x7f0c0354

    goto :goto_4

    .line 101
    :cond_b
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 102
    const v0, 0x7f0c0357

    goto :goto_4

    .line 103
    :cond_c
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 104
    const v0, 0x7f0c0356

    goto :goto_4

    .line 106
    :cond_d
    const v0, 0x7f0c0358

    goto :goto_4

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
