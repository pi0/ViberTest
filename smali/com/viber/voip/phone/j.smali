.class Lcom/viber/voip/phone/j;
.super Lcom/viber/voip/e/q;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/i;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/i;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-direct {p0}, Lcom/viber/voip/e/q;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->e(Lcom/viber/voip/phone/i;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->h(Lcom/viber/voip/phone/i;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object v0, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->a(Lcom/viber/voip/phone/i;)Lcom/viber/voip/widget/PausableChronometer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/PausableChronometer;->setText(I)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/phone/i;->a(Lcom/viber/voip/phone/i;Z)Z

    .line 151
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/phone/i;->a(Lcom/viber/voip/phone/i;Z)Z

    .line 97
    iget-object v0, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->b(Lcom/viber/voip/phone/i;)V

    .line 99
    iget-object v0, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->c(Lcom/viber/voip/phone/i;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0370

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-static {v1}, Lcom/viber/voip/phone/i;->d(Lcom/viber/voip/phone/i;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->a(Lcom/viber/voip/phone/i;)Lcom/viber/voip/widget/PausableChronometer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/viber/voip/widget/PausableChronometer;->setText(I)V

    .line 102
    return-void

    :cond_0
    move-object p2, p1

    .line 100
    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 108
    const v0, 0x7f0c0358

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/j;->a(I)V

    .line 109
    return-void
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    const v0, 0x7f0c0356

    .line 117
    const/4 v1, 0x3

    if-ne v1, p2, :cond_1

    .line 118
    const v0, 0x7f0c0357

    .line 122
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/viber/voip/phone/j;->a(I)V

    .line 123
    return-void

    .line 119
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 120
    const v0, 0x7f0c0354

    goto :goto_0
.end method

.method public a(J)V
    .locals 3
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->a(Lcom/viber/voip/phone/i;)Lcom/viber/voip/widget/PausableChronometer;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/widget/PausableChronometer;->setBase(J)V

    .line 156
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    const v0, 0x7f0c03b0

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/phone/j;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->a(Lcom/viber/voip/phone/i;)Lcom/viber/voip/widget/PausableChronometer;

    move-result-object v0

    const v1, 0x7f0c0552

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PausableChronometer;->setText(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 129
    const v0, 0x7f0c0358

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/j;->a(I)V

    .line 131
    iget-object v0, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->e(Lcom/viber/voip/phone/i;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->e(Lcom/viber/voip/phone/i;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/k;

    invoke-direct {v1, p0}, Lcom/viber/voip/phone/k;-><init>(Lcom/viber/voip/phone/j;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    const v0, 0x7f0c03b1

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/phone/j;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->h(Lcom/viber/voip/phone/i;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->h(Lcom/viber/voip/phone/i;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_2

    const v0, 0x7f0203f3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    :cond_0
    if-eqz p1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/viber/voip/phone/j;->a:Lcom/viber/voip/phone/i;

    invoke-static {v0}, Lcom/viber/voip/phone/i;->a(Lcom/viber/voip/phone/i;)Lcom/viber/voip/widget/PausableChronometer;

    move-result-object v0

    const v1, 0x7f0c0412

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PausableChronometer;->setText(I)V

    .line 166
    :cond_1
    return-void

    .line 161
    :cond_2
    const v0, 0x7f020083

    goto :goto_0
.end method
